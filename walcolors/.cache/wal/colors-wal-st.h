const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0f1722", /* black   */
  [1] = "#4B5466", /* red     */
  [2] = "#5A5761", /* green   */
  [3] = "#A0081A", /* yellow  */
  [4] = "#B43644", /* blue    */
  [5] = "#976868", /* magenta */
  [6] = "#A1769F", /* cyan    */
  [7] = "#c3c5c7", /* white   */

  /* 8 bright colors */
  [8]  = "#5e6773",  /* black   */
  [9]  = "#4B5466",  /* red     */
  [10] = "#5A5761", /* green   */
  [11] = "#A0081A", /* yellow  */
  [12] = "#B43644", /* blue    */
  [13] = "#976868", /* magenta */
  [14] = "#A1769F", /* cyan    */
  [15] = "#c3c5c7", /* white   */

  /* special colors */
  [256] = "#0f1722", /* background */
  [257] = "#c3c5c7", /* foreground */
  [258] = "#c3c5c7",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
