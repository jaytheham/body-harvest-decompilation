# Dispatcher switch diagnostics

`func_800DD604_EC5B4` in CFE30.c matches with a byte effect index and a signed word type. Its diagnostic strings each contain `%d`; passing the type as the second `osSyncPrintf` argument keeps it in a1, exactly as in the target. Omitting that argument changes register allocation and also loses the diagnostic value.

The dynamic renderer parameters are bytes: their assembly masks a0 with 0xff. Correct byte prototypes avoid promoted copies of the effect index. Use the switch itself for the unsigned table bounds check; an outer range check produces a redundant comparison. Preserve explicit unused cases that advance the loop, because they define the table extent and differ from the out-of-range diagnostic.

The level checks use numeric levels 2 and 4 (Java and Siberia). A compound if followed by else-if reproduces the reload and branch after the first condition function call.

When enabling this switch, the remaining ribbon renderer float must follow its generated tables. A late-rodata prefix on the still assembly-backed ribbon renderer preserves that order without editing target assembly.
