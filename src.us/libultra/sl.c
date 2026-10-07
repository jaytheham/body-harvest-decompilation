#include <ultra64.h>
#include "common.h"

ALGlobals *alGlobals = NULL;

void alUnlink(ALLink *element) {
    if (element->next) {
        element->next->prev = element->prev;
    }
    if (element->prev) {
        element->prev->next = element->next;
    }
}

void alLink(ALLink *element, ALLink *after) {
    element->next = after->next;
    element->prev = after;
    if (after->next) {
        after->next->prev = element;
    }
    after->next = element;
}

void alClose(ALGlobals *glob) {
    if (alGlobals) {
        alSynDelete(&glob->drvr);
        alGlobals = 0;
    }
}

void alInit(ALGlobals *glob, ALSynConfig *c) {
    if (alGlobals == 0) {
        alGlobals = glob;
        alSynNew(&glob->drvr, c);
    }
}
