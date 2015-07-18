library(gridExtra)
library(grid)
library(showtext)
## Loading Google fonts (http://www.google.com/fonts)
font.add.google("Gochi Hand", "gochi")
font.add.google("Schoolbell", "bell")
font.add.google("Covered By Your Grace", "grace")
font.add.google("Rock Salt", "rock")


library(showtext)
font.add.google("Lobster", "lobster")
d <- head(iris[,1:3])

library(showtext)
## Loading Google fonts (http://www.google.com/fonts)
font.add.google("Gochi Hand", "gochi")
font.add.google("Schoolbell", "bell")
font.add.google("Covered By Your Grace", "grace")
font.add.google("Rock Salt", "rock")

## Automatically use showtext to render text for future devices
showtext.auto()

## Tell showtext the resolution of the device,
## only needed for bitmap graphics. Default is 96
## showtext.opts(dpi = 96)


font.add("myriad", "MyriadPro-Regular.otf")
font.add("inconsolata", "inconsolata-dz.otf")
tt1 <- ttheme_default(core=list(
  fg_params=list(fontfamily="inconsolata")))
showtext.auto(enable = TRUE)
grid.newpage()
pdf("testfont.pdf")
showtext.begin()
grid.table(head(iris), theme=tt1)
showtext.end()
dev.off()

