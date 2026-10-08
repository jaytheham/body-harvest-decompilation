#include <ultra64.h>
#include "common.h"

ALGlobals *alGlobals = NULL;

// AI - Unlinks element from a doubly linked list by patching element->next->prev and element->prev->next.
void alUnlink(ALLink *element) {
    if (element->next) {
        element->next->prev = element->prev;
    }
    if (element->prev) {
        element->prev->next = element->next;
    }
}

// AI - Inserts element after 'after' in a doubly linked list, patching the neighbours' next/prev and after->next.
void alLink(ALLink *element, ALLink *after) {
    element->next = after->next;
    element->prev = after;
    if (after->next) {
        after->next->prev = element;
    }
    after->next = element;
}

// AI - Shuts the audio library down: if alGlobals is set, calls alSynDelete(&glob->drvr) and clears alGlobals.
void alClose(ALGlobals *glob) {
    if (alGlobals) {
        alSynDelete(&glob->drvr);
        alGlobals = 0;
    }
}

// AI - Initializes the audio library: when alGlobals is null, stores glob and calls alSynNew(&glob->drvr, c).
void alInit(ALGlobals *glob, ALSynConfig *c) {
    if (alGlobals == 0) {
        alGlobals = glob;
        alSynNew(&glob->drvr, c);
    }
}
