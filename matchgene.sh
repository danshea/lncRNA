#!/bin/bash

gene_major_isos="Bra011902 Bra011772 Bra011754 Bra011709 MSTRG.146 Bra011652 Bra011555 Bra013300 Bra013301 Bra013359 Bra013359 MSTRG.747 Bra013428 Bra013449 MSTRG.826 Bra013552 Bra013606 MSTRG.914 Bra013752 Bra013869 Bra013893 MSTRG.1125 Bra026425 MSTRG.1220 Bra033549 Bra029946 Bra029972 Bra038865 Bra031439 Bra028335 MSTRG.1845 Bra023888 Bra038205 Bra021148 Bra021147 Bra021594 Bra021504 Bra021503 Bra021502 MSTRG.2253 Bra034158 Bra034156 Bra021483 Bra040513 MSTRG.2579 Bra028893 Bra028599 Bra028598 MSTRG.2802 Bra020119 Bra020179 Bra020203 Bra020255 Bra020328 Bra020360 Bra020425 Bra020438 MSTRG.3331 Bra035638 Bra022612 Bra022548 Bra039752 MSTRG.3659 Bra033925 Bra038355 Bra038325 Bra007907 Bra008012 Bra008027 Bra008152 Bra008354 Bra008354 Bra008356 Bra008378 Bra008473 MSTRG.4118 MSTRG.4132 Bra026595 Bra032977 MSTRG.4636 MSTRG.4777 Bra029319 MSTRG.4794 Bra029250 Bra031867 Bra031820 Bra005811 Bra005890 Bra005909 Bra006077 Bra006125 Bra006261 Bra006275 Bra006357 Bra006598 Bra006828 Bra006862 MSTRG.5883 Bra029134 Bra029137 MSTRG.5995 Bra022819 Bra000225 Bra000544 Bra000613 Bra000676 Bra000916 Bra001034 Bra001390 Bra001461 MSTRG.7218 Bra001846 Bra001922 Bra013231 MSTRG.7606 Bra013050 Bra012942 Bra012939 Bra012922 Bra012899 Bra012833 Bra012699 Bra012596 Bra019382 Bra019359 Bra019356 Bra024126 Bra017782 MSTRG.8633 Bra017887 MSTRG.8828 Bra014637 Bra014675 Bra014748 Bra014800 Bra032738 Bra028214 Bra028235 MSTRG.9402 MSTRG.9475 Bra034291 Bra034311 Bra034314 Bra034386 Bra035677 Bra039993 Bra021605 Bra021884 Bra017236 Bra017177 Bra017064 Bra017036 Bra016937 Bra039261 Bra004446 MSTRG.10495 Bra004620 Bra004647 Bra004765 Bra004951 MSTRG.10869 Bra005030 Bra005059 MSTRG.10942 Bra005145 Bra005242 Bra005485 Bra039495 Bra037094 Bra034404 Bra010154 Bra031310 Bra031307 Bra035823 Bra022377 Bra022370 Bra022347 Bra027199 Bra027205 MSTRG.12204 Bra027240 Bra034768 Bra034822 Bra029882 Bra029852 Bra029847 Bra029813 Bra031954 Bra018891 Bra018694 Bra018683 Bra020011 Bra019960 Bra019961 Bra019655 Bra025924 Bra025668 Bra025681 Bra025683 Bra025810 Bra017925 Bra018088 Bra018127 Bra018149 Bra038267 Bra019437 Bra010040 Bra010062 Bra010122 MSTRG.14379 Bra038608 Bra024311 MSTRG.14522 Bra024351 Bra009657 MSTRG.14736 Bra009772 Bra009802 Bra009885 Bra009950 Bra010000 MSTRG.15106 Bra025168 Bra024914 Bra033746 Bra033714 Bra033594 Bra039004 Bra002061 Bra002034 MSTRG.15913 Bra015166 Bra015050 Bra030182 Bra012182 Bra012140 Bra012082 Bra012062 Bra011930 Bra028502 Bra028503 Bra028510 Bra028523 Bra003137 Bra003137 MSTRG.16835 Bra003462 Bra003503 Bra003511 Bra003748 Bra003864 Bra003969 Bra004009 Bra004030 Bra004396 Bra016267 MSTRG.17622 Bra016255 Bra016188 Bra016080 Bra016068 Bra016047 MSTRG.17884 Bra015882 Bra015812 MSTRG.18069 Bra035147 Bra014328 Bra013993 Bra013985 Bra013976 MSTRG.18579 MSTRG.18816 MSTRG.18986 Bra034612 Bra034572 Bra034558 Bra010381 Bra010473 Bra010475 Bra010502 Bra010881 Bra010948 Bra016382 Bra016414 Bra016428 Bra016439 Bra016593 Bra016644 Bra016795 Bra037319 Bra037412 Bra036320 MSTRG.20411 Bra034237 Bra039100 Bra036131 Bra026474 Bra037789 Bra037811 Bra037820 Bra037845 MSTRG.21260 Bra027827 Bra027546 Bra027607 Bra017549 MSTRG.21751 Bra035282 Bra035249 MSTRG.21909 Bra028084 Bra027991 Bra024660 Bra024637 Bra024611 Bra024596 Bra024561 MSTRG.22436 Bra031385 Bra031371 Bra041026 Bra006922 Bra007028 Bra007045 MSTRG.22769 Bra007303 Bra007321 Bra007350 Bra007481 Bra007504 MSTRG.23096 Bra007621 Bra007696 Bra007726 Bra007743 Bra007823 Bra031168 Bra026701 MSTRG.23623 Bra031799 Bra031691 Bra032416 MSTRG.24123 Bra015531 Bra033373 Bra002984 MSTRG.24728 MSTRG.24822 MSTRG.24831 MSTRG.24866 Bra002617 MSTRG.24905 Bra002564 Bra002557 Bra002503 Bra002423 Bra002416 Bra002409 Bra002289 Bra002268 Bra008627 Bra008696 MSTRG.25376 Bra009005 Bra009250 Bra009234 Bra009089 Bra009516 Bra035320 Bra036003 Bra038164 Bra039844 Bra040490 Bra040498 Bra040557 Bra040586 Bra040642 Bra040762 Bra041155"

for gene in $gene_major_isos; do
	egrep -e "	$gene	" ../gene_exp.diff | cut -f3
done