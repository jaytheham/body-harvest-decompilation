#!/usr/bin/env python3
"""
Simple script to help start decompilation work when full build environment is not available.
"""

import os
import sys
import subprocess
import argparse

def find_global_asm_files():
    """Find all files with GLOBAL_ASM pragmas"""
    global_asm_files = []
    for root, dirs, files in os.walk("src.us"):
        for file in files:
            if file.endswith(".c"):
                filepath = os.path.join(root, file)
                with open(filepath, 'r') as f:
                    content = f.read()
                    if "GLOBAL_ASM" in content:
                        global_asm_files.append(filepath)
    return global_asm_files

def count_remaining_functions():
    """Count remaining GLOBAL_ASM functions"""
    count = 0
    for root, dirs, files in os.walk("src.us"):
        for file in files:
            if file.endswith(".c"):
                filepath = os.path.join(root, file)
                with open(filepath, 'r') as f:
                    content = f.read()
                    count += content.count("GLOBAL_ASM")
    return count

def list_functions_in_file(filepath):
    """List all GLOBAL_ASM functions in a file"""
    functions = []
    with open(filepath, 'r') as f:
        lines = f.readlines()
        for i, line in enumerate(lines):
            if "GLOBAL_ASM" in line:
                # Extract function name from pragma
                # Looking for pattern: #pragma GLOBAL_ASM("asm/nonmatchings/path/func_name.s")
                if '"' in line:
                    func_path = line.split('"')[1]
                    func_name = os.path.basename(func_path).replace('.s', '')
                    functions.append({
                        'name': func_name,
                        'line': i + 1,
                        'file': filepath,
                        'asm_path': func_path
                    })
    return functions

def main():
    parser = argparse.ArgumentParser(description='Helper script for Body Harvest decompilation')
    parser.add_argument('--list-files', action='store_true', help='List files with GLOBAL_ASM pragmas')
    parser.add_argument('--count', action='store_true', help='Count remaining GLOBAL_ASM functions')
    parser.add_argument('--list-functions', nargs='?', const='all', help='List functions in a specific file or all files')
    parser.add_argument('--find-function', help='Find which file contains a specific function')
    
    args = parser.parse_args()
    
    if args.list_files:
        files = find_global_asm_files()
        print("Files with GLOBAL_ASM pragmas:")
        for file in files:
            print(f"  {file}")
        print(f"\nTotal files: {len(files)}")
        
    elif args.count:
        count = count_remaining_functions()
        print(f"Remaining GLOBAL_ASM functions: {count}")
        
    elif args.list_functions:
        if args.list_functions == 'all':
            files = find_global_asm_files()
            for file in files:
                print(f"\n{file}:")
                functions = list_functions_in_file(file)
                for func in functions:
                    print(f"  {func['name']} (line {func['line']})")
        else:
            if os.path.exists(args.list_functions):
                print(f"\nFunctions in {args.list_functions}:")
                functions = list_functions_in_file(args.list_functions)
                for func in functions:
                    print(f"  {func['name']} (line {func['line']})")
            else:
                print(f"File {args.list_functions} not found")
                
    elif args.find_function:
        files = find_global_asm_files()
        found = False
        for file in files:
            functions = list_functions_in_file(file)
            for func in functions:
                if args.find_function in func['name']:
                    print(f"Function {func['name']} found in {file} at line {func['line']}")
                    found = True
        if not found:
            print(f"Function {args.find_function} not found")
            
    else:
        # Default action - show stats
        files = len(find_global_asm_files())
        functions = count_remaining_functions()
        print("Body Harvest Decompilation Helper")
        print("=" * 35)
        print(f"Files with GLOBAL_ASM: {files}")
        print(f"Remaining functions: {functions}")
        print("\nUse --help for more options")

if __name__ == "__main__":
    main()