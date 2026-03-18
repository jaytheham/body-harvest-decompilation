# Decompilation Workflow

The authoritative decompilation workflow for this project is documented in:

**`.github/agents/decomp.agent.md`**

That file defines the full process: m2c translation, Step 1 cleanup requirements
(externs to headers, struct/array access, goto elimination), build/diff loop,
and finalization rules.

This file (WORKFLOW.md) was written before decomp.agent.md existed and is now
superseded. It is kept only as a redirect.
