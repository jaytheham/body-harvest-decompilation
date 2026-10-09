#define LIBULTRA_REFERENCE
#ifndef LIBULTRA_BINDINGS_H
#define LIBULTRA_BINDINGS_H

/* The game has unrelated objects bearing these standard library names.
 * Bind reference code to the actual libultra objects identified in the ROM. */
#define __osContPifRam __osContPifRam2
#define __osPfsPifRam __osPfsPifRam2
#define __osEepPifRam __osEepPifRam2
#define __osSiAccessQueue __osSiAccessQueue2
#define __osSiAccessQueueEnabled __osSiAccessQueueEnabled2

#endif
