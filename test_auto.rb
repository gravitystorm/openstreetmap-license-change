# encoding: utf-8

require './change_bot'
require './user'
require './changeset'
require './db'
require './actions'
require './util.rb'
require 'test/unit'

class TestNode < Test::Unit::TestCase

def setup
  @db = DB.new(:changesets => {
               3239 => Changeset[User[true]],
               3646 => Changeset[User[false]],
               5139 => Changeset[User[false]],
               5644 => Changeset[User[false]],
               5947 => Changeset[User[false]],
               6070 => Changeset[User[true]],
               6150 => Changeset[User[true]],
               6604 => Changeset[User[false]],
               7074 => Changeset[User[false]],
               7411 => Changeset[User[false]],
               7747 => Changeset[User[false]],
               8136 => Changeset[User[false]],
               8181 => Changeset[User[true]],
               8388 => Changeset[User[false]],
               8700 => Changeset[User[true]],
               8835 => Changeset[User[false]],
               8979 => Changeset[User[true]],
               9317 => Changeset[User[false]],
               9328 => Changeset[User[false]],
               9761 => Changeset[User[false]],
               9771 => Changeset[User[true]],
               10123 => Changeset[User[false]],
               10132 => Changeset[User[true]],
               10459 => Changeset[User[false]],
               10661 => Changeset[User[true]],
               10824 => Changeset[User[false]],
               11099 => Changeset[User[false]],
               11186 => Changeset[User[true]],
               11471 => Changeset[User[false]],
               11555 => Changeset[User[false]],
               11756 => Changeset[User[true]],
               11992 => Changeset[User[false]],
               12389 => Changeset[User[false]],
               12999 => Changeset[User[false]],
               13071 => Changeset[User[false]],
               13613 => Changeset[User[false]],
               14205 => Changeset[User[true]],
               14281 => Changeset[User[false]],
               14759 => Changeset[User[false]],
               14817 => Changeset[User[false]],
               15471 => Changeset[User[false]],
               15572 => Changeset[User[false]],
               16033 => Changeset[User[false]],
               16919 => Changeset[User[false]],
               17447 => Changeset[User[false]],
               17599 => Changeset[User[true]],
               17994 => Changeset[User[false]],
               18044 => Changeset[User[true]],
               18377 => Changeset[User[false]],
               18962 => Changeset[User[false]],
               19490 => Changeset[User[false]],
               20090 => Changeset[User[false]],
               20653 => Changeset[User[false]],
               21038 => Changeset[User[false]],
               21141 => Changeset[User[false]],
               21439 => Changeset[User[true]],
               21692 => Changeset[User[true]],
               21942 => Changeset[User[false]],
               22576 => Changeset[User[false]],
               22625 => Changeset[User[false]],
               23299 => Changeset[User[false]],
               23702 => Changeset[User[false]],
               24064 => Changeset[User[false]],
               24235 => Changeset[User[false]],
               24600 => Changeset[User[true]],
               25023 => Changeset[User[false]],
               25095 => Changeset[User[false]],
               25286 => Changeset[User[false]],
               25691 => Changeset[User[false]],
               26018 => Changeset[User[true]],
               26385 => Changeset[User[false]],
               27039 => Changeset[User[false]],
               27147 => Changeset[User[false]],
               27518 => Changeset[User[true]],
               27545 => Changeset[User[false]],
               27964 => Changeset[User[false]],
               28090 => Changeset[User[false]],
               28389 => Changeset[User[false]],
               28493 => Changeset[User[false]],
               28571 => Changeset[User[false]],
               28643 => Changeset[User[true]],
               28865 => Changeset[User[true]],
               28950 => Changeset[User[false]],
               29337 => Changeset[User[true]],
               29383 => Changeset[User[false]],
               29986 => Changeset[User[false]],
               30529 => Changeset[User[false]],
               30964 => Changeset[User[false]],
               31398 => Changeset[User[false]],
               31736 => Changeset[User[true]],
               31827 => Changeset[User[false]],
               32431 => Changeset[User[false]],
               32434 => Changeset[User[false]],
               32803 => Changeset[User[true]],
               32905 => Changeset[User[false]],
               33571 => Changeset[User[false]],
               34163 => Changeset[User[false]],
               34643 => Changeset[User[false]],
               34804 => Changeset[User[false]],
               35422 => Changeset[User[false]],
               35700 => Changeset[User[false]],
               35782 => Changeset[User[false]],
               36326 => Changeset[User[false]],
               36856 => Changeset[User[false]],
               37337 => Changeset[User[false]],
               37374 => Changeset[User[true]],
               37499 => Changeset[User[true]],
               37883 => Changeset[User[false]],
               38360 => Changeset[User[false]],
               38967 => Changeset[User[false]],
               39002 => Changeset[User[false]],
               39725 => Changeset[User[false]],
               40569 => Changeset[User[false]],
               40670 => Changeset[User[false]],
               40805 => Changeset[User[false]],
               40869 => Changeset[User[false]],
               41626 => Changeset[User[false]],
               41839 => Changeset[User[false]],
               42026 => Changeset[User[false]],
               42610 => Changeset[User[true]],
               43000 => Changeset[User[false]],
               43666 => Changeset[User[false]],
               43877 => Changeset[User[false]],
               44063 => Changeset[User[true]],
               44694 => Changeset[User[false]],
               44938 => Changeset[User[true]],
               45516 => Changeset[User[false]],
               45584 => Changeset[User[true]],
               45588 => Changeset[User[true]],
               46323 => Changeset[User[true]],
               46489 => Changeset[User[false]],
               47391 => Changeset[User[false]],
               47991 => Changeset[User[false]],
               49021 => Changeset[User[false]],
               49359 => Changeset[User[true]],
               49717 => Changeset[User[false]],
               50361 => Changeset[User[false]],
               51264 => Changeset[User[false]],
               53431 => Changeset[User[false]],
               53911 => Changeset[User[true]],
               54024 => Changeset[User[false]],
               54348 => Changeset[User[false]],
               54964 => Changeset[User[true]],
               55153 => Changeset[User[false]],
               56024 => Changeset[User[false]],
               56537 => Changeset[User[false]],
               57201 => Changeset[User[false]],
               57933 => Changeset[User[false]],
               58078 => Changeset[User[false]],
               58199 => Changeset[User[true]],
               58690 => Changeset[User[true]],
               58858 => Changeset[User[false]],
               59370 => Changeset[User[false]],
               59510 => Changeset[User[true]],
               59951 => Changeset[User[false]],
               61014 => Changeset[User[false]],
               62074 => Changeset[User[false]],
               62468 => Changeset[User[true]],
               63246 => Changeset[User[false]],
               63366 => Changeset[User[false]],
               63691 => Changeset[User[true]],
               64244 => Changeset[User[true]],
               64460 => Changeset[User[false]],
               64942 => Changeset[User[false]],
               64948 => Changeset[User[false]],
               65377 => Changeset[User[false]],
               65672 => Changeset[User[true]],
               65850 => Changeset[User[false]],
               66361 => Changeset[User[false]],
               66543 => Changeset[User[false]],
               66897 => Changeset[User[false]],
               67064 => Changeset[User[false]],
               67488 => Changeset[User[true]],
               68075 => Changeset[User[true]],
               68545 => Changeset[User[false]],
               68864 => Changeset[User[true]],
               69066 => Changeset[User[true]],
               69904 => Changeset[User[false]],
               70416 => Changeset[User[true]],
               70678 => Changeset[User[false]],
               71517 => Changeset[User[false]],
               72213 => Changeset[User[false]],
               72957 => Changeset[User[true]],
               73078 => Changeset[User[false]],
               73171 => Changeset[User[true]],
               73747 => Changeset[User[true]],
               74050 => Changeset[User[false]],
               74605 => Changeset[User[true]],
               74823 => Changeset[User[false]],
               75529 => Changeset[User[false]],
               76114 => Changeset[User[true]],
               77107 => Changeset[User[false]],
               78158 => Changeset[User[false]],
               78226 => Changeset[User[false]],
               78973 => Changeset[User[false]],
               79103 => Changeset[User[false]],
               79274 => Changeset[User[true]],
               80042 => Changeset[User[false]],
               80126 => Changeset[User[true]],
               80550 => Changeset[User[true]],
               80554 => Changeset[User[false]],
               80649 => Changeset[User[true]],
               81337 => Changeset[User[false]],
               82079 => Changeset[User[false]],
               82919 => Changeset[User[true]],
               83091 => Changeset[User[false]],
               83170 => Changeset[User[true]],
               83214 => Changeset[User[true]],
               84143 => Changeset[User[true]],
               84278 => Changeset[User[false]],
               84802 => Changeset[User[true]],
               85675 => Changeset[User[true]],
               87275 => Changeset[User[true]],
               87483 => Changeset[User[true]],
               87930 => Changeset[User[false]],
               91138 => Changeset[User[false]],
               91947 => Changeset[User[false]],
               92730 => Changeset[User[true]],
               93133 => Changeset[User[false]],
               93381 => Changeset[User[false]],
               93501 => Changeset[User[true]],
               93742 => Changeset[User[true]],
               93750 => Changeset[User[false]],
               94666 => Changeset[User[false]],
               95271 => Changeset[User[false]],
               96609 => Changeset[User[true]],
               97142 => Changeset[User[false]],
               97190 => Changeset[User[true]],
               97475 => Changeset[User[false]],
               97823 => Changeset[User[true]],
               98450 => Changeset[User[true]],
               98620 => Changeset[User[false]],
               99622 => Changeset[User[false]],
               99840 => Changeset[User[false]],
               100113 => Changeset[User[false]],
               100433 => Changeset[User[true]],
               100819 => Changeset[User[true]],
               100949 => Changeset[User[false]],
               101642 => Changeset[User[false]],
               101852 => Changeset[User[false]],
               102434 => Changeset[User[false]],
               103085 => Changeset[User[true]],
               104171 => Changeset[User[false]],
               104288 => Changeset[User[false]],
               104922 => Changeset[User[true]],
               105390 => Changeset[User[false]],
               106190 => Changeset[User[false]],
               106852 => Changeset[User[true]],
               107361 => Changeset[User[false]],
               108077 => Changeset[User[false]],
               108241 => Changeset[User[false]],
               108299 => Changeset[User[true]],
               108344 => Changeset[User[true]],
               109076 => Changeset[User[true]],
               109821 => Changeset[User[false]],
               110062 => Changeset[User[true]],
               110221 => Changeset[User[true]],
               110855 => Changeset[User[true]],
               110911 => Changeset[User[false]],
               111047 => Changeset[User[true]],
               111503 => Changeset[User[true]],
               112601 => Changeset[User[true]],
               112607 => Changeset[User[true]],
               112633 => Changeset[User[false]],
               113072 => Changeset[User[true]],
               113550 => Changeset[User[true]],
               113740 => Changeset[User[false]],
               114052 => Changeset[User[false]],
               114224 => Changeset[User[false]],
               114562 => Changeset[User[false]],
               115368 => Changeset[User[false]],
               115607 => Changeset[User[false]],
               116063 => Changeset[User[true]],
               116410 => Changeset[User[true]],
               117020 => Changeset[User[false]],
               117088 => Changeset[User[true]],
               117862 => Changeset[User[false]],
               118317 => Changeset[User[false]],
               119297 => Changeset[User[false]],
               120166 => Changeset[User[false]],
               120540 => Changeset[User[false]],
               121444 => Changeset[User[false]],
               121800 => Changeset[User[false]],
               122084 => Changeset[User[true]],
               122708 => Changeset[User[false]],
               122807 => Changeset[User[false]],
               123410 => Changeset[User[true]],
               123424 => Changeset[User[false]],
               123920 => Changeset[User[false]],
               124529 => Changeset[User[true]],
               125398 => Changeset[User[false]],
               125718 => Changeset[User[false]],
               125997 => Changeset[User[true]],
               126432 => Changeset[User[false]],
               127101 => Changeset[User[false]],
               127645 => Changeset[User[false]],
               127780 => Changeset[User[true]],
               128037 => Changeset[User[true]],
               128530 => Changeset[User[true]],
               128662 => Changeset[User[true]],
               129641 => Changeset[User[true]],
               129770 => Changeset[User[false]],
               131108 => Changeset[User[false]],
               131813 => Changeset[User[false]],
               133004 => Changeset[User[false]],
               133943 => Changeset[User[false]],
               134247 => Changeset[User[true]],
               134776 => Changeset[User[true]],
               134803 => Changeset[User[false]],
               135225 => Changeset[User[false]],
               136675 => Changeset[User[false]],
               136926 => Changeset[User[false]],
               137214 => Changeset[User[false]],
               137557 => Changeset[User[false]],
               138125 => Changeset[User[true]],
               138469 => Changeset[User[false]],
               138856 => Changeset[User[true]],
               138883 => Changeset[User[false]],
               139620 => Changeset[User[false]],
               139881 => Changeset[User[false]],
               140598 => Changeset[User[false]],
               140698 => Changeset[User[true]],
               141246 => Changeset[User[true]],
               141648 => Changeset[User[false]],
               141918 => Changeset[User[false]],
               142224 => Changeset[User[false]],
               142571 => Changeset[User[false]],
               143336 => Changeset[User[false]],
               143398 => Changeset[User[true]],
               144098 => Changeset[User[true]],
               144985 => Changeset[User[false]],
               144986 => Changeset[User[false]],
               145313 => Changeset[User[false]],
               145993 => Changeset[User[false]],
               146243 => Changeset[User[false]],
               146420 => Changeset[User[false]],
               146935 => Changeset[User[false]],
               147843 => Changeset[User[false]],
               147848 => Changeset[User[true]],
               148093 => Changeset[User[false]],
               148607 => Changeset[User[false]],
               148731 => Changeset[User[false]],
               149511 => Changeset[User[false]],
               152713 => Changeset[User[false]],
               154088 => Changeset[User[true]],
               155849 => Changeset[User[false]],
               156055 => Changeset[User[true]],
               156207 => Changeset[User[false]],
               157268 => Changeset[User[false]],
               158333 => Changeset[User[false]],
               159012 => Changeset[User[true]],
               159834 => Changeset[User[false]],
               160987 => Changeset[User[false]],
               161240 => Changeset[User[true]],
               162091 => Changeset[User[true]],
               162686 => Changeset[User[true]],
               162821 => Changeset[User[true]],
               164295 => Changeset[User[false]],
               164699 => Changeset[User[true]],
               164902 => Changeset[User[false]],
               166434 => Changeset[User[true]],
               166558 => Changeset[User[false]],
               166927 => Changeset[User[true]],
               168288 => Changeset[User[true]],
               170081 => Changeset[User[true]],
               170738 => Changeset[User[true]],
               172220 => Changeset[User[true]],
               172714 => Changeset[User[false]],
               173772 => Changeset[User[false]],
               173839 => Changeset[User[true]],
               175613 => Changeset[User[false]],
               176944 => Changeset[User[false]],
               177128 => Changeset[User[true]],
               177403 => Changeset[User[true]],
               177710 => Changeset[User[true]],
               178870 => Changeset[User[true]],
               180400 => Changeset[User[true]],
               180424 => Changeset[User[false]],
               182390 => Changeset[User[false]],
               182602 => Changeset[User[false]],
               182642 => Changeset[User[true]],
               185961 => Changeset[User[true]],
               186518 => Changeset[User[true]],
               186997 => Changeset[User[true]],
               187649 => Changeset[User[true]],
               188527 => Changeset[User[true]],
               188678 => Changeset[User[false]],
               188992 => Changeset[User[true]],
               192752 => Changeset[User[true]],
               193121 => Changeset[User[true]],
               193306 => Changeset[User[true]],
               193354 => Changeset[User[true]],
               194255 => Changeset[User[true]],
               195916 => Changeset[User[true]],
               197443 => Changeset[User[true]],
               197751 => Changeset[User[true]],
               198243 => Changeset[User[false]],
               198306 => Changeset[User[false]],
               198729 => Changeset[User[true]],
               202915 => Changeset[User[true]],
               203308 => Changeset[User[true]],
               204763 => Changeset[User[false]],
               206854 => Changeset[User[true]],
               207111 => Changeset[User[false]],
               208299 => Changeset[User[false]],
               209269 => Changeset[User[true]],
               209282 => Changeset[User[true]],
               210834 => Changeset[User[true]],
               211042 => Changeset[User[true]],
               212990 => Changeset[User[false]],
               216334 => Changeset[User[false]],
               216355 => Changeset[User[true]],
               217587 => Changeset[User[true]],
               217838 => Changeset[User[true]],
               219395 => Changeset[User[true]],
               225522 => Changeset[User[false]],
               226131 => Changeset[User[false]],
               228572 => Changeset[User[true]],
               228815 => Changeset[User[true]],
               228869 => Changeset[User[true]],
               229386 => Changeset[User[false]],
               229390 => Changeset[User[true]],
               230860 => Changeset[User[false]],
               230985 => Changeset[User[true]],
               233263 => Changeset[User[true]],
               234277 => Changeset[User[true]],
               234775 => Changeset[User[true]],
               235441 => Changeset[User[true]],
               235483 => Changeset[User[false]],
               237281 => Changeset[User[false]],
               239033 => Changeset[User[true]],
               239989 => Changeset[User[true]],
               240226 => Changeset[User[true]],
               240356 => Changeset[User[false]],
               240866 => Changeset[User[true]],
               243518 => Changeset[User[true]],
               247629 => Changeset[User[false]],
               248202 => Changeset[User[false]],
               251364 => Changeset[User[true]],
               251736 => Changeset[User[false]],
               252051 => Changeset[User[true]],
               252822 => Changeset[User[false]],
               253996 => Changeset[User[false]],
               254506 => Changeset[User[true]],
               255327 => Changeset[User[true]],
               256421 => Changeset[User[false]],
               256644 => Changeset[User[true]],
               257351 => Changeset[User[true]],
               257352 => Changeset[User[true]],
               258812 => Changeset[User[true]],
               259254 => Changeset[User[true]],
               259657 => Changeset[User[true]],
               260094 => Changeset[User[true]],
               260964 => Changeset[User[false]],
               261181 => Changeset[User[true]],
               261208 => Changeset[User[true]],
               263784 => Changeset[User[false]],
               263937 => Changeset[User[true]],
               266846 => Changeset[User[true]],
               266929 => Changeset[User[true]],
               267062 => Changeset[User[false]],
               268373 => Changeset[User[true]],
               269244 => Changeset[User[true]],
               269338 => Changeset[User[true]],
               269578 => Changeset[User[true]],
               270023 => Changeset[User[true]],
               270168 => Changeset[User[true]],
               270542 => Changeset[User[false]],
               271307 => Changeset[User[true]],
               272138 => Changeset[User[false]],
               272586 => Changeset[User[true]],
               273681 => Changeset[User[true]],
               275196 => Changeset[User[true]],
               277810 => Changeset[User[false]],
               279330 => Changeset[User[false]],
               279532 => Changeset[User[true]],
               279959 => Changeset[User[true]],
               280091 => Changeset[User[true]],
               280259 => Changeset[User[true]],
               282283 => Changeset[User[true]],
               282291 => Changeset[User[false]],
               283847 => Changeset[User[false]],
               284245 => Changeset[User[false]],
               284515 => Changeset[User[true]],
               286004 => Changeset[User[false]],
               286316 => Changeset[User[false]],
               286360 => Changeset[User[true]],
               287654 => Changeset[User[false]],
               287707 => Changeset[User[false]],
               288067 => Changeset[User[true]],
               290414 => Changeset[User[true]],
               290778 => Changeset[User[true]],
               291123 => Changeset[User[true]],
               291129 => Changeset[User[true]],
               292607 => Changeset[User[false]],
               293594 => Changeset[User[true]],
               293776 => Changeset[User[true]],
               294893 => Changeset[User[false]],
               296806 => Changeset[User[true]],
               300234 => Changeset[User[true]],
               300664 => Changeset[User[true]],
               302348 => Changeset[User[true]],
               302409 => Changeset[User[false]],
               302574 => Changeset[User[true]],
               302613 => Changeset[User[true]],
               304779 => Changeset[User[false]],
               305231 => Changeset[User[true]],
               306014 => Changeset[User[true]],
               306023 => Changeset[User[true]],
               306242 => Changeset[User[false]],
               306607 => Changeset[User[true]],
               308728 => Changeset[User[true]],
               309003 => Changeset[User[true]],
               309227 => Changeset[User[true]],
               310277 => Changeset[User[true]],
               310891 => Changeset[User[true]],
               311922 => Changeset[User[true]],
               312112 => Changeset[User[false]],
               314715 => Changeset[User[true]],
               314804 => Changeset[User[false]],
               315280 => Changeset[User[false]],
               315680 => Changeset[User[true]],
               316352 => Changeset[User[true]],
               316756 => Changeset[User[true]],
               317089 => Changeset[User[false]],
               317108 => Changeset[User[true]],
               317127 => Changeset[User[true]],
               317838 => Changeset[User[true]],
               318351 => Changeset[User[true]],
               318878 => Changeset[User[false]],
               319858 => Changeset[User[true]],
               321833 => Changeset[User[true]],
               321847 => Changeset[User[true]],
               322363 => Changeset[User[true]],
               322735 => Changeset[User[true]],
               322879 => Changeset[User[true]],
               323103 => Changeset[User[true]],
               324442 => Changeset[User[true]],
               325267 => Changeset[User[true]],
               325592 => Changeset[User[true]],
               325829 => Changeset[User[false]],
               329378 => Changeset[User[true]],
               330862 => Changeset[User[true]],
               333007 => Changeset[User[true]],
               333048 => Changeset[User[true]],
               333439 => Changeset[User[true]],
               333740 => Changeset[User[true]],
               334222 => Changeset[User[true]],
               334379 => Changeset[User[true]],
               334427 => Changeset[User[true]],
               335115 => Changeset[User[true]],
               335419 => Changeset[User[true]],
               336184 => Changeset[User[false]],
               336434 => Changeset[User[true]],
               336607 => Changeset[User[true]],
               336717 => Changeset[User[false]],
               336928 => Changeset[User[true]],
               337210 => Changeset[User[true]],
               337371 => Changeset[User[true]],
               337672 => Changeset[User[true]],
               338099 => Changeset[User[true]],
               339292 => Changeset[User[true]],
               339535 => Changeset[User[true]],
               339816 => Changeset[User[true]],
               339896 => Changeset[User[true]],
               340188 => Changeset[User[true]],
               340344 => Changeset[User[true]],
               340395 => Changeset[User[true]],
               341217 => Changeset[User[false]],
               341773 => Changeset[User[true]],
               342243 => Changeset[User[true]],
               342541 => Changeset[User[true]],
               342855 => Changeset[User[true]],
               343390 => Changeset[User[true]],
               343478 => Changeset[User[false]],
               343989 => Changeset[User[true]],
               344038 => Changeset[User[false]],
               344512 => Changeset[User[true]],
               344956 => Changeset[User[true]],
               345220 => Changeset[User[true]],
               345568 => Changeset[User[true]],
               345684 => Changeset[User[true]],
               345847 => Changeset[User[true]],
               345972 => Changeset[User[true]],
               346312 => Changeset[User[true]],
               346726 => Changeset[User[true]],
               347890 => Changeset[User[true]],
               348173 => Changeset[User[true]],
               348688 => Changeset[User[true]],
               348913 => Changeset[User[true]],
               349080 => Changeset[User[true]],
               349564 => Changeset[User[true]],
               350103 => Changeset[User[false]],
               350974 => Changeset[User[true]],
               352258 => Changeset[User[true]],
               355591 => Changeset[User[true]],
               356238 => Changeset[User[true]],
               358953 => Changeset[User[true]],
               360494 => Changeset[User[false]],
               360899 => Changeset[User[false]],
               361370 => Changeset[User[true]],
               362678 => Changeset[User[true]],
               363340 => Changeset[User[true]],
               364425 => Changeset[User[true]],
               364461 => Changeset[User[true]],
               365617 => Changeset[User[false]],
               366990 => Changeset[User[true]],
               368434 => Changeset[User[false]],
               368834 => Changeset[User[true]],
               369439 => Changeset[User[false]],
               369525 => Changeset[User[false]],
               369673 => Changeset[User[false]],
               370149 => Changeset[User[true]],
               371977 => Changeset[User[true]],
               373447 => Changeset[User[true]],
               374533 => Changeset[User[true]],
               374539 => Changeset[User[true]],
               374644 => Changeset[User[true]],
               374846 => Changeset[User[false]],
               375159 => Changeset[User[true]],
               375863 => Changeset[User[true]],
               375997 => Changeset[User[true]],
               376787 => Changeset[User[false]],
               378262 => Changeset[User[false]],
               378510 => Changeset[User[true]],
               379018 => Changeset[User[false]],
               380014 => Changeset[User[false]],
               381275 => Changeset[User[false]],
               381698 => Changeset[User[true]],
               382513 => Changeset[User[true]],
               382873 => Changeset[User[true]],
               383842 => Changeset[User[true]],
               384275 => Changeset[User[true]],
               384672 => Changeset[User[false]],
               384832 => Changeset[User[true]],
               386979 => Changeset[User[true]],
               387131 => Changeset[User[true]],
               387359 => Changeset[User[false]],
               387603 => Changeset[User[false]],
               389314 => Changeset[User[false]],
               389415 => Changeset[User[false]],
               389582 => Changeset[User[false]],
               389825 => Changeset[User[true]],
               390737 => Changeset[User[true]],
               392192 => Changeset[User[true]],
               393587 => Changeset[User[true]],
               394144 => Changeset[User[false]],
               395760 => Changeset[User[true]],
               395866 => Changeset[User[true]],
               396231 => Changeset[User[true]],
               396324 => Changeset[User[false]],
               396695 => Changeset[User[false]],
               397093 => Changeset[User[false]],
               397128 => Changeset[User[true]],
               397938 => Changeset[User[true]],
               397944 => Changeset[User[false]],
               398437 => Changeset[User[false]],
               398455 => Changeset[User[true]],
               398734 => Changeset[User[false]],
               399911 => Changeset[User[true]],
               400726 => Changeset[User[false]],
               400893 => Changeset[User[false]],
               401019 => Changeset[User[false]],
               401256 => Changeset[User[false]],
               403309 => Changeset[User[true]],
               404317 => Changeset[User[false]],
               404904 => Changeset[User[true]],
               405683 => Changeset[User[true]],
               406276 => Changeset[User[true]],
               408796 => Changeset[User[true]],
               409178 => Changeset[User[true]],
               410258 => Changeset[User[true]],
               410904 => Changeset[User[true]],
               412680 => Changeset[User[true]],
               414704 => Changeset[User[true]],
               416261 => Changeset[User[true]],
               416721 => Changeset[User[false]],
               417384 => Changeset[User[true]],
               417939 => Changeset[User[false]],
               418274 => Changeset[User[true]],
               418689 => Changeset[User[false]],
               420231 => Changeset[User[true]],
               420331 => Changeset[User[true]],
               420384 => Changeset[User[true]],
               420878 => Changeset[User[true]],
               421950 => Changeset[User[false]],
               423223 => Changeset[User[true]],
               423631 => Changeset[User[false]],
               423851 => Changeset[User[false]],
               424753 => Changeset[User[true]],
               425835 => Changeset[User[true]],
               425938 => Changeset[User[true]],
               427670 => Changeset[User[true]],
               427761 => Changeset[User[false]],
               429662 => Changeset[User[false]],
               429663 => Changeset[User[false]],
               430337 => Changeset[User[false]],
               430927 => Changeset[User[true]],
               431286 => Changeset[User[false]],
               433075 => Changeset[User[true]],
               435250 => Changeset[User[false]],
               440414 => Changeset[User[true]],
               443654 => Changeset[User[false]],
               444763 => Changeset[User[true]],
               445579 => Changeset[User[true]],
               446530 => Changeset[User[true]],
               446593 => Changeset[User[true]],
               446628 => Changeset[User[true]],
               447548 => Changeset[User[true]],
               448083 => Changeset[User[true]],
               448153 => Changeset[User[true]],
               448736 => Changeset[User[true]],
               448744 => Changeset[User[false]],
               449369 => Changeset[User[false]],
               449579 => Changeset[User[true]],
               452568 => Changeset[User[true]],
               453741 => Changeset[User[true]],
               454581 => Changeset[User[true]],
               456312 => Changeset[User[false]],
               456766 => Changeset[User[true]],
               457552 => Changeset[User[false]],
               459201 => Changeset[User[true]],
               459439 => Changeset[User[false]],
               460346 => Changeset[User[false]],
               462189 => Changeset[User[true]],
               462899 => Changeset[User[false]],
               463027 => Changeset[User[true]],
               463747 => Changeset[User[true]],
               464511 => Changeset[User[true]],
               465079 => Changeset[User[true]],
               465146 => Changeset[User[true]],
               465158 => Changeset[User[true]],
               465936 => Changeset[User[true]],
               466796 => Changeset[User[true]],
               467315 => Changeset[User[true]],
               468384 => Changeset[User[true]],
               468645 => Changeset[User[true]],
               468759 => Changeset[User[false]],
               469450 => Changeset[User[true]],
               469823 => Changeset[User[false]],
               469833 => Changeset[User[false]],
               470362 => Changeset[User[false]],
               470438 => Changeset[User[true]],
               472131 => Changeset[User[false]],
               472220 => Changeset[User[true]],
               473556 => Changeset[User[true]],
               474386 => Changeset[User[true]],
               474588 => Changeset[User[false]],
               474950 => Changeset[User[true]],
               476066 => Changeset[User[true]],
               477521 => Changeset[User[true]],
               478677 => Changeset[User[true]],
               479213 => Changeset[User[false]],
               479449 => Changeset[User[true]],
               479752 => Changeset[User[true]],
               480514 => Changeset[User[true]],
               480724 => Changeset[User[true]],
               481899 => Changeset[User[false]],
               482084 => Changeset[User[true]],
               482708 => Changeset[User[true]],
               482864 => Changeset[User[false]],
               484470 => Changeset[User[true]],
               485793 => Changeset[User[true]],
               486019 => Changeset[User[false]],
               488810 => Changeset[User[false]],
               488985 => Changeset[User[true]],
               489842 => Changeset[User[false]],
               490526 => Changeset[User[true]],
               491689 => Changeset[User[true]],
               495805 => Changeset[User[false]],
               496426 => Changeset[User[true]],
               498771 => Changeset[User[true]],
               499291 => Changeset[User[true]],
               500314 => Changeset[User[true]],
               500400 => Changeset[User[false]],
               502128 => Changeset[User[true]],
               502183 => Changeset[User[false]],
               503285 => Changeset[User[true]],
               503640 => Changeset[User[true]],
               504130 => Changeset[User[false]],
               506967 => Changeset[User[true]],
               507015 => Changeset[User[true]],
               507460 => Changeset[User[true]],
               507923 => Changeset[User[false]],
               507933 => Changeset[User[true]],
               508299 => Changeset[User[true]],
               508375 => Changeset[User[false]],
               508606 => Changeset[User[true]],
               508644 => Changeset[User[true]],
               514004 => Changeset[User[true]],
               514722 => Changeset[User[true]],
               515077 => Changeset[User[false]],
               515179 => Changeset[User[true]],
               515652 => Changeset[User[true]],
               515754 => Changeset[User[true]],
               515989 => Changeset[User[true]],
               516117 => Changeset[User[false]],
               518204 => Changeset[User[true]],
               519412 => Changeset[User[false]],
               523361 => Changeset[User[true]],
               524536 => Changeset[User[true]],
               525352 => Changeset[User[true]],
               525824 => Changeset[User[true]],
               527461 => Changeset[User[true]],
               527693 => Changeset[User[true]],
               528104 => Changeset[User[true]],
               528665 => Changeset[User[true]],
               531921 => Changeset[User[false]],
               531997 => Changeset[User[true]],
               532364 => Changeset[User[true]],
               533389 => Changeset[User[true]],
               534229 => Changeset[User[true]],
               535008 => Changeset[User[false]],
               535210 => Changeset[User[false]],
               536031 => Changeset[User[false]],
               536228 => Changeset[User[true]],
               536481 => Changeset[User[true]],
               536651 => Changeset[User[true]],
               537585 => Changeset[User[true]],
               538135 => Changeset[User[true]],
               538810 => Changeset[User[true]],
               539029 => Changeset[User[true]],
               539571 => Changeset[User[true]],
               539695 => Changeset[User[false]],
               540368 => Changeset[User[true]],
               540445 => Changeset[User[false]],
               541292 => Changeset[User[true]],
               541703 => Changeset[User[true]],
               541928 => Changeset[User[false]],
               541999 => Changeset[User[true]],
               544227 => Changeset[User[true]],
               544954 => Changeset[User[true]],
               546118 => Changeset[User[true]],
               546271 => Changeset[User[true]],
               549022 => Changeset[User[true]],
               549147 => Changeset[User[true]],
               549278 => Changeset[User[false]],
               549320 => Changeset[User[true]],
               549645 => Changeset[User[true]],
               550051 => Changeset[User[true]],
               550248 => Changeset[User[true]],
               550288 => Changeset[User[true]],
               553104 => Changeset[User[true]],
               553126 => Changeset[User[true]],
               553527 => Changeset[User[true]],
               554131 => Changeset[User[true]],
               554624 => Changeset[User[true]],
               555207 => Changeset[User[true]],
               555708 => Changeset[User[true]],
               556601 => Changeset[User[true]],
               558228 => Changeset[User[false]],
               558435 => Changeset[User[true]],
               558441 => Changeset[User[false]],
               558510 => Changeset[User[false]],
               558698 => Changeset[User[true]],
               561022 => Changeset[User[false]],
               561187 => Changeset[User[true]],
               561405 => Changeset[User[true]],
               561698 => Changeset[User[true]],
               561800 => Changeset[User[true]],
               561915 => Changeset[User[true]],
               562176 => Changeset[User[true]],
               562411 => Changeset[User[true]],
               562457 => Changeset[User[true]],
               562940 => Changeset[User[true]],
               563868 => Changeset[User[true]],
               564420 => Changeset[User[true]],
               564532 => Changeset[User[false]],
               564965 => Changeset[User[true]],
               568178 => Changeset[User[false]],
               568221 => Changeset[User[true]],
               569666 => Changeset[User[true]],
               571205 => Changeset[User[false]],
               573046 => Changeset[User[true]],
               573360 => Changeset[User[false]],
               573364 => Changeset[User[false]],
               575218 => Changeset[User[true]],
               579010 => Changeset[User[false]],
               579211 => Changeset[User[false]],
               579384 => Changeset[User[true]],
               579610 => Changeset[User[false]],
               580882 => Changeset[User[false]],
               581107 => Changeset[User[false]],
               581542 => Changeset[User[true]],
               582016 => Changeset[User[true]],
               583088 => Changeset[User[true]],
               583448 => Changeset[User[false]],
               584473 => Changeset[User[false]],
               585694 => Changeset[User[true]],
               587566 => Changeset[User[false]],
               590080 => Changeset[User[true]],
               591998 => Changeset[User[true]],
               595093 => Changeset[User[true]],
               595886 => Changeset[User[false]],
               596052 => Changeset[User[true]],
               597346 => Changeset[User[true]],
               598077 => Changeset[User[false]],
               598866 => Changeset[User[false]],
               598923 => Changeset[User[true]],
               599071 => Changeset[User[true]],
               599627 => Changeset[User[false]],
               603450 => Changeset[User[true]],
               605294 => Changeset[User[false]],
               605997 => Changeset[User[true]],
               606403 => Changeset[User[true]],
               606856 => Changeset[User[true]],
               608678 => Changeset[User[true]],
               609201 => Changeset[User[true]],
               610276 => Changeset[User[true]],
               611620 => Changeset[User[true]],
               611685 => Changeset[User[false]],
               611698 => Changeset[User[true]],
               611927 => Changeset[User[true]],
               613090 => Changeset[User[true]],
               613534 => Changeset[User[true]],
               615193 => Changeset[User[true]],
               615428 => Changeset[User[false]],
               616080 => Changeset[User[true]],
               616149 => Changeset[User[true]],
               616269 => Changeset[User[true]],
               616651 => Changeset[User[false]],
               616785 => Changeset[User[true]],
               617514 => Changeset[User[true]],
               618248 => Changeset[User[true]],
               618481 => Changeset[User[true]],
               618578 => Changeset[User[true]],
               618837 => Changeset[User[true]],
               619169 => Changeset[User[false]],
               620614 => Changeset[User[true]],
               620977 => Changeset[User[true]],
               621532 => Changeset[User[true]],
               621678 => Changeset[User[true]],
               622528 => Changeset[User[true]],
               623194 => Changeset[User[true]],
               623244 => Changeset[User[true]],
               623298 => Changeset[User[false]],
               623513 => Changeset[User[true]],
               624524 => Changeset[User[true]],
               624921 => Changeset[User[false]],
               625114 => Changeset[User[true]],
               625132 => Changeset[User[true]],
               625441 => Changeset[User[false]],
               626668 => Changeset[User[false]],
               626874 => Changeset[User[false]],
               627021 => Changeset[User[false]],
               627275 => Changeset[User[false]],
               627739 => Changeset[User[false]],
               628769 => Changeset[User[true]],
               628779 => Changeset[User[true]],
               628813 => Changeset[User[true]],
               628854 => Changeset[User[true]],
               629049 => Changeset[User[false]],
               629129 => Changeset[User[true]],
               629375 => Changeset[User[true]],
               630027 => Changeset[User[true]],
               630030 => Changeset[User[false]],
               631512 => Changeset[User[true]],
               631614 => Changeset[User[true]],
               632019 => Changeset[User[true]],
               632877 => Changeset[User[true]],
               633201 => Changeset[User[false]],
               633767 => Changeset[User[false]],
               634299 => Changeset[User[false]],
               634428 => Changeset[User[true]],
               634726 => Changeset[User[true]],
               634983 => Changeset[User[true]],
               637124 => Changeset[User[true]],
               637681 => Changeset[User[true]],
               637841 => Changeset[User[false]],
               638274 => Changeset[User[true]],
               639443 => Changeset[User[true]],
               640481 => Changeset[User[true]],
               640585 => Changeset[User[true]],
               640687 => Changeset[User[true]],
               641448 => Changeset[User[true]],
               642513 => Changeset[User[true]],
               643027 => Changeset[User[true]],
               643188 => Changeset[User[true]],
               643258 => Changeset[User[true]],
               643730 => Changeset[User[true]],
               644006 => Changeset[User[true]],
               644474 => Changeset[User[true]],
               645755 => Changeset[User[false]],
               648254 => Changeset[User[false]],
               648534 => Changeset[User[true]],
               649015 => Changeset[User[false]],
               649925 => Changeset[User[true]],
               650424 => Changeset[User[true]],
               650524 => Changeset[User[true]],
               650666 => Changeset[User[true]],
               650682 => Changeset[User[false]],
               650835 => Changeset[User[true]],
               650873 => Changeset[User[true]],
               651674 => Changeset[User[true]],
               653155 => Changeset[User[true]],
               653506 => Changeset[User[true]],
               654346 => Changeset[User[true]],
               654618 => Changeset[User[false]],
               654634 => Changeset[User[false]],
               654763 => Changeset[User[true]],
               655133 => Changeset[User[true]],
               657438 => Changeset[User[true]],
               659454 => Changeset[User[true]],
               659731 => Changeset[User[false]],
               662854 => Changeset[User[true]],
               662910 => Changeset[User[true]],
               663044 => Changeset[User[false]],
               663838 => Changeset[User[false]],
               664258 => Changeset[User[false]],
               665154 => Changeset[User[true]],
               666017 => Changeset[User[true]],
               666521 => Changeset[User[true]],
               666579 => Changeset[User[true]],
               667687 => Changeset[User[true]],
               669364 => Changeset[User[true]],
               671723 => Changeset[User[true]],
               672011 => Changeset[User[true]],
               672342 => Changeset[User[true]],
               672586 => Changeset[User[true]],
               674418 => Changeset[User[true]],
               674870 => Changeset[User[true]],
               675259 => Changeset[User[true]],
               675998 => Changeset[User[true]],
               676032 => Changeset[User[true]],
               676575 => Changeset[User[true]],
               677366 => Changeset[User[true]],
               678923 => Changeset[User[true]],
               680151 => Changeset[User[false]],
               680711 => Changeset[User[false]],
               681400 => Changeset[User[true]],
               681782 => Changeset[User[true]],
               682651 => Changeset[User[true]],
               684258 => Changeset[User[true]],
               687648 => Changeset[User[true]],
               688322 => Changeset[User[true]],
               691666 => Changeset[User[false]],
               692630 => Changeset[User[true]],
               693673 => Changeset[User[false]],
               694998 => Changeset[User[true]],
               696859 => Changeset[User[true]],
               699154 => Changeset[User[true]],
               699258 => Changeset[User[true]],
               700778 => Changeset[User[true]],
               700927 => Changeset[User[true]],
               703438 => Changeset[User[true]],
               704330 => Changeset[User[true]],
               707261 => Changeset[User[true]],
               707362 => Changeset[User[true]],
               707473 => Changeset[User[false]],
               708960 => Changeset[User[false]],
               710737 => Changeset[User[true]],
               710785 => Changeset[User[true]],
               712501 => Changeset[User[false]],
               713946 => Changeset[User[true]],
               714647 => Changeset[User[false]],
               715818 => Changeset[User[true]],
               716428 => Changeset[User[true]],
               716525 => Changeset[User[true]],
               716542 => Changeset[User[true]],
               718457 => Changeset[User[true]],
               720063 => Changeset[User[true]],
               720207 => Changeset[User[false]],
               721288 => Changeset[User[true]],
               721988 => Changeset[User[true]],
               722102 => Changeset[User[true]],
               723598 => Changeset[User[false]],
               724295 => Changeset[User[true]],
               724413 => Changeset[User[false]],
               724445 => Changeset[User[false]],
               724684 => Changeset[User[true]],
               724796 => Changeset[User[true]],
               727928 => Changeset[User[false]],
               728936 => Changeset[User[false]],
               729605 => Changeset[User[true]],
               731678 => Changeset[User[true]],
               731878 => Changeset[User[false]],
               732322 => Changeset[User[false]],
               732481 => Changeset[User[true]],
               732776 => Changeset[User[true]],
               733051 => Changeset[User[false]],
               733757 => Changeset[User[true]],
               733847 => Changeset[User[false]],
               733972 => Changeset[User[true]],
               734325 => Changeset[User[true]],
               734871 => Changeset[User[true]],
               736940 => Changeset[User[true]],
               737643 => Changeset[User[true]],
               737646 => Changeset[User[false]],
               738025 => Changeset[User[true]],
               739570 => Changeset[User[true]],
               741105 => Changeset[User[false]],
               744291 => Changeset[User[true]],
               746731 => Changeset[User[true]],
               747434 => Changeset[User[false]],
               747722 => Changeset[User[false]],
               747944 => Changeset[User[true]],
               753847 => Changeset[User[true]],
               754708 => Changeset[User[true]],
               754962 => Changeset[User[true]],
               755240 => Changeset[User[false]],
               755662 => Changeset[User[true]],
               756512 => Changeset[User[false]],
               757810 => Changeset[User[true]],
               760595 => Changeset[User[true]],
               760739 => Changeset[User[true]],
               761583 => Changeset[User[false]],
               762428 => Changeset[User[true]],
               764036 => Changeset[User[false]],
               765081 => Changeset[User[false]],
               766118 => Changeset[User[false]],
               766988 => Changeset[User[true]],
               767254 => Changeset[User[true]],
               767343 => Changeset[User[true]],
               767924 => Changeset[User[true]],
               768875 => Changeset[User[true]],
               771206 => Changeset[User[true]],
               772639 => Changeset[User[true]],
               775257 => Changeset[User[false]],
               776302 => Changeset[User[false]],
               777268 => Changeset[User[false]],
               778324 => Changeset[User[true]],
               783123 => Changeset[User[true]],
               784031 => Changeset[User[true]],
               784581 => Changeset[User[false]],
               787234 => Changeset[User[false]],
               787445 => Changeset[User[true]],
               787567 => Changeset[User[true]],
               791289 => Changeset[User[false]],
               791998 => Changeset[User[false]],
               792309 => Changeset[User[false]],
               793615 => Changeset[User[true]],
               794586 => Changeset[User[true]],
               796305 => Changeset[User[true]],
               796906 => Changeset[User[false]],
               797148 => Changeset[User[true]],
               798836 => Changeset[User[false]],
               800001 => Changeset[User[true]],
               800857 => Changeset[User[false]],
               801604 => Changeset[User[true]],
               801886 => Changeset[User[true]],
               803893 => Changeset[User[false]],
               804174 => Changeset[User[false]],
               804372 => Changeset[User[false]],
               805837 => Changeset[User[true]],
               805984 => Changeset[User[true]],
               806497 => Changeset[User[true]],
               807399 => Changeset[User[true]],
               807875 => Changeset[User[true]],
               808356 => Changeset[User[true]],
               809165 => Changeset[User[true]],
               810122 => Changeset[User[true]],
               810274 => Changeset[User[false]],
               810384 => Changeset[User[false]],
               811530 => Changeset[User[true]],
               811791 => Changeset[User[true]],
               813005 => Changeset[User[true]],
               815321 => Changeset[User[true]],
               815919 => Changeset[User[false]],
               816155 => Changeset[User[true]],
               816937 => Changeset[User[true]],
               817361 => Changeset[User[true]],
               817920 => Changeset[User[false]],
               817998 => Changeset[User[true]],
               821938 => Changeset[User[false]],
               822149 => Changeset[User[true]],
               822382 => Changeset[User[false]],
               822723 => Changeset[User[true]],
               823308 => Changeset[User[false]],
               825582 => Changeset[User[false]],
               825627 => Changeset[User[false]],
               825699 => Changeset[User[false]],
               825742 => Changeset[User[false]],
               825782 => Changeset[User[false]],
               825818 => Changeset[User[false]],
               825934 => Changeset[User[false]],
               826077 => Changeset[User[false]],
               826304 => Changeset[User[false]],
               826538 => Changeset[User[false]],
               826686 => Changeset[User[false]],
               826957 => Changeset[User[false]],
               828484 => Changeset[User[true]],
               830112 => Changeset[User[true]],
               830255 => Changeset[User[false]],
               830374 => Changeset[User[false]],
               830421 => Changeset[User[false]],
               830475 => Changeset[User[false]],
               830516 => Changeset[User[false]],
               830542 => Changeset[User[false]],
               830628 => Changeset[User[false]],
               830685 => Changeset[User[false]],
               830772 => Changeset[User[false]],
               830892 => Changeset[User[false]],
               831060 => Changeset[User[false]],
               831182 => Changeset[User[false]],
               831350 => Changeset[User[true]],
               831353 => Changeset[User[true]],
               831387 => Changeset[User[false]],
               832169 => Changeset[User[false]],
               832313 => Changeset[User[false]],
               832544 => Changeset[User[true]],
               833764 => Changeset[User[true]],
               833865 => Changeset[User[true]],
               834854 => Changeset[User[true]],
               836068 => Changeset[User[true]],
               838241 => Changeset[User[true]],
               838258 => Changeset[User[true]],
               838405 => Changeset[User[true]],
               838967 => Changeset[User[true]],
               839411 => Changeset[User[true]],
               840201 => Changeset[User[true]],
               842421 => Changeset[User[true]],
               842657 => Changeset[User[false]],
               843176 => Changeset[User[true]],
               843640 => Changeset[User[true]],
               846353 => Changeset[User[false]],
               850004 => Changeset[User[false]],
               851376 => Changeset[User[true]],
               852289 => Changeset[User[false]],
               852321 => Changeset[User[true]],
               854647 => Changeset[User[true]],
               855544 => Changeset[User[true]],
               855570 => Changeset[User[true]],
               858449 => Changeset[User[true]],
               859055 => Changeset[User[true]],
               860017 => Changeset[User[true]],
               861018 => Changeset[User[true]],
               865180 => Changeset[User[false]],
               869496 => Changeset[User[true]],
               870027 => Changeset[User[true]],
               870242 => Changeset[User[false]],
               871990 => Changeset[User[true]],
               893398 => Changeset[User[false]],
               903611 => Changeset[User[true]],
               909413 => Changeset[User[false]],
               914936 => Changeset[User[true]],
               922055 => Changeset[User[true]],
               926323 => Changeset[User[false]],
               931837 => Changeset[User[true]],
               945128 => Changeset[User[true]],
               969239 => Changeset[User[false]],
               972092 => Changeset[User[true]],
               984775 => Changeset[User[true]],
               995336 => Changeset[User[true]],
               996556 => Changeset[User[true]],
               1021164 => Changeset[User[false]],
               1024646 => Changeset[User[true]],
               1029473 => Changeset[User[true]],
               1032150 => Changeset[User[true]],
               1034618 => Changeset[User[true]],
               1034729 => Changeset[User[true]],
               1034834 => Changeset[User[true]],
               1036829 => Changeset[User[true]],
               1050775 => Changeset[User[true]],
               1051487 => Changeset[User[false]],
               1053841 => Changeset[User[true]],
               1076707 => Changeset[User[false]],
               1079938 => Changeset[User[true]],
               1083254 => Changeset[User[false]],
               1093373 => Changeset[User[true]],
               1093404 => Changeset[User[true]],
               1093500 => Changeset[User[true]],
               1093558 => Changeset[User[true]],
               1096123 => Changeset[User[false]],
               1098107 => Changeset[User[true]],
               1126268 => Changeset[User[true]],
               1138174 => Changeset[User[true]],
               1139683 => Changeset[User[false]],
               1164578 => Changeset[User[true]],
               1182630 => Changeset[User[true]],
               1188446 => Changeset[User[true]],
               1194963 => Changeset[User[true]],
               1197334 => Changeset[User[false]],
               1219724 => Changeset[User[true]],
               1224116 => Changeset[User[false]],
               1244738 => Changeset[User[true]],
               1246764 => Changeset[User[false]],
               1281781 => Changeset[User[true]],
               1287157 => Changeset[User[false]],
               1289861 => Changeset[User[false]],
               1295994 => Changeset[User[true]],
               1310871 => Changeset[User[true]],
               1312160 => Changeset[User[true]],
               1313517 => Changeset[User[true]],
               1322573 => Changeset[User[true]],
               1325374 => Changeset[User[false]],
               1327180 => Changeset[User[true]],
               1340708 => Changeset[User[false]],
               1355937 => Changeset[User[true]],
               1358109 => Changeset[User[true]],
               1369695 => Changeset[User[false]],
               1376368 => Changeset[User[false]],
               1398724 => Changeset[User[false]],
               1399078 => Changeset[User[true]],
               1415009 => Changeset[User[false]],
               1417508 => Changeset[User[false]],
               1420886 => Changeset[User[false]],
               1422335 => Changeset[User[true]],
               1423271 => Changeset[User[false]],
               1432923 => Changeset[User[true]],
               1442443 => Changeset[User[true]],
               1444575 => Changeset[User[false]],
               1458210 => Changeset[User[true]],
               1468496 => Changeset[User[false]],
               1468945 => Changeset[User[true]],
               1469357 => Changeset[User[true]],
               1469657 => Changeset[User[true]],
               1471980 => Changeset[User[true]],
               1472085 => Changeset[User[false]],
               1473064 => Changeset[User[true]],
               1473643 => Changeset[User[true]],
               1473698 => Changeset[User[true]],
               1476357 => Changeset[User[true]],
               1476380 => Changeset[User[true]],
               1480480 => Changeset[User[false]],
               1484930 => Changeset[User[false]],
               1485896 => Changeset[User[false]],
               1486610 => Changeset[User[true]],
               1489333 => Changeset[User[true]],
               1495059 => Changeset[User[false]],
               1496591 => Changeset[User[true]],
               1501084 => Changeset[User[true]],
               1503866 => Changeset[User[false]],
               1508474 => Changeset[User[false]],
               1512009 => Changeset[User[false]],
               1520555 => Changeset[User[true]],
               1531312 => Changeset[User[true]],
               1533652 => Changeset[User[true]],
               1534281 => Changeset[User[true]],
               1535655 => Changeset[User[true]],
               1550007 => Changeset[User[false]],
               1567870 => Changeset[User[false]],
               1574910 => Changeset[User[false]],
               1578334 => Changeset[User[true]],
               1600715 => Changeset[User[true]],
               1600858 => Changeset[User[true]],
               1604109 => Changeset[User[true]],
               1609243 => Changeset[User[true]],
               1615475 => Changeset[User[true]],
               1618018 => Changeset[User[false]],
               1626472 => Changeset[User[true]],
               1643636 => Changeset[User[true]],
               1651366 => Changeset[User[true]],
               1676377 => Changeset[User[false]],
               1678932 => Changeset[User[true]],
               1682982 => Changeset[User[true]],
               1697395 => Changeset[User[false]],
               1701941 => Changeset[User[true]],
               1710896 => Changeset[User[false]],
               1716456 => Changeset[User[false]],
               1716926 => Changeset[User[true]],
               1726417 => Changeset[User[true]],
               1726876 => Changeset[User[true]],
               1728795 => Changeset[User[true]],
               1729909 => Changeset[User[false]],
               1743508 => Changeset[User[false]],
               1746404 => Changeset[User[false]],
               1746922 => Changeset[User[false]],
               1757073 => Changeset[User[true]],
               1758828 => Changeset[User[true]],
               1760066 => Changeset[User[true]],
               1766086 => Changeset[User[false]],
               1770717 => Changeset[User[false]],
               1791998 => Changeset[User[true]],
               1794549 => Changeset[User[false]],
               1794569 => Changeset[User[true]],
               1810815 => Changeset[User[true]],
               1812582 => Changeset[User[false]],
               1814435 => Changeset[User[true]],
               1822120 => Changeset[User[false]],
               1829610 => Changeset[User[true]],
               1838238 => Changeset[User[false]],
               1838951 => Changeset[User[true]],
               1838956 => Changeset[User[true]],
               1839468 => Changeset[User[false]],
               1859563 => Changeset[User[true]],
               1863528 => Changeset[User[true]],
               1865166 => Changeset[User[false]],
               1868589 => Changeset[User[true]],
               1874591 => Changeset[User[false]],
               1877227 => Changeset[User[true]],
               1892214 => Changeset[User[false]],
               1904710 => Changeset[User[false]],
               1907630 => Changeset[User[true]],
               1907813 => Changeset[User[true]],
               1911378 => Changeset[User[false]],
               1919009 => Changeset[User[true]],
               1920585 => Changeset[User[false]],
               1920970 => Changeset[User[false]],
               1921256 => Changeset[User[true]],
               1922529 => Changeset[User[true]],
               1929628 => Changeset[User[true]],
               1933614 => Changeset[User[false]],
               1937108 => Changeset[User[true]],
               1949601 => Changeset[User[false]],
               1954002 => Changeset[User[false]],
               1962783 => Changeset[User[true]],
               1966598 => Changeset[User[true]],
               1974539 => Changeset[User[true]],
               1975646 => Changeset[User[true]],
               1980546 => Changeset[User[true]],
               1980874 => Changeset[User[false]],
               1982000 => Changeset[User[true]],
               1997677 => Changeset[User[true]],
               2002981 => Changeset[User[true]],
               2022051 => Changeset[User[true]],
               2022924 => Changeset[User[true]],
               2025007 => Changeset[User[false]],
               2030313 => Changeset[User[false]],
               2032354 => Changeset[User[true]],
               2032834 => Changeset[User[true]],
               2033857 => Changeset[User[false]],
               2034030 => Changeset[User[false]],
               2037215 => Changeset[User[false]],
               2041786 => Changeset[User[false]],
               2043993 => Changeset[User[true]],
               2059025 => Changeset[User[true]],
               2072144 => Changeset[User[true]],
               2079295 => Changeset[User[false]],
               2079357 => Changeset[User[false]],
               2079411 => Changeset[User[false]],
               2079478 => Changeset[User[false]],
               2079654 => Changeset[User[false]],
               2079675 => Changeset[User[false]],
               2080764 => Changeset[User[true]],
               2092106 => Changeset[User[true]],
               2093818 => Changeset[User[true]],
               2104981 => Changeset[User[false]],
               2105616 => Changeset[User[true]],
               2105710 => Changeset[User[true]],
               2115157 => Changeset[User[false]],
               2117660 => Changeset[User[true]],
               2118233 => Changeset[User[true]],
               2118817 => Changeset[User[true]],
               2125580 => Changeset[User[false]],
               2129137 => Changeset[User[true]],
               2130249 => Changeset[User[true]],
               2137340 => Changeset[User[true]],
               2142647 => Changeset[User[false]],
               2147726 => Changeset[User[true]],
               2147899 => Changeset[User[true]],
               2155784 => Changeset[User[true]],
               2158296 => Changeset[User[true]],
               2160529 => Changeset[User[true]],
               2171415 => Changeset[User[false]],
               2171566 => Changeset[User[true]],
               2175643 => Changeset[User[true]],
               2183254 => Changeset[User[true]],
               2203521 => Changeset[User[false]],
               2203658 => Changeset[User[false]],
               2204037 => Changeset[User[false]],
               2205065 => Changeset[User[false]],
               2205808 => Changeset[User[true]],
               2205827 => Changeset[User[true]],
               2222941 => Changeset[User[true]],
               2223713 => Changeset[User[true]],
               2232476 => Changeset[User[true]],
               2233706 => Changeset[User[true]],
               2243593 => Changeset[User[false]],
               2251146 => Changeset[User[false]],
               2251292 => Changeset[User[false]],
               2251724 => Changeset[User[false]],
               2255781 => Changeset[User[false]],
               2264349 => Changeset[User[true]],
               2274821 => Changeset[User[true]],
               2274849 => Changeset[User[false]],
               2285196 => Changeset[User[false]],
               2285466 => Changeset[User[true]],
               2294580 => Changeset[User[true]],
               2295791 => Changeset[User[false]],
               2296863 => Changeset[User[false]],
               2304730 => Changeset[User[false]],
               2308259 => Changeset[User[true]],
               2308761 => Changeset[User[false]],
               2310659 => Changeset[User[true]],
               2311952 => Changeset[User[false]],
               2316518 => Changeset[User[true]],
               2323811 => Changeset[User[true]],
               2325673 => Changeset[User[true]],
               2327704 => Changeset[User[true]],
               2330135 => Changeset[User[true]],
               2333984 => Changeset[User[true]],
               2339435 => Changeset[User[true]],
               2343259 => Changeset[User[false]],
               2345755 => Changeset[User[true]],
               2351395 => Changeset[User[true]],
               2351696 => Changeset[User[true]],
               2355642 => Changeset[User[false]],
               2360135 => Changeset[User[true]],
               2365382 => Changeset[User[true]],
               2365684 => Changeset[User[true]],
               2373273 => Changeset[User[true]],
               2374789 => Changeset[User[true]],
               2379329 => Changeset[User[false]],
               2384675 => Changeset[User[false]],
               2386064 => Changeset[User[true]],
               2386961 => Changeset[User[true]],
               2399570 => Changeset[User[true]],
               2405970 => Changeset[User[false]],
               2406960 => Changeset[User[true]],
               2407561 => Changeset[User[true]],
               2411673 => Changeset[User[true]],
               2411999 => Changeset[User[true]],
               2412015 => Changeset[User[true]],
               2417803 => Changeset[User[true]],
               2419919 => Changeset[User[true]],
               2421680 => Changeset[User[true]],
               2422787 => Changeset[User[true]],
               2428828 => Changeset[User[false]],
               2429729 => Changeset[User[true]],
               2430437 => Changeset[User[false]],
               2432702 => Changeset[User[true]],
               2438687 => Changeset[User[true]],
               2441657 => Changeset[User[false]],
               2442521 => Changeset[User[false]],
               2443788 => Changeset[User[true]],
               2444514 => Changeset[User[true]],
               2445201 => Changeset[User[true]],
               2450112 => Changeset[User[true]],
               2458120 => Changeset[User[true]],
               2460498 => Changeset[User[true]],
               2460584 => Changeset[User[true]],
               2460594 => Changeset[User[true]],
               2466840 => Changeset[User[true]],
               2477051 => Changeset[User[true]],
               2477990 => Changeset[User[false]],
               2487508 => Changeset[User[true]],
               2487546 => Changeset[User[false]],
               2497128 => Changeset[User[true]],
               2498408 => Changeset[User[true]],
               2498538 => Changeset[User[true]],
               2500655 => Changeset[User[false]],
               2502545 => Changeset[User[true]],
               2514557 => Changeset[User[false]],
               2515133 => Changeset[User[false]],
               2516926 => Changeset[User[false]],
               2517866 => Changeset[User[true]],
               2519217 => Changeset[User[true]],
               2519667 => Changeset[User[true]],
               2519706 => Changeset[User[true]],
               2519755 => Changeset[User[false]],
               2522186 => Changeset[User[false]],
               2527922 => Changeset[User[true]],
               2529861 => Changeset[User[false]],
               2533592 => Changeset[User[true]],
               2536182 => Changeset[User[false]],
               2540828 => Changeset[User[false]],
               2545646 => Changeset[User[false]],
               2553346 => Changeset[User[false]],
               2563701 => Changeset[User[false]],
               2565302 => Changeset[User[false]],
               2567694 => Changeset[User[false]],
               2593305 => Changeset[User[false]],
               2595487 => Changeset[User[false]],
               2600995 => Changeset[User[false]],
               2610976 => Changeset[User[false]],
               2647076 => Changeset[User[false]],
               2647666 => Changeset[User[true]],
               2647779 => Changeset[User[true]],
               2647870 => Changeset[User[false]],
               2652651 => Changeset[User[true]],
               2659497 => Changeset[User[true]],
               2660062 => Changeset[User[true]],
               2662767 => Changeset[User[false]],
               2674995 => Changeset[User[true]],
               2677949 => Changeset[User[true]],
               2678768 => Changeset[User[true]],
               2686223 => Changeset[User[false]],
               2687353 => Changeset[User[false]],
               2689507 => Changeset[User[true]],
               2689684 => Changeset[User[false]],
               2689729 => Changeset[User[true]],
               2695662 => Changeset[User[false]],
               2702677 => Changeset[User[false]],
               2703989 => Changeset[User[false]],
               2706023 => Changeset[User[true]],
               2708888 => Changeset[User[true]],
               2710279 => Changeset[User[true]],
               2723934 => Changeset[User[true]],
               2733045 => Changeset[User[false]],
               2740330 => Changeset[User[false]],
               2750032 => Changeset[User[false]],
               2757463 => Changeset[User[true]],
               2763154 => Changeset[User[false]],
               2763783 => Changeset[User[true]],
               2764077 => Changeset[User[true]],
               2771628 => Changeset[User[true]],
               2780514 => Changeset[User[false]],
               2786185 => Changeset[User[false]],
               2787893 => Changeset[User[true]],
               2788020 => Changeset[User[true]],
               2789398 => Changeset[User[true]],
               2791809 => Changeset[User[true]],
               2801655 => Changeset[User[false]],
               2804047 => Changeset[User[false]],
               2805319 => Changeset[User[true]],
               2808465 => Changeset[User[false]],
               2809762 => Changeset[User[false]],
               2811028 => Changeset[User[true]],
               2817547 => Changeset[User[true]],
               2820051 => Changeset[User[false]],
               2831782 => Changeset[User[false]],
               2836393 => Changeset[User[false]],
               2836851 => Changeset[User[false]],
               2844578 => Changeset[User[true]],
               2847769 => Changeset[User[true]],
               2850852 => Changeset[User[false]],
               2862516 => Changeset[User[true]],
               2865702 => Changeset[User[true]],
               2867240 => Changeset[User[true]],
               2867523 => Changeset[User[true]],
               2872958 => Changeset[User[false]],
               2875819 => Changeset[User[true]],
               2876510 => Changeset[User[true]],
               2879376 => Changeset[User[true]],
               2879503 => Changeset[User[false]],
               2880777 => Changeset[User[false]],
               2885804 => Changeset[User[false]],
               2896679 => Changeset[User[true]],
               2899302 => Changeset[User[true]],
               2899542 => Changeset[User[false]],
               2908294 => Changeset[User[false]],
               2912307 => Changeset[User[true]],
               2917740 => Changeset[User[false]],
               2923632 => Changeset[User[true]],
               2935113 => Changeset[User[false]],
               2943258 => Changeset[User[false]],
               2943806 => Changeset[User[false]],
               2947475 => Changeset[User[true]],
               2952910 => Changeset[User[false]],
               2953060 => Changeset[User[true]],
               2953385 => Changeset[User[false]],
               2954167 => Changeset[User[true]],
               2958167 => Changeset[User[false]],
               2960192 => Changeset[User[true]],
               2968636 => Changeset[User[true]],
               2973608 => Changeset[User[true]],
               2977651 => Changeset[User[false]],
               2981943 => Changeset[User[true]],
               2982068 => Changeset[User[true]],
               2982921 => Changeset[User[true]],
               2984957 => Changeset[User[false]],
               2986393 => Changeset[User[true]],
               2986682 => Changeset[User[false]],
               2992606 => Changeset[User[true]],
               2994440 => Changeset[User[true]],
               2994863 => Changeset[User[true]],
               3004211 => Changeset[User[true]],
               3012776 => Changeset[User[false]],
               3013580 => Changeset[User[true]],
               3015914 => Changeset[User[true]],
               3016549 => Changeset[User[true]],
               3017398 => Changeset[User[true]],
               3017443 => Changeset[User[true]],
               3017612 => Changeset[User[true]],
               3021530 => Changeset[User[false]],
               3022448 => Changeset[User[true]],
               3023860 => Changeset[User[false]],
               3026404 => Changeset[User[false]],
               3026514 => Changeset[User[false]],
               3027805 => Changeset[User[true]],
               3029192 => Changeset[User[false]],
               3034071 => Changeset[User[true]],
               3034451 => Changeset[User[true]],
               3034822 => Changeset[User[true]],
               3036690 => Changeset[User[true]],
               3038241 => Changeset[User[true]],
               3038519 => Changeset[User[true]],
               3039177 => Changeset[User[true]],
               3039575 => Changeset[User[true]],
               3041532 => Changeset[User[true]],
               3042142 => Changeset[User[true]],
               3043080 => Changeset[User[false]],
               3043731 => Changeset[User[true]],
               3044751 => Changeset[User[true]],
               3045576 => Changeset[User[true]],
               3047373 => Changeset[User[true]],
               3047374 => Changeset[User[true]],
               3048232 => Changeset[User[true]],
               3049126 => Changeset[User[true]],
               3058692 => Changeset[User[true]],
               3065731 => Changeset[User[true]],
               3067201 => Changeset[User[true]],
               3072858 => Changeset[User[false]],
               3076946 => Changeset[User[false]],
               3077264 => Changeset[User[false]],
               3081878 => Changeset[User[false]],
               3082011 => Changeset[User[false]],
               3083072 => Changeset[User[true]],
               3086612 => Changeset[User[true]],
               3091919 => Changeset[User[false]],
               3098908 => Changeset[User[true]],
               3099133 => Changeset[User[true]],
               3100646 => Changeset[User[true]],
               3103011 => Changeset[User[true]],
               3105899 => Changeset[User[false]],
               3112508 => Changeset[User[true]],
               3115358 => Changeset[User[false]],
               3120436 => Changeset[User[true]],
               3122941 => Changeset[User[true]],
               3126698 => Changeset[User[true]],
               3131097 => Changeset[User[true]],
               3134380 => Changeset[User[false]],
               3134480 => Changeset[User[false]],
               3134557 => Changeset[User[false]],
               3134593 => Changeset[User[false]],
               3134629 => Changeset[User[false]],
               3134667 => Changeset[User[false]],
               3140681 => Changeset[User[false]],
               3143268 => Changeset[User[false]],
               3148084 => Changeset[User[false]],
               3151605 => Changeset[User[true]],
               3157490 => Changeset[User[true]],
               3158811 => Changeset[User[true]],
               3162316 => Changeset[User[false]],
               3164461 => Changeset[User[false]],
               3165182 => Changeset[User[false]],
               3165746 => Changeset[User[false]],
               3172525 => Changeset[User[true]],
               3173630 => Changeset[User[true]],
               3174585 => Changeset[User[true]],
               3175679 => Changeset[User[false]],
               3187050 => Changeset[User[true]],
               3199269 => Changeset[User[true]],
               3209320 => Changeset[User[true]],
               3217029 => Changeset[User[true]],
               3219794 => Changeset[User[false]],
               3223098 => Changeset[User[false]],
               3227453 => Changeset[User[true]],
               3239790 => Changeset[User[false]],
               3254402 => Changeset[User[false]],
               3255276 => Changeset[User[false]],
               3255934 => Changeset[User[false]],
               3256193 => Changeset[User[false]],
               3257705 => Changeset[User[false]],
               3259081 => Changeset[User[false]],
               3259409 => Changeset[User[true]],
               3259851 => Changeset[User[false]],
               3260581 => Changeset[User[false]],
               3261216 => Changeset[User[false]],
               3261283 => Changeset[User[false]],
               3261520 => Changeset[User[true]],
               3261913 => Changeset[User[false]],
               3262019 => Changeset[User[false]],
               3262561 => Changeset[User[true]],
               3262801 => Changeset[User[false]],
               3262955 => Changeset[User[false]],
               3263558 => Changeset[User[false]],
               3268660 => Changeset[User[false]],
               3273117 => Changeset[User[false]],
               3274649 => Changeset[User[true]],
               3279296 => Changeset[User[true]],
               3281938 => Changeset[User[false]],
               3286167 => Changeset[User[true]],
               3288182 => Changeset[User[false]],
               3289020 => Changeset[User[false]],
               3297786 => Changeset[User[true]],
               3300059 => Changeset[User[true]],
               3300158 => Changeset[User[false]],
               3300678 => Changeset[User[true]],
               3302126 => Changeset[User[true]],
               3315061 => Changeset[User[false]],
               3315814 => Changeset[User[false]],
               3318164 => Changeset[User[true]],
               3321676 => Changeset[User[true]],
               3321904 => Changeset[User[false]],
               3322149 => Changeset[User[false]],
               3323591 => Changeset[User[false]],
               3338896 => Changeset[User[false]],
               3341051 => Changeset[User[true]],
               3349239 => Changeset[User[true]],
               3349690 => Changeset[User[false]],
               3353659 => Changeset[User[false]],
               3353660 => Changeset[User[true]],
               3355937 => Changeset[User[false]],
               3358287 => Changeset[User[true]],
               3360750 => Changeset[User[true]],
               3367825 => Changeset[User[true]],
               3369514 => Changeset[User[true]],
               3369590 => Changeset[User[false]],
               3371480 => Changeset[User[true]],
               3372514 => Changeset[User[true]],
               3376762 => Changeset[User[true]],
               3384860 => Changeset[User[true]],
               3385704 => Changeset[User[false]],
               3387901 => Changeset[User[true]],
               3388987 => Changeset[User[false]],
               3392124 => Changeset[User[false]],
               3404249 => Changeset[User[true]],
               3404927 => Changeset[User[false]],
               3406294 => Changeset[User[false]],
               3406870 => Changeset[User[false]],
               3408170 => Changeset[User[false]],
               3409551 => Changeset[User[false]],
               3409852 => Changeset[User[true]],
               3418067 => Changeset[User[false]],
               3421640 => Changeset[User[false]],
               3423659 => Changeset[User[false]],
               3426831 => Changeset[User[true]],
               3431590 => Changeset[User[true]],
               3440938 => Changeset[User[false]],
               3446458 => Changeset[User[false]],
               3447301 => Changeset[User[false]],
               3447594 => Changeset[User[false]],
               3447930 => Changeset[User[false]],
               3449797 => Changeset[User[false]],
               3452099 => Changeset[User[false]],
               3452202 => Changeset[User[false]],
               3452422 => Changeset[User[false]],
               3452733 => Changeset[User[false]],
               3454225 => Changeset[User[false]],
               3460417 => Changeset[User[false]],
               3465738 => Changeset[User[false]],
               3468947 => Changeset[User[false]],
               3469561 => Changeset[User[false]],
               3470771 => Changeset[User[false]],
               3473304 => Changeset[User[false]],
               3475007 => Changeset[User[false]],
               3475249 => Changeset[User[false]],
               3475574 => Changeset[User[false]],
               3477826 => Changeset[User[true]],
               3487707 => Changeset[User[false]],
               3488089 => Changeset[User[false]],
               3492575 => Changeset[User[false]],
               3494418 => Changeset[User[true]],
               3496468 => Changeset[User[false]],
               3502859 => Changeset[User[true]],
               3515105 => Changeset[User[true]],
               3515708 => Changeset[User[false]],
               3527829 => Changeset[User[true]],
               3534858 => Changeset[User[false]],
               3535456 => Changeset[User[true]],
               3535771 => Changeset[User[false]],
               3538677 => Changeset[User[false]],
               3541292 => Changeset[User[false]],
               3542043 => Changeset[User[false]],
               3542529 => Changeset[User[false]],
               3543063 => Changeset[User[false]],
               3545327 => Changeset[User[false]],
               3552076 => Changeset[User[true]],
               3553632 => Changeset[User[false]],
               3553903 => Changeset[User[false]],
               3558943 => Changeset[User[false]],
               3559223 => Changeset[User[true]],
               3560332 => Changeset[User[true]],
               3561235 => Changeset[User[false]],
               3561932 => Changeset[User[false]],
               3562333 => Changeset[User[false]],
               3562678 => Changeset[User[true]],
               3562745 => Changeset[User[false]],
               3566104 => Changeset[User[false]],
               3566700 => Changeset[User[false]],
               3568234 => Changeset[User[true]],
               3574781 => Changeset[User[false]],
               3574798 => Changeset[User[false]],
               3583527 => Changeset[User[true]],
               3586224 => Changeset[User[true]],
               3602462 => Changeset[User[false]],
               3602748 => Changeset[User[false]],
               3603340 => Changeset[User[false]],
               3605398 => Changeset[User[false]],
               3605906 => Changeset[User[true]],
               3607661 => Changeset[User[true]],
               3608395 => Changeset[User[false]],
               3610325 => Changeset[User[true]],
               3611011 => Changeset[User[true]],
               3620820 => Changeset[User[true]],
               3622144 => Changeset[User[true]],
               3624661 => Changeset[User[true]],
               3640403 => Changeset[User[true]],
               3641486 => Changeset[User[false]],
               3641544 => Changeset[User[false]],
               3643733 => Changeset[User[true]],
               3646905 => Changeset[User[true]],
               3650434 => Changeset[User[true]],
               3654746 => Changeset[User[true]],
               3657119 => Changeset[User[true]],
               3665115 => Changeset[User[false]],
               3667855 => Changeset[User[false]],
               3669916 => Changeset[User[true]],
               3672105 => Changeset[User[true]],
               3672869 => Changeset[User[false]],
               3683292 => Changeset[User[false]],
               3693838 => Changeset[User[false]],
               3694314 => Changeset[User[true]],
               3696802 => Changeset[User[false]],
               3712361 => Changeset[User[false]],
               3716610 => Changeset[User[false]],
               3716703 => Changeset[User[true]],
               3719633 => Changeset[User[false]],
               3720250 => Changeset[User[false]],
               3720602 => Changeset[User[false]],
               3721320 => Changeset[User[false]],
               3722172 => Changeset[User[false]],
               3723129 => Changeset[User[false]],
               3725018 => Changeset[User[false]],
               3729700 => Changeset[User[false]],
               3730316 => Changeset[User[false]],
               3730429 => Changeset[User[false]],
               3731142 => Changeset[User[false]],
               3732779 => Changeset[User[true]],
               3743409 => Changeset[User[false]],
               3746390 => Changeset[User[false]],
               3751041 => Changeset[User[false]],
               3751647 => Changeset[User[false]],
               3752298 => Changeset[User[false]],
               3753761 => Changeset[User[true]],
               3754134 => Changeset[User[true]],
               3757460 => Changeset[User[true]],
               3762535 => Changeset[User[true]],
               3765951 => Changeset[User[false]],
               3766542 => Changeset[User[false]],
               3767800 => Changeset[User[false]],
               3768231 => Changeset[User[false]],
               3768759 => Changeset[User[false]],
               3769037 => Changeset[User[false]],
               3769487 => Changeset[User[true]],
               3770489 => Changeset[User[false]],
               3771195 => Changeset[User[true]],
               3774241 => Changeset[User[false]],
               3774593 => Changeset[User[false]],
               3774667 => Changeset[User[true]],
               3777235 => Changeset[User[false]],
               3781622 => Changeset[User[false]],
               3782021 => Changeset[User[false]],
               3784709 => Changeset[User[false]],
               3792759 => Changeset[User[false]],
               3793102 => Changeset[User[false]],
               3795171 => Changeset[User[false]],
               3795288 => Changeset[User[false]],
               3795737 => Changeset[User[false]],
               3796338 => Changeset[User[true]],
               3800195 => Changeset[User[true]],
               3806154 => Changeset[User[true]],
               3811240 => Changeset[User[true]],
               3832903 => Changeset[User[false]],
               3833364 => Changeset[User[true]],
               3836079 => Changeset[User[true]],
               3840841 => Changeset[User[false]],
               3840863 => Changeset[User[false]],
               3843686 => Changeset[User[true]],
               3847197 => Changeset[User[true]],
               3848349 => Changeset[User[false]],
               3851036 => Changeset[User[true]],
               3855707 => Changeset[User[false]],
               3855786 => Changeset[User[false]],
               3862435 => Changeset[User[true]],
               3862460 => Changeset[User[true]],
               3866995 => Changeset[User[true]],
               3868613 => Changeset[User[false]],
               3871115 => Changeset[User[true]],
               3871266 => Changeset[User[true]],
               3873977 => Changeset[User[false]],
               3878349 => Changeset[User[true]],
               3879939 => Changeset[User[false]],
               3880214 => Changeset[User[true]],
               3882541 => Changeset[User[false]],
               3890428 => Changeset[User[false]],
               3890662 => Changeset[User[true]],
               3891096 => Changeset[User[false]],
               3891695 => Changeset[User[false]],
               3892455 => Changeset[User[false]],
               3892730 => Changeset[User[false]],
               3893007 => Changeset[User[false]],
               3893039 => Changeset[User[false]],
               3901022 => Changeset[User[false]],
               3902713 => Changeset[User[false]],
               3904295 => Changeset[User[false]],
               3906827 => Changeset[User[false]],
               3913308 => Changeset[User[false]],
               3914643 => Changeset[User[true]],
               3919662 => Changeset[User[true]],
               3920686 => Changeset[User[false]],
               3921041 => Changeset[User[false]],
               3921640 => Changeset[User[true]],
               3922241 => Changeset[User[false]],
               3926007 => Changeset[User[true]],
               3926869 => Changeset[User[true]],
               3934162 => Changeset[User[true]],
               3938219 => Changeset[User[false]],
               3944682 => Changeset[User[true]],
               3954519 => Changeset[User[false]],
               3962754 => Changeset[User[false]],
               3963409 => Changeset[User[false]],
               3965863 => Changeset[User[true]],
               3970362 => Changeset[User[false]],
               3971707 => Changeset[User[true]],
               3973146 => Changeset[User[false]],
               3973669 => Changeset[User[false]],
               3975744 => Changeset[User[false]],
               3977982 => Changeset[User[true]],
               3980096 => Changeset[User[false]],
               3981499 => Changeset[User[true]],
               3985695 => Changeset[User[true]],
               3989342 => Changeset[User[false]],
               3993466 => Changeset[User[true]],
               3994235 => Changeset[User[true]],
               3998076 => Changeset[User[true]],
               3999057 => Changeset[User[true]],
               4001874 => Changeset[User[true]],
               4003859 => Changeset[User[false]],
               4004299 => Changeset[User[false]],
               4008307 => Changeset[User[false]],
               4013796 => Changeset[User[false]],
               4014254 => Changeset[User[false]],
               4014560 => Changeset[User[true]],
               4015066 => Changeset[User[true]],
               4021670 => Changeset[User[false]],
               4028121 => Changeset[User[true]],
               4030713 => Changeset[User[false]],
               4033528 => Changeset[User[false]],
               4033617 => Changeset[User[true]],
               4034870 => Changeset[User[true]],
               4036706 => Changeset[User[true]],
               4037890 => Changeset[User[false]],
               4044768 => Changeset[User[false]],
               4059142 => Changeset[User[true]],
               4062315 => Changeset[User[true]],
               4062667 => Changeset[User[true]],
               4063410 => Changeset[User[true]],
               4070468 => Changeset[User[true]],
               4072958 => Changeset[User[true]],
               4074007 => Changeset[User[true]],
               4074206 => Changeset[User[true]],
               4074459 => Changeset[User[true]],
               4076697 => Changeset[User[false]],
               4077498 => Changeset[User[true]],
               4078177 => Changeset[User[true]],
               4089430 => Changeset[User[true]],
               4090367 => Changeset[User[true]],
               4093987 => Changeset[User[true]],
               4107952 => Changeset[User[true]],
               4109049 => Changeset[User[false]],
               4111166 => Changeset[User[false]],
               4113072 => Changeset[User[true]],
               4116240 => Changeset[User[true]],
               4128666 => Changeset[User[false]],
               4135649 => Changeset[User[true]],
               4136151 => Changeset[User[false]],
               4138784 => Changeset[User[false]],
               4143104 => Changeset[User[true]],
               4148454 => Changeset[User[false]],
               4148908 => Changeset[User[false]],
               4155535 => Changeset[User[true]],
               4161820 => Changeset[User[false]],
               4166664 => Changeset[User[true]],
               4168306 => Changeset[User[true]],
               4184009 => Changeset[User[true]],
               4188582 => Changeset[User[false]],
               4190765 => Changeset[User[true]],
               4191243 => Changeset[User[false]],
               4192589 => Changeset[User[true]],
               4195119 => Changeset[User[false]],
               4198009 => Changeset[User[false]],
               4199043 => Changeset[User[false]],
               4210746 => Changeset[User[true]],
               4211009 => Changeset[User[true]],
               4212121 => Changeset[User[false]],
               4219524 => Changeset[User[false]],
               4219938 => Changeset[User[false]],
               4220123 => Changeset[User[false]],
               4223176 => Changeset[User[true]],
               4226219 => Changeset[User[true]],
               4228383 => Changeset[User[true]],
               4231667 => Changeset[User[false]],
               4232177 => Changeset[User[true]],
               4235359 => Changeset[User[true]],
               4240309 => Changeset[User[false]],
               4240761 => Changeset[User[true]],
               4244079 => Changeset[User[false]],
               4245203 => Changeset[User[false]],
               4245371 => Changeset[User[false]],
               4245390 => Changeset[User[false]],
               4247030 => Changeset[User[false]],
               4247780 => Changeset[User[false]],
               4248199 => Changeset[User[false]],
               4250165 => Changeset[User[false]],
               4250464 => Changeset[User[false]],
               4250871 => Changeset[User[false]],
               4253424 => Changeset[User[false]],
               4253541 => Changeset[User[false]],
               4253977 => Changeset[User[false]],
               4254094 => Changeset[User[false]],
               4254597 => Changeset[User[false]],
               4258380 => Changeset[User[true]],
               4260917 => Changeset[User[true]],
               4262159 => Changeset[User[false]],
               4263305 => Changeset[User[true]],
               4264005 => Changeset[User[false]],
               4269342 => Changeset[User[true]],
               4275035 => Changeset[User[true]],
               4275816 => Changeset[User[true]],
               4278434 => Changeset[User[false]],
               4288211 => Changeset[User[false]],
               4289641 => Changeset[User[true]],
               4291131 => Changeset[User[true]],
               4300508 => Changeset[User[true]],
               4300569 => Changeset[User[true]],
               4304468 => Changeset[User[false]],
               4304478 => Changeset[User[false]],
               4304484 => Changeset[User[false]],
               4304500 => Changeset[User[false]],
               4306764 => Changeset[User[false]],
               4307325 => Changeset[User[false]],
               4308008 => Changeset[User[false]],
               4309152 => Changeset[User[false]],
               4309441 => Changeset[User[false]],
               4309442 => Changeset[User[false]],
               4310277 => Changeset[User[false]],
               4311750 => Changeset[User[true]],
               4312260 => Changeset[User[false]],
               4312936 => Changeset[User[false]],
               4313011 => Changeset[User[false]],
               4313608 => Changeset[User[false]],
               4313610 => Changeset[User[false]],
               4315899 => Changeset[User[false]],
               4318130 => Changeset[User[false]],
               4318132 => Changeset[User[false]],
               4318136 => Changeset[User[false]],
               4318254 => Changeset[User[false]],
               4318327 => Changeset[User[true]],
               4325267 => Changeset[User[true]],
               4326384 => Changeset[User[true]],
               4329662 => Changeset[User[true]],
               4332650 => Changeset[User[true]],
               4335476 => Changeset[User[false]],
               4340122 => Changeset[User[true]],
               4342727 => Changeset[User[false]],
               4342994 => Changeset[User[false]],
               4342995 => Changeset[User[false]],
               4342997 => Changeset[User[false]],
               4347131 => Changeset[User[true]],
               4350083 => Changeset[User[false]],
               4350084 => Changeset[User[false]],
               4350085 => Changeset[User[false]],
               4350086 => Changeset[User[false]],
               4350462 => Changeset[User[true]],
               4351256 => Changeset[User[true]],
               4351802 => Changeset[User[false]],
               4351803 => Changeset[User[false]],
               4351805 => Changeset[User[false]],
               4351806 => Changeset[User[false]],
               4353576 => Changeset[User[false]],
               4353646 => Changeset[User[false]],
               4353711 => Changeset[User[false]],
               4353714 => Changeset[User[false]],
               4355544 => Changeset[User[false]],
               4355840 => Changeset[User[false]],
               4355871 => Changeset[User[false]],
               4355872 => Changeset[User[false]],
               4358582 => Changeset[User[false]],
               4359595 => Changeset[User[true]],
               4368338 => Changeset[User[false]],
               4373731 => Changeset[User[false]],
               4400771 => Changeset[User[false]],
               4402440 => Changeset[User[false]],
               4405070 => Changeset[User[false]],
               4409074 => Changeset[User[true]],
               4410348 => Changeset[User[false]],
               4424518 => Changeset[User[true]],
               4427916 => Changeset[User[false]],
               4430272 => Changeset[User[true]],
               4438437 => Changeset[User[false]],
               4445177 => Changeset[User[false]],
               4446312 => Changeset[User[true]],
               4450170 => Changeset[User[false]],
               4450952 => Changeset[User[false]],
               4456234 => Changeset[User[false]],
               4456828 => Changeset[User[true]],
               4460842 => Changeset[User[false]],
               4464575 => Changeset[User[true]],
               4464913 => Changeset[User[true]],
               4471420 => Changeset[User[false]],
               4474489 => Changeset[User[true]],
               4475270 => Changeset[User[true]],
               4477250 => Changeset[User[false]],
               4482777 => Changeset[User[false]],
               4483648 => Changeset[User[true]],
               4489624 => Changeset[User[false]],
               4490951 => Changeset[User[true]],
               4495436 => Changeset[User[false]],
               4501958 => Changeset[User[false]],
               4502478 => Changeset[User[true]],
               4511808 => Changeset[User[false]],
               4518539 => Changeset[User[true]],
               4519453 => Changeset[User[false]],
               4520306 => Changeset[User[false]],
               4520851 => Changeset[User[false]],
               4521537 => Changeset[User[false]],
               4522341 => Changeset[User[false]],
               4522738 => Changeset[User[false]],
               4523755 => Changeset[User[false]],
               4525110 => Changeset[User[false]],
               4525531 => Changeset[User[false]],
               4526338 => Changeset[User[false]],
               4527004 => Changeset[User[false]],
               4527300 => Changeset[User[false]],
               4528885 => Changeset[User[false]],
               4529837 => Changeset[User[true]],
               4530716 => Changeset[User[false]],
               4531617 => Changeset[User[false]],
               4534388 => Changeset[User[false]],
               4536224 => Changeset[User[false]],
               4536228 => Changeset[User[true]],
               4536668 => Changeset[User[false]],
               4537028 => Changeset[User[false]],
               4537358 => Changeset[User[false]],
               4537572 => Changeset[User[false]],
               4537749 => Changeset[User[false]],
               4537790 => Changeset[User[false]],
               4539719 => Changeset[User[false]],
               4545728 => Changeset[User[false]],
               4545779 => Changeset[User[false]],
               4545926 => Changeset[User[false]],
               4546095 => Changeset[User[false]],
               4546193 => Changeset[User[false]],
               4546286 => Changeset[User[false]],
               4547059 => Changeset[User[false]],
               4547947 => Changeset[User[false]],
               4548978 => Changeset[User[false]],
               4549010 => Changeset[User[true]],
               4549506 => Changeset[User[false]],
               4550032 => Changeset[User[false]],
               4550669 => Changeset[User[false]],
               4551581 => Changeset[User[false]],
               4553027 => Changeset[User[false]],
               4554112 => Changeset[User[false]],
               4554820 => Changeset[User[false]],
               4555508 => Changeset[User[false]],
               4555849 => Changeset[User[false]],
               4556218 => Changeset[User[false]],
               4557050 => Changeset[User[false]],
               4557627 => Changeset[User[false]],
               4559171 => Changeset[User[false]],
               4559540 => Changeset[User[false]],
               4560330 => Changeset[User[false]],
               4561654 => Changeset[User[false]],
               4562251 => Changeset[User[false]],
               4562584 => Changeset[User[false]],
               4562742 => Changeset[User[false]],
               4562857 => Changeset[User[false]],
               4563220 => Changeset[User[false]],
               4564689 => Changeset[User[false]],
               4565293 => Changeset[User[false]],
               4566045 => Changeset[User[false]],
               4567165 => Changeset[User[false]],
               4567287 => Changeset[User[false]],
               4568598 => Changeset[User[false]],
               4568979 => Changeset[User[false]],
               4569480 => Changeset[User[false]],
               4569855 => Changeset[User[false]],
               4570489 => Changeset[User[false]],
               4570978 => Changeset[User[false]],
               4571173 => Changeset[User[false]],
               4571269 => Changeset[User[false]],
               4571393 => Changeset[User[false]],
               4571544 => Changeset[User[false]],
               4571755 => Changeset[User[false]],
               4571796 => Changeset[User[false]],
               4572379 => Changeset[User[false]],
               4572996 => Changeset[User[false]],
               4573816 => Changeset[User[false]],
               4574656 => Changeset[User[false]],
               4577014 => Changeset[User[false]],
               4593025 => Changeset[User[false]],
               4597901 => Changeset[User[false]],
               4600604 => Changeset[User[true]],
               4601420 => Changeset[User[true]],
               4601543 => Changeset[User[true]],
               4613402 => Changeset[User[true]],
               4615712 => Changeset[User[true]],
               4618389 => Changeset[User[false]],
               4622717 => Changeset[User[true]],
               4622976 => Changeset[User[true]],
               4633200 => Changeset[User[true]],
               4636239 => Changeset[User[false]],
               4643733 => Changeset[User[false]],
               4643984 => Changeset[User[true]],
               4649490 => Changeset[User[false]],
               4652275 => Changeset[User[false]],
               4659475 => Changeset[User[false]],
               4659476 => Changeset[User[false]],
               4660048 => Changeset[User[false]],
               4662429 => Changeset[User[false]],
               4663705 => Changeset[User[false]],
               4665381 => Changeset[User[false]],
               4669676 => Changeset[User[false]],
               4675591 => Changeset[User[false]],
               4676361 => Changeset[User[false]],
               4681184 => Changeset[User[false]],
               4685809 => Changeset[User[true]],
               4685984 => Changeset[User[false]],
               4694120 => Changeset[User[true]],
               4694680 => Changeset[User[true]],
               4699444 => Changeset[User[false]],
               4701073 => Changeset[User[false]],
               4701074 => Changeset[User[false]],
               4703416 => Changeset[User[true]],
               4704784 => Changeset[User[false]],
               4705519 => Changeset[User[true]],
               4714199 => Changeset[User[false]],
               4714375 => Changeset[User[false]],
               4715465 => Changeset[User[false]],
               4719559 => Changeset[User[false]],
               4720770 => Changeset[User[false]],
               4725716 => Changeset[User[false]],
               4743674 => Changeset[User[false]],
               4743938 => Changeset[User[true]],
               4750855 => Changeset[User[false]],
               4751312 => Changeset[User[false]],
               4753288 => Changeset[User[false]],
               4756579 => Changeset[User[false]],
               4757013 => Changeset[User[false]],
               4759465 => Changeset[User[false]],
               4761716 => Changeset[User[true]],
               4763142 => Changeset[User[true]],
               4767676 => Changeset[User[false]],
               4773483 => Changeset[User[false]],
               4775032 => Changeset[User[true]],
               4779007 => Changeset[User[false]],
               4779256 => Changeset[User[false]],
               4780691 => Changeset[User[true]],
               4783868 => Changeset[User[true]],
               4788021 => Changeset[User[true]],
               4789958 => Changeset[User[true]],
               4794245 => Changeset[User[true]],
               4797099 => Changeset[User[true]],
               4801602 => Changeset[User[true]],
               4803146 => Changeset[User[true]],
               4804793 => Changeset[User[true]],
               4806183 => Changeset[User[true]],
               4806891 => Changeset[User[true]],
               4811788 => Changeset[User[true]],
               4818569 => Changeset[User[false]],
               4819952 => Changeset[User[false]],
               4826613 => Changeset[User[true]],
               4828664 => Changeset[User[false]],
               4829089 => Changeset[User[false]],
               4830208 => Changeset[User[false]],
               4830706 => Changeset[User[false]],
               4831225 => Changeset[User[false]],
               4831746 => Changeset[User[false]],
               4832804 => Changeset[User[false]],
               4833492 => Changeset[User[false]],
               4848503 => Changeset[User[false]],
               4850702 => Changeset[User[true]],
               4864543 => Changeset[User[true]],
               4872051 => Changeset[User[false]],
               4872568 => Changeset[User[true]],
               4886028 => Changeset[User[false]],
               4901253 => Changeset[User[false]],
               4908590 => Changeset[User[false]],
               4912556 => Changeset[User[false]],
               4914042 => Changeset[User[true]],
               4917002 => Changeset[User[false]],
               4918991 => Changeset[User[true]],
               4920354 => Changeset[User[false]],
               4924009 => Changeset[User[true]],
               4928508 => Changeset[User[true]],
               4938220 => Changeset[User[false]],
               4938761 => Changeset[User[false]],
               4941480 => Changeset[User[true]],
               4950649 => Changeset[User[true]],
               4952117 => Changeset[User[false]],
               4952741 => Changeset[User[false]],
               4954924 => Changeset[User[true]],
               4955252 => Changeset[User[true]],
               4961186 => Changeset[User[true]],
               4964229 => Changeset[User[true]],
               4969063 => Changeset[User[false]],
               4969268 => Changeset[User[true]],
               4969375 => Changeset[User[false]],
               4969405 => Changeset[User[false]],
               4974058 => Changeset[User[false]],
               4974715 => Changeset[User[false]],
               4981864 => Changeset[User[false]],
               4983802 => Changeset[User[false]],
               4986365 => Changeset[User[false]],
               4995799 => Changeset[User[false]],
               5003611 => Changeset[User[true]],
               5005674 => Changeset[User[true]],
               5020047 => Changeset[User[false]],
               5020973 => Changeset[User[true]],
               5023111 => Changeset[User[false]],
               5023506 => Changeset[User[false]],
               5023611 => Changeset[User[false]],
               5024547 => Changeset[User[false]],
               5025505 => Changeset[User[false]],
               5026535 => Changeset[User[false]],
               5027210 => Changeset[User[false]],
               5027299 => Changeset[User[false]],
               5027691 => Changeset[User[false]],
               5030091 => Changeset[User[false]],
               5035034 => Changeset[User[false]],
               5040932 => Changeset[User[false]],
               5044977 => Changeset[User[true]],
               5051654 => Changeset[User[true]],
               5055521 => Changeset[User[false]],
               5060628 => Changeset[User[true]],
               5061517 => Changeset[User[true]],
               5063332 => Changeset[User[true]],
               5067409 => Changeset[User[false]],
               5072291 => Changeset[User[false]],
               5073437 => Changeset[User[true]],
               5082070 => Changeset[User[false]],
               5086563 => Changeset[User[true]],
               5087890 => Changeset[User[true]],
               5088572 => Changeset[User[false]],
               5092111 => Changeset[User[false]],
               5095202 => Changeset[User[true]],
               5095250 => Changeset[User[true]],
               5097321 => Changeset[User[true]],
               5098217 => Changeset[User[true]],
               5100875 => Changeset[User[true]],
               5101150 => Changeset[User[true]],
               5101272 => Changeset[User[true]],
               5103283 => Changeset[User[true]],
               5103542 => Changeset[User[true]],
               5111884 => Changeset[User[true]],
               5112007 => Changeset[User[true]],
               5112591 => Changeset[User[true]],
               5112725 => Changeset[User[true]],
               5113168 => Changeset[User[true]],
               5113310 => Changeset[User[true]],
               5113397 => Changeset[User[true]],
               5114148 => Changeset[User[true]],
               5118641 => Changeset[User[true]],
               5119104 => Changeset[User[true]],
               5119964 => Changeset[User[true]],
               5122354 => Changeset[User[true]],
               5129221 => Changeset[User[true]],
               5134061 => Changeset[User[true]],
               5134595 => Changeset[User[true]],
               5137225 => Changeset[User[true]],
               5139095 => Changeset[User[true]],
               5139101 => Changeset[User[true]],
               5139103 => Changeset[User[true]],
               5139169 => Changeset[User[true]],
               5139171 => Changeset[User[true]],
               5141999 => Changeset[User[true]],
               5142381 => Changeset[User[true]],
               5142385 => Changeset[User[true]],
               5143544 => Changeset[User[false]],
               5147623 => Changeset[User[true]],
               5147679 => Changeset[User[false]],
               5147745 => Changeset[User[true]],
               5152225 => Changeset[User[false]],
               5156250 => Changeset[User[false]],
               5156396 => Changeset[User[true]],
               5156483 => Changeset[User[true]],
               5160461 => Changeset[User[true]],
               5161069 => Changeset[User[false]],
               5163091 => Changeset[User[false]],
               5163099 => Changeset[User[true]],
               5168688 => Changeset[User[false]],
               5169235 => Changeset[User[true]],
               5170739 => Changeset[User[false]],
               5171128 => Changeset[User[false]],
               5174347 => Changeset[User[true]],
               5176956 => Changeset[User[false]],
               5178025 => Changeset[User[false]],
               5178303 => Changeset[User[false]],
               5178515 => Changeset[User[false]],
               5178773 => Changeset[User[false]],
               5178966 => Changeset[User[false]],
               5179187 => Changeset[User[false]],
               5181017 => Changeset[User[false]],
               5181667 => Changeset[User[true]],
               5181671 => Changeset[User[false]],
               5182074 => Changeset[User[false]],
               5183817 => Changeset[User[true]],
               5194457 => Changeset[User[false]],
               5196468 => Changeset[User[true]],
               5196485 => Changeset[User[true]],
               5196503 => Changeset[User[false]],
               5196900 => Changeset[User[false]],
               5197357 => Changeset[User[false]],
               5197929 => Changeset[User[false]],
               5199756 => Changeset[User[true]],
               5200072 => Changeset[User[false]],
               5200761 => Changeset[User[true]],
               5201605 => Changeset[User[true]],
               5206778 => Changeset[User[true]],
               5207669 => Changeset[User[false]],
               5207902 => Changeset[User[true]],
               5208224 => Changeset[User[false]],
               5208451 => Changeset[User[true]],
               5208742 => Changeset[User[false]],
               5209147 => Changeset[User[false]],
               5211063 => Changeset[User[false]],
               5213051 => Changeset[User[false]],
               5213370 => Changeset[User[false]],
               5213519 => Changeset[User[false]],
               5214260 => Changeset[User[true]],
               5215437 => Changeset[User[true]],
               5216290 => Changeset[User[true]],
               5216803 => Changeset[User[true]],
               5217002 => Changeset[User[true]],
               5217323 => Changeset[User[true]],
               5225091 => Changeset[User[true]],
               5225238 => Changeset[User[true]],
               5225409 => Changeset[User[true]],
               5227595 => Changeset[User[true]],
               5229378 => Changeset[User[true]],
               5232880 => Changeset[User[true]],
               5241795 => Changeset[User[true]],
               5248630 => Changeset[User[true]],
               5251741 => Changeset[User[true]],
               5256784 => Changeset[User[false]],
               5260163 => Changeset[User[true]],
               5260176 => Changeset[User[true]],
               5272044 => Changeset[User[true]],
               5276827 => Changeset[User[true]],
               5277945 => Changeset[User[true]],
               5279186 => Changeset[User[true]],
               5280088 => Changeset[User[true]],
               5284657 => Changeset[User[true]],
               5284686 => Changeset[User[true]],
               5288694 => Changeset[User[false]],
               5290320 => Changeset[User[true]],
               5292865 => Changeset[User[true]],
               5294152 => Changeset[User[true]],
               5294838 => Changeset[User[true]],
               5296029 => Changeset[User[true]],
               5297377 => Changeset[User[true]],
               5318492 => Changeset[User[true]],
               5318547 => Changeset[User[true]],
               5319098 => Changeset[User[true]],
               5319871 => Changeset[User[true]],
               5320311 => Changeset[User[false]],
               5320381 => Changeset[User[true]],
               5321091 => Changeset[User[false]],
               5326154 => Changeset[User[true]],
               5326771 => Changeset[User[true]],
               5336516 => Changeset[User[true]],
               5338157 => Changeset[User[true]],
               5339981 => Changeset[User[true]],
               5355879 => Changeset[User[false]],
               5357333 => Changeset[User[true]],
               5359515 => Changeset[User[true]],
               5361201 => Changeset[User[false]],
               5369028 => Changeset[User[true]],
               5383391 => Changeset[User[true]],
               5383858 => Changeset[User[true]],
               5386072 => Changeset[User[true]],
               5387381 => Changeset[User[true]],
               5393785 => Changeset[User[true]],
               5397311 => Changeset[User[false]],
               5402456 => Changeset[User[true]],
               5406610 => Changeset[User[true]],
               5415738 => Changeset[User[true]],
               5423923 => Changeset[User[true]],
               5424919 => Changeset[User[true]],
               5438973 => Changeset[User[false]],
               5439851 => Changeset[User[true]],
               5442471 => Changeset[User[false]],
               5449118 => Changeset[User[false]],
               5450150 => Changeset[User[false]],
               5458499 => Changeset[User[false]],
               5468032 => Changeset[User[false]],
               5484579 => Changeset[User[true]],
               5492027 => Changeset[User[true]],
               5493286 => Changeset[User[true]],
               5497121 => Changeset[User[true]],
               5506842 => Changeset[User[true]],
               5511962 => Changeset[User[false]],
               5514109 => Changeset[User[true]],
               5523894 => Changeset[User[false]],
               5524718 => Changeset[User[false]],
               5528434 => Changeset[User[false]],
               5529830 => Changeset[User[true]],
               5531117 => Changeset[User[true]],
               5532197 => Changeset[User[false]],
               5532712 => Changeset[User[false]],
               5535106 => Changeset[User[false]],
               5535750 => Changeset[User[false]],
               5539394 => Changeset[User[false]],
               5539875 => Changeset[User[false]],
               5545771 => Changeset[User[true]],
               5553567 => Changeset[User[true]],
               5562587 => Changeset[User[true]],
               5567091 => Changeset[User[true]],
               5576744 => Changeset[User[true]],
               5583707 => Changeset[User[true]],
               5586746 => Changeset[User[false]],
               5591089 => Changeset[User[false]],
               5596647 => Changeset[User[false]],
               5599977 => Changeset[User[false]],
               5609342 => Changeset[User[false]],
               5615259 => Changeset[User[true]],
               5622180 => Changeset[User[false]],
               5622499 => Changeset[User[true]],
               5623114 => Changeset[User[true]],
               5623458 => Changeset[User[true]],
               5629984 => Changeset[User[false]],
               5636515 => Changeset[User[true]],
               5637369 => Changeset[User[false]],
               5641268 => Changeset[User[false]],
               5643561 => Changeset[User[true]],
               5645748 => Changeset[User[false]],
               5647295 => Changeset[User[true]],
               5654513 => Changeset[User[true]],
               5659180 => Changeset[User[true]],
               5661845 => Changeset[User[true]],
               5664949 => Changeset[User[true]],
               5665185 => Changeset[User[true]],
               5674862 => Changeset[User[false]],
               5676349 => Changeset[User[true]],
               5683015 => Changeset[User[true]],
               5684935 => Changeset[User[true]],
               5694663 => Changeset[User[true]],
               5729413 => Changeset[User[true]],
               5743819 => Changeset[User[true]],
               5745827 => Changeset[User[true]],
               5746218 => Changeset[User[true]],
               5746375 => Changeset[User[false]],
               5751347 => Changeset[User[true]],
               5757725 => Changeset[User[true]],
               5775296 => Changeset[User[true]],
               5784429 => Changeset[User[true]],
               5784760 => Changeset[User[true]],
               5787574 => Changeset[User[false]],
               5788832 => Changeset[User[true]],
               5803574 => Changeset[User[true]],
               5839378 => Changeset[User[true]],
               5842234 => Changeset[User[true]],
               5853749 => Changeset[User[true]],
               5862803 => Changeset[User[true]],
               5863159 => Changeset[User[true]],
               5866108 => Changeset[User[false]],
               5878970 => Changeset[User[true]],
               5885917 => Changeset[User[false]],
               5914586 => Changeset[User[true]],
               5928977 => Changeset[User[true]],
               5943896 => Changeset[User[false]],
               5961560 => Changeset[User[true]],
               5962930 => Changeset[User[true]],
               5966495 => Changeset[User[true]],
               5982710 => Changeset[User[true]],
               5991077 => Changeset[User[true]],
               6004390 => Changeset[User[true]],
               6008146 => Changeset[User[true]],
               6014368 => Changeset[User[true]],
               6017845 => Changeset[User[true]],
               6019047 => Changeset[User[true]],
               6025019 => Changeset[User[true]],
               6034624 => Changeset[User[false]],
               6035044 => Changeset[User[false]],
               6042795 => Changeset[User[false]],
               6045294 => Changeset[User[false]],
               6046380 => Changeset[User[false]],
               6046833 => Changeset[User[false]],
               6046884 => Changeset[User[false]],
               6047140 => Changeset[User[false]],
               6047874 => Changeset[User[false]],
               6051034 => Changeset[User[true]],
               6052293 => Changeset[User[true]],
               6054666 => Changeset[User[true]],
               6059272 => Changeset[User[true]],
               6060384 => Changeset[User[true]],
               6060527 => Changeset[User[false]],
               6061537 => Changeset[User[false]],
               6062012 => Changeset[User[false]],
               6062110 => Changeset[User[false]],
               6062166 => Changeset[User[false]],
               6062963 => Changeset[User[false]],
               6062982 => Changeset[User[false]],
               6063269 => Changeset[User[false]],
               6063317 => Changeset[User[false]],
               6063620 => Changeset[User[false]],
               6064210 => Changeset[User[false]],
               6064981 => Changeset[User[false]],
               6066201 => Changeset[User[false]],
               6072931 => Changeset[User[true]],
               6077371 => Changeset[User[false]],
               6079930 => Changeset[User[false]],
               6081480 => Changeset[User[false]],
               6088090 => Changeset[User[false]],
               6103849 => Changeset[User[true]],
               6116613 => Changeset[User[false]],
               6120917 => Changeset[User[false]],
               6130419 => Changeset[User[true]],
               6139463 => Changeset[User[true]],
               6141205 => Changeset[User[true]],
               6141510 => Changeset[User[false]],
               6142529 => Changeset[User[true]],
               6147615 => Changeset[User[true]],
               6149246 => Changeset[User[false]],
               6151295 => Changeset[User[false]],
               6152628 => Changeset[User[false]],
               6152849 => Changeset[User[false]],
               6153364 => Changeset[User[false]],
               6156959 => Changeset[User[false]],
               6164119 => Changeset[User[false]],
               6173762 => Changeset[User[true]],
               6214123 => Changeset[User[true]],
               6225397 => Changeset[User[false]],
               6234725 => Changeset[User[true]],
               6235312 => Changeset[User[true]],
               6237550 => Changeset[User[true]],
               6240673 => Changeset[User[true]],
               6241208 => Changeset[User[true]],
               6260533 => Changeset[User[false]],
               6260985 => Changeset[User[false]],
               6303448 => Changeset[User[true]],
               6303911 => Changeset[User[true]],
               6305948 => Changeset[User[true]],
               6306737 => Changeset[User[true]],
               6315034 => Changeset[User[true]],
               6319490 => Changeset[User[false]],
               6319684 => Changeset[User[false]],
               6322404 => Changeset[User[true]],
               6336114 => Changeset[User[true]],
               6341495 => Changeset[User[true]],
               6343892 => Changeset[User[true]],
               6345356 => Changeset[User[true]],
               6345959 => Changeset[User[true]],
               6346566 => Changeset[User[true]],
               6354586 => Changeset[User[true]],
               6358183 => Changeset[User[true]],
               6359496 => Changeset[User[true]],
               6360424 => Changeset[User[true]],
               6369793 => Changeset[User[true]],
               6383921 => Changeset[User[true]],
               6384471 => Changeset[User[false]],
               6385326 => Changeset[User[false]],
               6387052 => Changeset[User[false]],
               6388380 => Changeset[User[false]],
               6389752 => Changeset[User[true]],
               6401629 => Changeset[User[true]],
               6404010 => Changeset[User[true]],
               6408591 => Changeset[User[true]],
               6422776 => Changeset[User[true]],
               6428552 => Changeset[User[true]],
               6433334 => Changeset[User[false]],
               6436522 => Changeset[User[true]],
               6437248 => Changeset[User[false]],
               6437685 => Changeset[User[true]],
               6440804 => Changeset[User[false]],
               6444967 => Changeset[User[false]],
               6445284 => Changeset[User[false]],
               6446141 => Changeset[User[false]],
               6446340 => Changeset[User[false]],
               6447193 => Changeset[User[false]],
               6448497 => Changeset[User[true]],
               6466647 => Changeset[User[true]],
               6467197 => Changeset[User[false]],
               6467701 => Changeset[User[true]],
               6468660 => Changeset[User[false]],
               6470300 => Changeset[User[false]],
               6471203 => Changeset[User[false]],
               6471854 => Changeset[User[true]],
               6471890 => Changeset[User[false]],
               6473536 => Changeset[User[false]],
               6473821 => Changeset[User[true]],
               6474857 => Changeset[User[false]],
               6475044 => Changeset[User[false]],
               6475252 => Changeset[User[false]],
               6475573 => Changeset[User[false]],
               6476298 => Changeset[User[true]],
               6476427 => Changeset[User[false]],
               6476774 => Changeset[User[false]],
               6477255 => Changeset[User[true]],
               6481464 => Changeset[User[false]],
               6484527 => Changeset[User[false]],
               6485000 => Changeset[User[false]],
               6486309 => Changeset[User[false]],
               6486327 => Changeset[User[true]],
               6492098 => Changeset[User[false]],
               6492590 => Changeset[User[true]],
               6493056 => Changeset[User[false]],
               6493936 => Changeset[User[false]],
               6499176 => Changeset[User[false]],
               6504871 => Changeset[User[true]],
               6507442 => Changeset[User[true]],
               6508173 => Changeset[User[false]],
               6508365 => Changeset[User[true]],
               6520868 => Changeset[User[true]],
               6522397 => Changeset[User[true]],
               6528115 => Changeset[User[true]],
               6551676 => Changeset[User[false]],
               6570369 => Changeset[User[true]],
               6571072 => Changeset[User[true]],
               6571117 => Changeset[User[true]],
               6574428 => Changeset[User[true]],
               6583044 => Changeset[User[true]],
               6584308 => Changeset[User[true]],
               6585184 => Changeset[User[true]],
               6592626 => Changeset[User[false]],
               6596236 => Changeset[User[true]],
               6628785 => Changeset[User[true]],
               6646677 => Changeset[User[true]],
               6670522 => Changeset[User[true]],
               6682653 => Changeset[User[true]],
               6682671 => Changeset[User[true]],
               6682702 => Changeset[User[true]],
               6682747 => Changeset[User[true]],
               6682943 => Changeset[User[true]],
               6700868 => Changeset[User[true]],
               6702189 => Changeset[User[true]],
               6705450 => Changeset[User[true]],
               6716973 => Changeset[User[false]],
               6718947 => Changeset[User[false]],
               6721432 => Changeset[User[true]],
               6728833 => Changeset[User[true]],
               6734720 => Changeset[User[true]],
               6735696 => Changeset[User[true]],
               6739871 => Changeset[User[true]],
               6749583 => Changeset[User[true]],
               6749589 => Changeset[User[true]],
               6751605 => Changeset[User[false]],
               6751735 => Changeset[User[false]],
               6752359 => Changeset[User[false]],
               6752551 => Changeset[User[false]],
               6761006 => Changeset[User[false]],
               6770531 => Changeset[User[false]],
               6770878 => Changeset[User[true]],
               6779346 => Changeset[User[true]],
               6787083 => Changeset[User[true]],
               6805210 => Changeset[User[true]],
               6805495 => Changeset[User[true]],
               6810311 => Changeset[User[false]],
               6826438 => Changeset[User[true]],
               6835754 => Changeset[User[false]],
               6837317 => Changeset[User[true]],
               6845879 => Changeset[User[true]],
               6845910 => Changeset[User[true]],
               6859138 => Changeset[User[true]],
               6859524 => Changeset[User[true]],
               6859657 => Changeset[User[false]],
               6866880 => Changeset[User[true]],
               6876246 => Changeset[User[true]],
               6881994 => Changeset[User[true]],
               6896157 => Changeset[User[true]],
               6912245 => Changeset[User[false]],
               6915573 => Changeset[User[true]],
               6921212 => Changeset[User[true]],
               6922466 => Changeset[User[true]],
               6922848 => Changeset[User[false]],
               6923590 => Changeset[User[true]],
               6948926 => Changeset[User[false]],
               6950971 => Changeset[User[true]],
               6956448 => Changeset[User[false]],
               6961892 => Changeset[User[false]],
               6974202 => Changeset[User[true]],
               6983821 => Changeset[User[true]],
               7004608 => Changeset[User[false]],
               7006237 => Changeset[User[true]],
               7006863 => Changeset[User[true]],
               7014681 => Changeset[User[true]],
               7015903 => Changeset[User[true]],
               7018099 => Changeset[User[true]],
               7019002 => Changeset[User[true]],
               7019352 => Changeset[User[false]],
               7021015 => Changeset[User[true]],
               7023842 => Changeset[User[true]],
               7025791 => Changeset[User[true]],
               7028617 => Changeset[User[true]],
               7035138 => Changeset[User[true]],
               7047364 => Changeset[User[false]],
               7048708 => Changeset[User[false]],
               7057582 => Changeset[User[true]],
               7069644 => Changeset[User[true]],
               7076900 => Changeset[User[true]],
               7077593 => Changeset[User[true]],
               7078526 => Changeset[User[false]],
               7078534 => Changeset[User[true]],
               7081024 => Changeset[User[true]],
               7081667 => Changeset[User[true]],
               7090507 => Changeset[User[false]],
               7097495 => Changeset[User[false]],
               7097706 => Changeset[User[true]],
               7099284 => Changeset[User[true]],
               7107565 => Changeset[User[true]],
               7108715 => Changeset[User[true]],
               7114542 => Changeset[User[true]],
               7115959 => Changeset[User[true]],
               7127325 => Changeset[User[true]],
               7136895 => Changeset[User[false]],
               7137969 => Changeset[User[true]],
               7151066 => Changeset[User[false]],
               7151471 => Changeset[User[false]],
               7157857 => Changeset[User[false]],
               7170986 => Changeset[User[true]],
               7173632 => Changeset[User[false]],
               7178490 => Changeset[User[true]],
               7185164 => Changeset[User[false]],
               7187179 => Changeset[User[true]],
               7191855 => Changeset[User[true]],
               7196425 => Changeset[User[true]],
               7199135 => Changeset[User[false]],
               7203774 => Changeset[User[true]],
               7205219 => Changeset[User[false]],
               7206752 => Changeset[User[false]],
               7213256 => Changeset[User[true]],
               7215161 => Changeset[User[false]],
               7216983 => Changeset[User[true]],
               7229766 => Changeset[User[true]],
               7233264 => Changeset[User[true]],
               7236470 => Changeset[User[true]],
               7236837 => Changeset[User[true]],
               7243039 => Changeset[User[true]],
               7244578 => Changeset[User[true]],
               7270405 => Changeset[User[true]],
               7271021 => Changeset[User[true]],
               7291635 => Changeset[User[true]],
               7293401 => Changeset[User[true]],
               7298052 => Changeset[User[false]],
               7298231 => Changeset[User[true]],
               7299220 => Changeset[User[true]],
               7317349 => Changeset[User[true]],
               7328146 => Changeset[User[false]],
               7344071 => Changeset[User[true]],
               7346089 => Changeset[User[true]],
               7346511 => Changeset[User[true]],
               7357961 => Changeset[User[true]],
               7367056 => Changeset[User[false]],
               7370122 => Changeset[User[true]],
               7373341 => Changeset[User[true]],
               7377616 => Changeset[User[true]],
               7406368 => Changeset[User[false]],
               7406888 => Changeset[User[false]],
               7407600 => Changeset[User[false]],
               7426168 => Changeset[User[false]],
               7446025 => Changeset[User[true]],
               7459409 => Changeset[User[true]],
               7469485 => Changeset[User[true]],
               7472444 => Changeset[User[true]],
               7474396 => Changeset[User[true]],
               7481344 => Changeset[User[true]],
               7493733 => Changeset[User[false]],
               7500227 => Changeset[User[true]],
               7512280 => Changeset[User[false]],
               7513293 => Changeset[User[true]],
               7521567 => Changeset[User[true]],
               7534032 => Changeset[User[false]],
               7537441 => Changeset[User[false]],
               7544069 => Changeset[User[true]],
               7544605 => Changeset[User[false]],
               7552817 => Changeset[User[true]],
               7567859 => Changeset[User[true]],
               7584033 => Changeset[User[true]],
               7595927 => Changeset[User[true]],
               7598389 => Changeset[User[true]],
               7600367 => Changeset[User[true]],
               7600885 => Changeset[User[true]],
               7615718 => Changeset[User[true]],
               7623545 => Changeset[User[true]],
               7627113 => Changeset[User[true]],
               7639203 => Changeset[User[true]],
               7641852 => Changeset[User[true]],
               7645827 => Changeset[User[false]],
               7702237 => Changeset[User[true]],
               7702703 => Changeset[User[false]],
               7714158 => Changeset[User[true]],
               7725564 => Changeset[User[true]],
               7742172 => Changeset[User[false]],
               7753798 => Changeset[User[true]],
               7763438 => Changeset[User[true]],
               7802833 => Changeset[User[true]],
               7809843 => Changeset[User[true]],
               7817238 => Changeset[User[false]],
               7819162 => Changeset[User[true]],
               7844570 => Changeset[User[true]],
               7850751 => Changeset[User[true]],
               7850781 => Changeset[User[true]],
               7852069 => Changeset[User[true]],
               7868986 => Changeset[User[true]],
               7890170 => Changeset[User[true]],
               7927851 => Changeset[User[true]],
               7933760 => Changeset[User[true]],
               7936895 => Changeset[User[true]],
               7944025 => Changeset[User[true]],
               7950084 => Changeset[User[true]],
               7957495 => Changeset[User[true]],
               7962021 => Changeset[User[true]],
               7962291 => Changeset[User[true]],
               7989042 => Changeset[User[true]],
               7989151 => Changeset[User[false]],
               7997224 => Changeset[User[true]],
               8011373 => Changeset[User[false]],
               8013830 => Changeset[User[true]],
               8015241 => Changeset[User[true]],
               8017592 => Changeset[User[true]],
               8039744 => Changeset[User[true]],
               8067694 => Changeset[User[true]],
               8078667 => Changeset[User[true]],
               8078835 => Changeset[User[true]],
               8098445 => Changeset[User[true]],
               8106998 => Changeset[User[true]],
               8117808 => Changeset[User[true]],
               8135166 => Changeset[User[false]],
               8142490 => Changeset[User[true]],
               8151316 => Changeset[User[true]],
               8155813 => Changeset[User[true]],
               8163785 => Changeset[User[true]],
               8176374 => Changeset[User[true]],
               8186633 => Changeset[User[true]],
               8203850 => Changeset[User[true]],
               8203944 => Changeset[User[true]],
               8212198 => Changeset[User[true]],
               8215108 => Changeset[User[true]],
               8232391 => Changeset[User[true]],
               8241593 => Changeset[User[true]],
               8247320 => Changeset[User[true]],
               8268475 => Changeset[User[true]],
               8278323 => Changeset[User[true]],
               8313958 => Changeset[User[true]],
               8344035 => Changeset[User[true]],
               8344622 => Changeset[User[true]],
               8349762 => Changeset[User[true]],
               8355696 => Changeset[User[false]],
               8374030 => Changeset[User[true]],
               8405100 => Changeset[User[true]],
               8427658 => Changeset[User[true]],
               8427671 => Changeset[User[true]],
               8427688 => Changeset[User[true]],
               8441980 => Changeset[User[true]],
               8443930 => Changeset[User[true]],
               8458058 => Changeset[User[true]],
               8458988 => Changeset[User[true]],
               8473611 => Changeset[User[true]],
               8486724 => Changeset[User[true]],
               8494652 => Changeset[User[true]],
               8503082 => Changeset[User[true]],
               8504465 => Changeset[User[true]],
               8506300 => Changeset[User[true]],
               8516445 => Changeset[User[true]],
               8526193 => Changeset[User[true]],
               8527020 => Changeset[User[true]],
               8533115 => Changeset[User[true]],
               8548606 => Changeset[User[true]],
               8553204 => Changeset[User[true]],
               8553335 => Changeset[User[true]],
               8556513 => Changeset[User[true]],
               8557781 => Changeset[User[true]],
               8565062 => Changeset[User[true]],
               8575596 => Changeset[User[true]],
               8604923 => Changeset[User[true]],
               8613409 => Changeset[User[true]],
               8614128 => Changeset[User[true]],
               8614426 => Changeset[User[true]],
               8614568 => Changeset[User[true]],
               8614620 => Changeset[User[true]],
               8620872 => Changeset[User[true]],
               8642394 => Changeset[User[true]],
               8642527 => Changeset[User[true]],
               8644789 => Changeset[User[true]],
               8653848 => Changeset[User[true]],
               8663933 => Changeset[User[true]],
               8679860 => Changeset[User[true]],
               8720853 => Changeset[User[true]],
               8723993 => Changeset[User[true]],
               8745317 => Changeset[User[true]],
               8749392 => Changeset[User[true]],
               8764372 => Changeset[User[true]],
               8764865 => Changeset[User[true]],
               8790793 => Changeset[User[true]],
               8794948 => Changeset[User[true]],
               8811481 => Changeset[User[true]],
               8814478 => Changeset[User[true]],
               8815056 => Changeset[User[true]],
               8828976 => Changeset[User[true]],
               8849289 => Changeset[User[true]],
               8858736 => Changeset[User[true]],
               8900253 => Changeset[User[true]],
               8913252 => Changeset[User[true]],
               8923822 => Changeset[User[true]],
               8924832 => Changeset[User[true]],
               8943551 => Changeset[User[true]],
               8946120 => Changeset[User[true]],
               8946231 => Changeset[User[true]],
               8949474 => Changeset[User[true]],
               8962324 => Changeset[User[true]],
               8999429 => Changeset[User[true]],
               9008987 => Changeset[User[true]],
               9054497 => Changeset[User[true]],
               9084890 => Changeset[User[true]],
               9085054 => Changeset[User[true]],
               9090191 => Changeset[User[true]],
               9099544 => Changeset[User[true]],
               9102878 => Changeset[User[true]],
               9104898 => Changeset[User[true]],
               9107465 => Changeset[User[true]],
               9110761 => Changeset[User[true]],
               9125873 => Changeset[User[true]],
               9134153 => Changeset[User[true]],
               9152506 => Changeset[User[true]],
               9167786 => Changeset[User[true]],
               9180815 => Changeset[User[true]],
               9203490 => Changeset[User[true]],
               9217153 => Changeset[User[true]],
               9230058 => Changeset[User[true]],
               9235159 => Changeset[User[true]],
               9242398 => Changeset[User[true]],
               9250543 => Changeset[User[true]],
               9259095 => Changeset[User[true]],
               9260215 => Changeset[User[true]],
               9265340 => Changeset[User[true]],
               9276944 => Changeset[User[true]],
               9288237 => Changeset[User[true]],
               9309965 => Changeset[User[true]],
               9314034 => Changeset[User[true]],
               9328768 => Changeset[User[true]],
               9329892 => Changeset[User[true]],
               9335674 => Changeset[User[true]],
               9343011 => Changeset[User[true]],
               9347216 => Changeset[User[true]],
               9364515 => Changeset[User[true]],
               9368978 => Changeset[User[true]],
               9389147 => Changeset[User[true]],
               9389354 => Changeset[User[true]],
               9389806 => Changeset[User[true]],
               9390941 => Changeset[User[true]],
               9391588 => Changeset[User[true]],
               9394588 => Changeset[User[true]],
               9396210 => Changeset[User[true]],
               9398656 => Changeset[User[true]],
               9398825 => Changeset[User[true]],
               9399360 => Changeset[User[true]],
               9399532 => Changeset[User[true]],
               9403241 => Changeset[User[true]],
               9404475 => Changeset[User[true]],
               9406917 => Changeset[User[true]],
               9407093 => Changeset[User[true]],
               9407253 => Changeset[User[true]],
               9407308 => Changeset[User[true]],
               9407389 => Changeset[User[true]],
               9407531 => Changeset[User[true]],
               9408269 => Changeset[User[true]],
               9408627 => Changeset[User[true]],
               9410527 => Changeset[User[true]],
               9410960 => Changeset[User[true]],
               9413878 => Changeset[User[true]],
               9415755 => Changeset[User[true]],
               9415985 => Changeset[User[true]],
               9420550 => Changeset[User[true]],
               9421022 => Changeset[User[true]],
               9422013 => Changeset[User[true]],
               9424248 => Changeset[User[true]],
               9424575 => Changeset[User[true]],
               9426590 => Changeset[User[true]],
               9427299 => Changeset[User[true]],
               9431832 => Changeset[User[true]],
               9435740 => Changeset[User[true]],
               9436750 => Changeset[User[true]],
               9439727 => Changeset[User[true]],
               9440193 => Changeset[User[true]],
               9441598 => Changeset[User[true]],
               9446739 => Changeset[User[true]],
               9447450 => Changeset[User[true]],
               9451672 => Changeset[User[true]],
               9451916 => Changeset[User[true]],
               9455669 => Changeset[User[true]],
               9456079 => Changeset[User[true]],
               9456428 => Changeset[User[true]],
               9456511 => Changeset[User[true]],
               9456824 => Changeset[User[true]],
               9457353 => Changeset[User[true]],
               9464565 => Changeset[User[true]],
               9472684 => Changeset[User[true]],
               9486729 => Changeset[User[true]],
               9509598 => Changeset[User[true]],
               9510757 => Changeset[User[true]],
               9540095 => Changeset[User[true]],
               9540147 => Changeset[User[true]],
               9540155 => Changeset[User[true]],
               9548524 => Changeset[User[true]],
               9548921 => Changeset[User[true]],
               9551123 => Changeset[User[true]],
               9562673 => Changeset[User[true]],
               9565882 => Changeset[User[true]],
               9571495 => Changeset[User[true]],
               9586635 => Changeset[User[true]],
               9589760 => Changeset[User[true]],
               9599033 => Changeset[User[true]],
               9672197 => Changeset[User[true]],
               9675133 => Changeset[User[true]],
               9687720 => Changeset[User[true]],
               9697887 => Changeset[User[true]],
               9718158 => Changeset[User[true]],
               9728773 => Changeset[User[true]],
               9729458 => Changeset[User[true]],
               9739026 => Changeset[User[true]],
               9743745 => Changeset[User[true]],
               9747178 => Changeset[User[true]],
               9755049 => Changeset[User[true]],
               9768189 => Changeset[User[true]],
               9789149 => Changeset[User[true]],
               9802883 => Changeset[User[true]],
               9809974 => Changeset[User[true]],
               9828527 => Changeset[User[true]],
               9839905 => Changeset[User[true]],
               9848735 => Changeset[User[true]],
               9859878 => Changeset[User[true]],
               9890471 => Changeset[User[true]],
               9892703 => Changeset[User[true]],
               9908156 => Changeset[User[true]],
               9910555 => Changeset[User[true]],
               9921305 => Changeset[User[true]],
               9929106 => Changeset[User[true]],
               9932369 => Changeset[User[true]],
               9935835 => Changeset[User[true]],
               9937881 => Changeset[User[true]],
               9946382 => Changeset[User[true]],
               9948039 => Changeset[User[true]],
               9963249 => Changeset[User[true]],
               9984932 => Changeset[User[true]],
               9987374 => Changeset[User[true]],
               9995897 => Changeset[User[true]],
               10001880 => Changeset[User[true]],
               10012545 => Changeset[User[true]],
               10025344 => Changeset[User[true]],
               10027047 => Changeset[User[true]],
               10030758 => Changeset[User[true]],
               10030890 => Changeset[User[true]],
               10030987 => Changeset[User[true]],
               10039176 => Changeset[User[true]],
               10046567 => Changeset[User[true]],
               10053999 => Changeset[User[true]],
               10070008 => Changeset[User[true]],
               10070121 => Changeset[User[true]],
               10072095 => Changeset[User[true]],
               10089444 => Changeset[User[true]],
               10093629 => Changeset[User[true]],
               10107307 => Changeset[User[true]],
               10109020 => Changeset[User[true]],
               10113691 => Changeset[User[true]],
               10129262 => Changeset[User[true]],
               10142973 => Changeset[User[true]],
               10160711 => Changeset[User[true]],
               10176703 => Changeset[User[true]],
               10181820 => Changeset[User[true]],
               10186149 => Changeset[User[true]],
               10194980 => Changeset[User[true]],
               10201200 => Changeset[User[true]],
               10205659 => Changeset[User[true]],
               10212058 => Changeset[User[true]],
               10218974 => Changeset[User[true]],
               10229533 => Changeset[User[true]],
               10229773 => Changeset[User[true]],
               10230911 => Changeset[User[true]],
               10232236 => Changeset[User[true]],
               10236565 => Changeset[User[true]],
               10249048 => Changeset[User[true]],
               10257302 => Changeset[User[true]],
               10261613 => Changeset[User[true]],
               10269411 => Changeset[User[true]],
               10272276 => Changeset[User[true]],
               10273729 => Changeset[User[true]],
               10278818 => Changeset[User[true]],
               10284827 => Changeset[User[true]],
               10285075 => Changeset[User[true]],
               10290318 => Changeset[User[true]],
               10308176 => Changeset[User[true]],
               10317843 => Changeset[User[true]],
               10318106 => Changeset[User[true]],
               10322930 => Changeset[User[true]],
               10325445 => Changeset[User[true]],
               10326261 => Changeset[User[true]],
               10327743 => Changeset[User[true]],
               10329565 => Changeset[User[true]],
               10344896 => Changeset[User[true]],
               10345269 => Changeset[User[true]],
               10349326 => Changeset[User[true]],
               10359640 => Changeset[User[true]],
               10361909 => Changeset[User[true]],
               10365914 => Changeset[User[true]],
               10369287 => Changeset[User[true]],
               10371695 => Changeset[User[true]],
               10373333 => Changeset[User[true]],
               10377566 => Changeset[User[true]],
               10378110 => Changeset[User[true]],
               10391628 => Changeset[User[true]],
               10396281 => Changeset[User[true]],
               10397711 => Changeset[User[true]],
               10402983 => Changeset[User[true]],
               10403656 => Changeset[User[true]],
               10404959 => Changeset[User[true]],
               10406018 => Changeset[User[true]],
               10409055 => Changeset[User[true]],
               10410676 => Changeset[User[true]],
               10410959 => Changeset[User[true]],
               10422759 => Changeset[User[true]],
               10423581 => Changeset[User[true]],
               10424371 => Changeset[User[true]],
               10424702 => Changeset[User[true]],
               10431216 => Changeset[User[true]],
               10434257 => Changeset[User[true]],
               10435757 => Changeset[User[true]],
               10441288 => Changeset[User[true]],
               10442677 => Changeset[User[true]],
               10442927 => Changeset[User[true]],
               10442986 => Changeset[User[true]],
               10443754 => Changeset[User[true]],
               10446225 => Changeset[User[true]],
               10448363 => Changeset[User[true]],
               10454171 => Changeset[User[true]],
               10462174 => Changeset[User[true]],
               10467135 => Changeset[User[true]],
               10471157 => Changeset[User[true]],
               10480527 => Changeset[User[true]],
               10486716 => Changeset[User[true]],
               10486807 => Changeset[User[true]],
               10490803 => Changeset[User[true]],
               10491149 => Changeset[User[true]],
               10498845 => Changeset[User[true]],
               10498928 => Changeset[User[true]],
               10500116 => Changeset[User[true]],
               10505710 => Changeset[User[true]],
               10505831 => Changeset[User[true]],
               10509078 => Changeset[User[true]],
               10520427 => Changeset[User[true]],
               10520847 => Changeset[User[true]],
               10521510 => Changeset[User[true]],
               10538137 => Changeset[User[true]],
               10546742 => Changeset[User[true]],
               10547773 => Changeset[User[true]],
               10550517 => Changeset[User[true]],
               10551674 => Changeset[User[true]],
               10552104 => Changeset[User[true]],
               10553661 => Changeset[User[true]],
               10553986 => Changeset[User[true]],
               10555406 => Changeset[User[true]],
               10555602 => Changeset[User[true]],
               10555829 => Changeset[User[true]],
               10555925 => Changeset[User[true]],
               10556802 => Changeset[User[true]],
               10563413 => Changeset[User[true]],
               10563785 => Changeset[User[true]],
               10564959 => Changeset[User[true]],
               10565372 => Changeset[User[true]],
               10574229 => Changeset[User[true]],
               10575457 => Changeset[User[true]],
               10575852 => Changeset[User[true]],
               10577358 => Changeset[User[true]],
               10580540 => Changeset[User[true]],
               10580930 => Changeset[User[true]],
               10581487 => Changeset[User[true]],
               10584470 => Changeset[User[true]],
               10587183 => Changeset[User[true]],
               10588990 => Changeset[User[true]],
               10589386 => Changeset[User[true]],
               10590532 => Changeset[User[true]],
               10591508 => Changeset[User[true]],
               10593252 => Changeset[User[true]],
               10593912 => Changeset[User[true]],
               10599394 => Changeset[User[true]],
               10599407 => Changeset[User[true]],
               10599805 => Changeset[User[true]],
               10602275 => Changeset[User[true]],
               10603829 => Changeset[User[true]],
               10608777 => Changeset[User[true]],
               10609060 => Changeset[User[true]],
               10609183 => Changeset[User[true]],
               10609209 => Changeset[User[true]],
               10610111 => Changeset[User[true]],
               10611191 => Changeset[User[true]],
               10612888 => Changeset[User[true]],
               10617032 => Changeset[User[true]],
               10617539 => Changeset[User[true]],
               10618932 => Changeset[User[true]],
               10634190 => Changeset[User[true]],
               10636279 => Changeset[User[true]],
               10639118 => Changeset[User[true]],
               10645528 => Changeset[User[true]],
               10648961 => Changeset[User[true]],
               10652177 => Changeset[User[true]],
               10652410 => Changeset[User[true]],
               10658927 => Changeset[User[true]],
               10664566 => Changeset[User[true]],
               10669386 => Changeset[User[true]],
               10670168 => Changeset[User[true]],
               10697337 => Changeset[User[true]],
               10712311 => Changeset[User[true]],
               10715701 => Changeset[User[true]],
               10717346 => Changeset[User[true]],
               10723633 => Changeset[User[true]],
               10751775 => Changeset[User[true]],
               10770637 => Changeset[User[true]],
               10793324 => Changeset[User[true]],
               10794658 => Changeset[User[true]],
               10825744 => Changeset[User[true]],
               10834466 => Changeset[User[true]],
               10835251 => Changeset[User[true]],
               10845697 => Changeset[User[true]],
               10853650 => Changeset[User[true]],
               10857123 => Changeset[User[true]],
               10870557 => Changeset[User[true]],
               10874335 => Changeset[User[true]],
               10893280 => Changeset[User[true]],
               10899037 => Changeset[User[true]],
               10908592 => Changeset[User[true]],
               10913514 => Changeset[User[true]],
               10921438 => Changeset[User[true]],
               10934043 => Changeset[User[true]],
               10935241 => Changeset[User[true]],
               10960757 => Changeset[User[true]],
               10962722 => Changeset[User[true]],
               10969613 => Changeset[User[true]],
               10975199 => Changeset[User[true]],
               11004347 => Changeset[User[true]],
               11005565 => Changeset[User[true]],
               11033051 => Changeset[User[true]],
               11044350 => Changeset[User[true]],
               11054687 => Changeset[User[true]],
               11083565 => Changeset[User[true]],
               11094034 => Changeset[User[true]],
               11112583 => Changeset[User[true]],
               11115472 => Changeset[User[true]],
               11118486 => Changeset[User[true]],
               11121473 => Changeset[User[true]],
               11132658 => Changeset[User[true]],
               11140299 => Changeset[User[true]],
               11147202 => Changeset[User[true]],
               11154506 => Changeset[User[true]],
               11154881 => Changeset[User[true]],
               11162735 => Changeset[User[true]],
               11168065 => Changeset[User[true]]
  })
  end

  # auto-generated test for node 500000
  # http://wtfe.gryph.de/report/node/500000
  # http://osm.mapki.com/history/node.php?id=500000
  def test_automatic_node500000
    history = [OSM::Node[[49.5229722, 8.5618333], :id => 500000, :version => 1, :visible => true, :changeset => 515989, "created_by" => "JOSM", "ele" => "98.6724853516"],    # agreed,
               OSM::Node[[49.5229722, 8.5618333], :id => 500000, :version => 2, :visible => true, :changeset => 4044768],    # not agreed,
               OSM::Node[[49.5229722, 8.5618333], :id => 500000, :version => 3, :visible => false, :changeset => 10249048],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions)
  end

  # auto-generated test for node 1900000
  # http://wtfe.gryph.de/report/node/1900000
  # http://osm.mapki.com/history/node.php?id=1900000
  def test_automatic_node1900000
    history = [OSM::Node[[32.9168350, -86.3221990], :id => 1900000, :version => 1, :visible => false, :changeset => 5947],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions)
  end

  # auto-generated test for node 2600000
  # http://wtfe.gryph.de/report/node/2600000
  # http://osm.mapki.com/history/node.php?id=2600000
  def test_automatic_node2600000
    history = [OSM::Node[[38.5263720, -122.7752990], :id => 2600000, :version => 1, :visible => false, :changeset => 9761],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions)
  end

  # auto-generated test for node 2800000
  # http://wtfe.gryph.de/report/node/2800000
  # http://osm.mapki.com/history/node.php?id=2800000
  def test_automatic_node2800000
    history = [OSM::Node[[37.7840300, -122.2857610], :id => 2800000, :version => 1, :visible => false, :changeset => 10459],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions)
  end

  # auto-generated test for node 3000000
  # http://wtfe.gryph.de/report/node/3000000
  # http://osm.mapki.com/history/node.php?id=3000000
  def test_automatic_node3000000
    history = [OSM::Node[[37.3623400, -121.8250640], :id => 3000000, :version => 1, :visible => false, :changeset => 11555],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions)
  end

  # auto-generated test for node 3200000
  # http://wtfe.gryph.de/report/node/3200000
  # http://osm.mapki.com/history/node.php?id=3200000
  def test_automatic_node3200000
    history = [OSM::Node[[42.0479290, -87.7384600], :id => 3200000, :version => 1, :visible => false, :changeset => 12389],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions)
  end

  # auto-generated test for node 12700000
  # http://wtfe.gryph.de/report/node/12700000
  # http://osm.mapki.com/history/node.php?id=12700000
  def test_automatic_node12700000
    history = [OSM::Node[[53.6416916, -1.6193976], :id => 12700000, :version => 1, :visible => true, :changeset => 76114],    # agreed,
               OSM::Node[[53.6416916, -1.6193976], :id => 12700000, :version => 2, :visible => true, :changeset => 91947],    # not agreed,
               OSM::Node[[53.6416916, -1.6193976], :id => 12700000, :version => 3, :visible => true, :changeset => 91947],    # not agreed,
               OSM::Node[[53.6416916, -1.6193976], :id => 12700000, :version => 4, :visible => true, :changeset => 851376],    # agreed,
               OSM::Node[[53.6416916, -1.6193976], :id => 12700000, :version => 5, :visible => true, :changeset => 852321],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions)
  end

  # auto-generated test for node 18600000
  # http://wtfe.gryph.de/report/node/18600000
  # http://osm.mapki.com/history/node.php?id=18600000
  def test_automatic_node18600000
    history = [OSM::Node[[43.2774340, -77.6465000], :id => 18600000, :version => 1, :visible => true, :changeset => 135225, "created_by" => "r_coastlines", "source" => "PGS"],    # not agreed,
               OSM::Node[[43.2776200, -77.6466751], :id => 18600000, :version => 2, :visible => true, :changeset => 7317349, "source" => "PGS"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[43.2776200, -77.6466751], :id => 18600000, :version => 2, :visible => true, :changeset => -1]],
                  Redact[OSM::Node, 18600000, 1, :hidden],
                  Redact[OSM::Node, 18600000, 2, :visible]
                 ], actions)
  end

  # auto-generated test for node 18800000
  # http://wtfe.gryph.de/report/node/18800000
  # http://osm.mapki.com/history/node.php?id=18800000
  def test_automatic_node18800000
    history = [OSM::Node[[42.9474180, -82.4391260], :id => 18800000, :version => 1, :visible => true, :changeset => 137557, "created_by" => "r_coastlines", "source" => "PGS"],    # not agreed,
               OSM::Node[[42.9474180, -82.4391260], :id => 18800000, :version => 2, :visible => false, :changeset => 3371480, "created_by" => "r_coastlines", "source" => "PGS"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 18800000, 1, :hidden], # but only if v2 is properly wiped.
                 ], actions)
  end

  # auto-generated test for node 27500000
  # http://wtfe.gryph.de/report/node/27500000
  # http://osm.mapki.com/history/node.php?id=27500000
  def test_automatic_node27500000
    history = [OSM::Node[[50.9644014, 8.9670734], :id => 27500000, :version => 1, :visible => true, :changeset => 21038, "created_by" => "JOSM"],    # not agreed,
               OSM::Node[[50.9644014, 8.9670734], :id => 27500000, :version => 2, :visible => true, :changeset => 6805210],    # agreed,
               OSM::Node[[50.9644495, 8.9669969], :id => 27500000, :version => 3, :visible => true, :changeset => 8441980],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 27500000, 1, :hidden],
                  Redact[OSM::Node, 27500000, 2, :visible]
                 ], actions)
  end

  # auto-generated test for node 27800000
  # http://wtfe.gryph.de/report/node/27800000
  # http://osm.mapki.com/history/node.php?id=27800000
  def test_automatic_node27800000
    history = [OSM::Node[[50.1293636, 14.4152145], :id => 27800000, :version => 1, :visible => true, :changeset => 28493],    # not agreed,
               OSM::Node[[50.1293404, 14.4151611], :id => 27800000, :version => 2, :visible => true, :changeset => 10089444],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 27800000, 1, :hidden]
                 ], actions)
  end

  # auto-generated test for node 28200000
  # http://wtfe.gryph.de/report/node/28200000
  # http://osm.mapki.com/history/node.php?id=28200000
  def test_automatic_node28200000
    history = [OSM::Node[[49.4622246, 8.7657605], :id => 28200000, :version => 1, :visible => true, :changeset => 32434, "created_by" => "JOSM"],    # not agreed,
               OSM::Node[[49.4622246, 8.7657605], :id => 28200000, :version => 2, :visible => true, :changeset => 855570],    # agreed,
               OSM::Node[[49.4622246, 8.7657605], :id => 28200000, :version => 3, :visible => true, :changeset => 322363],    # agreed,
               OSM::Node[[49.4622246, 8.7657605], :id => 28200000, :version => 4, :visible => true, :changeset => 337371],    # agreed,
               OSM::Node[[49.4622246, 8.7657605], :id => 28200000, :version => 5, :visible => true, :changeset => 340344],    # agreed,
               OSM::Node[[49.4622246, 8.7657605], :id => 28200000, :version => 6, :visible => true, :changeset => 340344],    # agreed,
               OSM::Node[[49.4622246, 8.7657605], :id => 28200000, :version => 7, :visible => true, :changeset => 595093],    # agreed,
               OSM::Node[[49.4620773, 8.7660550], :id => 28200000, :version => 8, :visible => true, :changeset => 3043080],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 28200000], # node created and moved later but moved by decliner so it's all for naught
                  Redact[OSM::Node, 28200000, 1, :hidden],
                  Redact[OSM::Node, 28200000, 2, :visible],
                  Redact[OSM::Node, 28200000, 3, :visible],
                  Redact[OSM::Node, 28200000, 4, :visible],
                  Redact[OSM::Node, 28200000, 5, :visible],
                  Redact[OSM::Node, 28200000, 6, :visible],
                  Redact[OSM::Node, 28200000, 7, :visible],
                  Redact[OSM::Node, 28200000, 8, :hidden]
                 ], actions)
  end

  # auto-generated test for node 30100000
  # http://wtfe.gryph.de/report/node/30100000
  # http://osm.mapki.com/history/node.php?id=30100000
  def test_automatic_node30100000
    history = [OSM::Node[[53.6659660, -2.3090811], :id => 30100000, :version => 1, :visible => true, :changeset => 87483, "created_by" => "JOSM", "is_in" => "Rossendale, Lancashire, England, UK", "name" => "Chatterton", "place" => "village", "source" => "npe"],    # agreed,
               OSM::Node[[53.6644140, -2.3125911], :id => 30100000, :version => 2, :visible => true, :changeset => 519412, "created_by" => "Potlatch 0.10f", "is_in" => "Rossendale, Lancashire, England, UK", "name" => "Chatterton", "place" => "village", "source" => "npe"],    # not agreed,
               OSM::Node[[53.6631513, -2.3140455], :id => 30100000, :version => 3, :visible => true, :changeset => 535210, "created_by" => "Potlatch 0.10f", "is_in" => "Rossendale, Lancashire, England, UK", "name" => "Chatterton", "place" => "village", "source" => "npe"],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[53.6659660, -2.3090811], :id => 30100000, :version => 3, :visible => true, :changeset => -1, "is_in" => "Rossendale, Lancashire, England, UK", "name" => "Chatterton", "place" => "village", "source" => "npe"]], # drop created_by
                  Redact[OSM::Node, 30100000, 2, :hidden],
                  Redact[OSM::Node, 30100000, 3, :hidden]
                 ], actions)
  end

  # auto-generated test for node 31800000
  # http://wtfe.gryph.de/report/node/31800000
  # http://osm.mapki.com/history/node.php?id=31800000
  def test_automatic_node31800000
    history = [OSM::Node[[50.7687980, 11.4601950], :id => 31800000, :version => 1, :visible => true, :changeset => 141648, "created_by" => "JOSM"],    # not agreed,
               OSM::Node[[50.7687980, 11.4601950], :id => 31800000, :version => 2, :visible => true, :changeset => 6260985],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 31800000],
                 ], actions)
  end

  # auto-generated test for node 32500000
  # http://wtfe.gryph.de/report/node/32500000
  # http://osm.mapki.com/history/node.php?id=32500000
  def test_automatic_node32500000
    history = [OSM::Node[[46.6760862, -123.7317899], :id => 32500000, :version => 1, :visible => true, :changeset => 157268, "created_by" => "JOSM", "source" => "PGS"],    # not agreed,
               OSM::Node[[46.6765029, -123.7317393], :id => 32500000, :version => 2, :visible => true, :changeset => 9314034, "source" => "PGS"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[46.6765029, -123.7317393], :id => 32500000, :version => 2, :visible => true, :changeset => -1]], # move rescues node but tag is lost
                  Redact[OSM::Node, 32500000, 1, :hidden]
                 ], actions)
  end

  # auto-generated test for node 41700000
  # http://wtfe.gryph.de/report/node/41700000
  # http://osm.mapki.com/history/node.php?id=41700000
  def test_automatic_node41700000
    history = [OSM::Node[[42.5793490, -73.6778570], :id => 41700000, :version => 1, :visible => true, :changeset => 333007, "source" => "tiger_import_dch_v0.6_20070829", "tiger:county" => "Rensselaer, NY", "tiger:tlid" => "35734410", "tiger:upload_uuid" => "bulk_upload.pl-836179cd-999b-4b38-8c6a-8128a67dee08"],    # agreed,
               OSM::Node[[42.5793490, -73.6778570], :id => 41700000, :version => 2, :visible => true, :changeset => 654634, "source" => "tiger_import_dch_v0.6_20070829", "tiger:county" => "Rensselaer, NY", "tiger:tlid" => "35734410", "tiger:upload_uuid" => "bulk_upload.pl-836179cd-999b-4b38-8c6a-8128a67dee08"],    # not agreed,
               OSM::Node[[42.5793490, -73.6778570], :id => 41700000, :version => 3, :visible => true, :changeset => 2677949],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions) # v2 didn't change the game at all
  end

  # auto-generated test for node 44800000
  # http://wtfe.gryph.de/report/node/44800000
  # http://osm.mapki.com/history/node.php?id=44800000
  def test_automatic_node44800000
    history = [OSM::Node[[-33.8963296, 151.1737517], :id => 44800000, :version => 1, :visible => true, :changeset => 396695],    # not agreed,
               OSM::Node[[-33.8963296, 151.1737394], :id => 44800000, :version => 2, :visible => true, :changeset => 229386],    # not agreed,
               OSM::Node[[-33.8963202, 151.1737582], :id => 44800000, :version => 3, :visible => true, :changeset => 226131],    # not agreed,
               OSM::Node[[-33.8963202, 151.1737582], :id => 44800000, :version => 4, :visible => true, :changeset => 420231],    # agreed,
               OSM::Node[[-33.8963202, 151.1737582], :id => 44800000, :version => 5, :visible => true, :changeset => 420231],    # agreed,
               OSM::Node[[-33.8963202, 151.1737582], :id => 44800000, :version => 6, :visible => true, :changeset => 420231],    # agreed,
               OSM::Node[[-33.8963044, 151.1737770], :id => 44800000, :version => 7, :visible => true, :changeset => 3447594],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 44800000],
                  Redact[OSM::Node, 44800000, 1, :hidden],
                  Redact[OSM::Node, 44800000, 2, :hidden],
                  Redact[OSM::Node, 44800000, 3, :hidden],
                  Redact[OSM::Node, 44800000, 4, :visible],
                  Redact[OSM::Node, 44800000, 5, :visible],
                  Redact[OSM::Node, 44800000, 6, :visible],
                  Redact[OSM::Node, 44800000, 7, :hidden]
                 ], actions)
  end

  # auto-generated test for node 49500000
  # http://wtfe.gryph.de/report/node/49500000
  # http://osm.mapki.com/history/node.php?id=49500000
  def test_automatic_node49500000
    history = [OSM::Node[[49.5131589, 8.5766987], :id => 49500000, :version => 1, :visible => true, :changeset => 427761, "created_by" => "JOSM"],    # not agreed,
               OSM::Node[[49.5130924, 8.5768395], :id => 49500000, :version => 2, :visible => true, :changeset => 870027, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[49.5128424, 8.5765812], :id => 49500000, :version => 3, :visible => true, :changeset => 8486724],    # agreed,
               OSM::Node[[49.5128457, 8.5765589], :id => 49500000, :version => 4, :visible => true, :changeset => 8526193],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 49500000, 1, :hidden],
                  Redact[OSM::Node, 49500000, 2, :visible] # v2 still has the tag even though moved
                 ], actions)
  end

  # auto-generated test for node 55200000
  # http://wtfe.gryph.de/report/node/55200000
  # http://osm.mapki.com/history/node.php?id=55200000
  def test_automatic_node55200000
    history = [OSM::Node[[49.4424951, 20.2870882], :id => 55200000, :version => 1, :visible => true, :changeset => 479213],    # not agreed,
               OSM::Node[[49.4424951, 20.2870882], :id => 55200000, :version => 2, :visible => true, :changeset => 598923],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 55200000],
                  Redact[OSM::Node, 55200000, 1, :hidden],
                  Redact[OSM::Node, 55200000, 2, :visible]
                 ], actions)
  end

  # auto-generated test for node 60100000
  # http://wtfe.gryph.de/report/node/60100000
  # http://osm.mapki.com/history/node.php?id=60100000
  def test_automatic_node60100000
    history = [OSM::Node[[-37.7757794, 145.0786788], :id => 60100000, :version => 1, :visible => true, :changeset => 536651],    # agreed,
               OSM::Node[[-37.7757098, 145.0786385], :id => 60100000, :version => 2, :visible => true, :changeset => 387359],    # not agreed,
               OSM::Node[[-37.7755010, 145.0787143], :id => 60100000, :version => 3, :visible => true, :changeset => 444763],    # agreed,
               OSM::Node[[-37.7754950, 145.0786619], :id => 60100000, :version => 4, :visible => true, :changeset => 4685984],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[-37.7755010, 145.0787143], :id => 60100000, :version => 4, :visible => true, :changeset => -1]],
                  Redact[OSM::Node, 60100000, 2, :hidden],
                  Redact[OSM::Node, 60100000, 4, :hidden]
                 ], actions)
  end

  # auto-generated test for node 60300000
  # http://wtfe.gryph.de/report/node/60300000
  # http://osm.mapki.com/history/node.php?id=60300000
  def test_automatic_node60300000
    history = [OSM::Node[[50.6728603, 11.5182191], :id => 60300000, :version => 1, :visible => true, :changeset => 11099, "created_by" => "JOSM"],    # not agreed,
               OSM::Node[[50.6728603, 11.5182191], :id => 60300000, :version => 2, :visible => false, :changeset => 8504465],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 60300000],
                  Redact[OSM::Node, 60300000, 1, :hidden],
                  Redact[OSM::Node, 60300000, 2, :visible]
                 ], actions)
  end

  # auto-generated test for node 61100000
  # http://wtfe.gryph.de/report/node/61100000
  # http://osm.mapki.com/history/node.php?id=61100000
  def test_automatic_node61100000
    history = [OSM::Node[[51.0889180, 7.0220756], :id => 61100000, :version => 1, :visible => true, :changeset => 58690, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[51.0888641, 7.0219898], :id => 61100000, :version => 2, :visible => true, :changeset => 532364, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[51.0889180, 7.0220756], :id => 61100000, :version => 3, :visible => true, :changeset => 531997, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[51.0889184, 7.0220753], :id => 61100000, :version => 4, :visible => true, :changeset => 537585, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[51.0897229, 7.0215672], :id => 61100000, :version => 5, :visible => true, :changeset => 28643, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[51.0886986, 7.0216273], :id => 61100000, :version => 6, :visible => true, :changeset => 67488, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[51.0889037, 7.0220468], :id => 61100000, :version => 7, :visible => true, :changeset => 67488, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[51.0891153, 7.0224507], :id => 61100000, :version => 8, :visible => true, :changeset => 67488, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[51.0889212, 7.0224507], :id => 61100000, :version => 9, :visible => true, :changeset => 282283, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[51.0889104, 7.0221932], :id => 61100000, :version => 10, :visible => true, :changeset => 282283, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[51.0889104, 7.0221932], :id => 61100000, :version => 11, :visible => true, :changeset => 282283, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[51.0889104, 7.0221932], :id => 61100000, :version => 12, :visible => false, :changeset => 282283, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[51.0889104, 7.0221932], :id => 61100000, :version => 13, :visible => true, :changeset => 282283, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[51.0895611, 7.0223303], :id => 61100000, :version => 14, :visible => true, :changeset => 676032, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[51.0889250, 7.0221183], :id => 61100000, :version => 15, :visible => true, :changeset => 724295, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[51.0889250, 7.0221183], :id => 61100000, :version => 16, :visible => true, :changeset => 667687],    # agreed,
               OSM::Node[[51.0889250, 7.0221183], :id => 61100000, :version => 17, :visible => true, :changeset => 803893],    # not agreed,
               OSM::Node[[51.0889483, 7.0222082], :id => 61100000, :version => 18, :visible => true, :changeset => 6728833],    # agreed,
               OSM::Node[[51.0889483, 7.0222082], :id => 61100000, :version => 19, :visible => false, :changeset => 10467135],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 61100000],
                  Redact[OSM::Node, 61100000, 17, :hidden]
                 ], actions)
  end

  # auto-generated test for node 75000000
  # http://wtfe.gryph.de/report/node/75000000
  # http://osm.mapki.com/history/node.php?id=75000000
  def test_automatic_node75000000
    history = [OSM::Node[[49.0571390, 17.2380840], :id => 75000000, :version => 1, :visible => true, :changeset => 204763, "created_by" => "shpupload", "source" => "HELP SERVICE - REMOTE SENSING spol. s r.o. http://www.bnhelp.cz"],    # not agreed,
               OSM::Node[[49.0573901, 17.2376119], :id => 75000000, :version => 2, :visible => true, :changeset => 263937, "created_by" => "shpupload", "source" => "HELP SERVICE - REMOTE SENSING spol. s r.o. http://www.bnhelp.cz"],    # agreed,
               OSM::Node[[49.0573642, 17.2378443], :id => 75000000, :version => 3, :visible => true, :changeset => 7015903, "source" => "HELP SERVICE - REMOTE SENSING spol. s r.o. http://www.bnhelp.cz"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[49.0573642, 17.2378443], :id => 75000000, :version => 3, :visible => true, :changeset => -1 ]],
                  Redact[OSM::Node, 75000000, 1, :hidden],
                  Redact[OSM::Node, 75000000, 2, :visible],
                  Redact[OSM::Node, 75000000, 3, :visible]
                 ], actions)
  end

  # auto-generated test for node 90600000
  # http://wtfe.gryph.de/report/node/90600000
  # http://osm.mapki.com/history/node.php?id=90600000
  def test_automatic_node90600000
    history = [OSM::Node[[51.5350938, 13.8517302], :id => 90600000, :version => 1, :visible => true, :changeset => 343478],    # not agreed,
               OSM::Node[[51.5350938, 13.8517302], :id => 90600000, :version => 2, :visible => true, :changeset => 343478],    # not agreed,
               OSM::Node[[51.5350938, 13.8517302], :id => 90600000, :version => 3, :visible => true, :changeset => 343478],    # not agreed,
               OSM::Node[[51.5350938, 13.8517302], :id => 90600000, :version => 4, :visible => true, :changeset => 343478],    # not agreed,
               OSM::Node[[51.5350938, 13.8517302], :id => 90600000, :version => 5, :visible => true, :changeset => 343478],    # not agreed,
               OSM::Node[[51.5350938, 13.8517302], :id => 90600000, :version => 6, :visible => false, :changeset => 3004211],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 90600000, 1, :hidden],
                  Redact[OSM::Node, 90600000, 2, :hidden],
                  Redact[OSM::Node, 90600000, 3, :hidden],
                  Redact[OSM::Node, 90600000, 4, :hidden],
                  Redact[OSM::Node, 90600000, 5, :hidden] 
                 ], actions)
  end

  # auto-generated test for node 100000000
  # http://wtfe.gryph.de/report/node/100000000
  # http://osm.mapki.com/history/node.php?id=100000000
  def test_automatic_node100000000
    history = [OSM::Node[[35.1509346, 33.3001134], :id => 100000000, :version => 1, :visible => true, :changeset => 423631],    # not agreed,
               OSM::Node[[35.1509346, 33.3001134], :id => 100000000, :version => 2, :visible => true, :changeset => 423631],    # not agreed,
               OSM::Node[[35.1509346, 33.3001134], :id => 100000000, :version => 3, :visible => true, :changeset => 423631],    # not agreed,
               OSM::Node[[35.1508321, 33.3000792], :id => 100000000, :version => 4, :visible => true, :changeset => 801886],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 100000000, 1, :hidden],
                  Redact[OSM::Node, 100000000, 2, :hidden],
                  Redact[OSM::Node, 100000000, 3, :hidden]
                 ], actions)
  end

  # auto-generated test for node 121800000
  # http://wtfe.gryph.de/report/node/121800000
  # http://osm.mapki.com/history/node.php?id=121800000
  def test_automatic_node121800000
    history = [OSM::Node[[50.1751850, 10.7396903], :id => 121800000, :version => 1, :visible => true, :changeset => 558698, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[50.1751850, 10.7396903], :id => 121800000, :version => 2, :visible => true, :changeset => 380014],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions)
  end

  # auto-generated test for node 123300000
  # http://wtfe.gryph.de/report/node/123300000
  # http://osm.mapki.com/history/node.php?id=123300000
  def test_automatic_node123300000
    history = [OSM::Node[[34.1124080, -118.3114090], :id => 123300000, :version => 1, :visible => true, :changeset => 562411, "source" => "tiger_import_dch_v0.6_20070809", "tiger:county" => "Los Angeles, CA", "tiger:tlid" => "141596990:141596998:141596999", "tiger:upload_uuid" => "bulk_upload.pl-e7a65206-5b4e-4f1c-be5b-f07c49e73831"],    # agreed,
               OSM::Node[[34.1125787, -118.3114407], :id => 123300000, :version => 2, :visible => true, :changeset => 416721, "source" => "tiger_import_dch_v0.6_20070809", "tiger:county" => "Los Angeles, CA", "tiger:tlid" => "141596990:141596998:141596999", "tiger:upload_uuid" => "bulk_upload.pl-e7a65206-5b4e-4f1c-be5b-f07c49e73831"],    # not agreed,
               OSM::Node[[34.1125787, -118.3114407], :id => 123300000, :version => 3, :visible => true, :changeset => 3562678],    # agreed,
               OSM::Node[[34.1125606, -118.3114367], :id => 123300000, :version => 4, :visible => true, :changeset => 10176703],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 123300000, 2, :hidden],
                  Redact[OSM::Node, 123300000, 3, :visible]
                 ], actions) # v2 didn't do anything.
  end

  # auto-generated test for node 152300000
  # http://wtfe.gryph.de/report/node/152300000
  # http://osm.mapki.com/history/node.php?id=152300000
  def test_automatic_node152300000
    history = [OSM::Node[[-33.6997646, 151.2907818], :id => 152300000, :version => 1, :visible => true, :changeset => 128037, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[-33.6997646, 151.2907818], :id => 152300000, :version => 2, :visible => true, :changeset => 128037, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[-33.6997646, 151.2908162], :id => 152300000, :version => 3, :visible => true, :changeset => 162686, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[-33.6997341, 151.2907356], :id => 152300000, :version => 4, :visible => true, :changeset => 6141510],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[-33.6997646, 151.2908162], :id => 152300000, :version => 4, :visible => true, :changeset => -1]],
                  Redact[OSM::Node, 152300000, 4, :hidden]
                 ], actions)
  end

  # auto-generated test for node 196200000
  # http://wtfe.gryph.de/report/node/196200000
  # http://osm.mapki.com/history/node.php?id=196200000
  def test_automatic_node196200000
    history = [OSM::Node[[50.9992675, 10.3179326], :id => 196200000, :version => 1, :visible => true, :changeset => 468759, "created_by" => "JOSM"],    # not agreed,
               OSM::Node[[50.9992948, 10.3179453], :id => 196200000, :version => 2, :visible => true, :changeset => 528665, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[50.9992948, 10.3179453], :id => 196200000, :version => 3, :visible => true, :changeset => 666579],    # agreed,
               OSM::Node[[50.9992948, 10.3179453], :id => 196200000, :version => 4, :visible => true, :changeset => 666579],    # agreed,
               OSM::Node[[50.9992948, 10.3179453], :id => 196200000, :version => 5, :visible => true, :changeset => 666579],    # agreed,
               OSM::Node[[50.9992948, 10.3179453], :id => 196200000, :version => 6, :visible => true, :changeset => 666579],    # agreed,
               OSM::Node[[50.9992948, 10.3179453], :id => 196200000, :version => 7, :visible => true, :changeset => 666579],    # agreed,
               OSM::Node[[50.9992716, 10.3179453], :id => 196200000, :version => 8, :visible => true, :changeset => 1138174],    # agreed,
               OSM::Node[[50.9992716, 10.3179453], :id => 196200000, :version => 9, :visible => true, :changeset => 1937108],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 196200000, 1, :hidden],
                  Redact[OSM::Node, 196200000, 2, :visible] # still has evil tag
                 ], actions)
  end

  # auto-generated test for node 196700000
  # http://wtfe.gryph.de/report/node/196700000
  # http://osm.mapki.com/history/node.php?id=196700000
  def test_automatic_node196700000
    history = [OSM::Node[[-26.1982576, 152.6725012], :id => 196700000, :version => 1, :visible => true, :changeset => 477521, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[-26.1982576, 152.6725012], :id => 196700000, :version => 2, :visible => true, :changeset => 1618018],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions)
  end

  # auto-generated test for node 206100000
  # http://wtfe.gryph.de/report/node/206100000
  # http://osm.mapki.com/history/node.php?id=206100000
  def test_automatic_node206100000
    history = [OSM::Node[[35.6536327, 140.0573267], :id => 206100000, :version => 1, :visible => true, :changeset => 535008, "created_by" => "JOSM"],    # not agreed,
               OSM::Node[[35.6536327, 140.0573267], :id => 206100000, :version => 2, :visible => false, :changeset => 10030758],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 206100000],
                  Redact[OSM::Node, 206100000, 1, :hidden],
                  Redact[OSM::Node, 206100000, 2, :visible]
                 ], actions)
  end

  # auto-generated test for node 207700000
  # http://wtfe.gryph.de/report/node/207700000
  # http://osm.mapki.com/history/node.php?id=207700000
  def test_automatic_node207700000
    history = [OSM::Node[[35.0990130, -106.5333760], :id => 207700000, :version => 1, :visible => true, :changeset => 561022, "created_by" => "ktj-abq-gis-addr-convert", "gis_pin" => "ABQ111533", "name" => "1621 EUBANK BLVD NE", "note" => "name tag set to street_address initially, but should be changed if there is a business/amenity/etc located here; subdivision and gis_pin are specific to Albuquerque", "source" => "survey", "source_ref" => "http://www.cabq.gov/gisshapes/base.zip", "street_address" => "1621 EUBANK BLVD NE", "subdivision" => "OXSHEER HEIGHTS ADDN"],    # not agreed,
               OSM::Node[[35.0990130, -106.5333760], :id => 207700000, :version => 2, :visible => false, :changeset => 10160711],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[35.0990130, -106.5333760], :id => 207700000, :version => 2, :visible => false, :changeset => -1]],
                  Delete[OSM::Node, 207700000],
                  Redact[OSM::Node, 207700000, 1, :hidden]
                 ], actions)
  end

  # auto-generated test for node 208800000
  # http://wtfe.gryph.de/report/node/208800000
  # http://osm.mapki.com/history/node.php?id=208800000
  def test_automatic_node208800000
    history = [OSM::Node[[35.1012720, -106.6164160], :id => 208800000, :version => 1, :visible => true, :changeset => 571205, "created_by" => "ktj-abq-gis-addr-convert", "gis_pin" => "ABQ107148", "name" => "1510 VISTA LARGA CT NE", "note" => "name tag set to street_address initially, but should be changed if there is a business/amenity/etc located here; subdivision and gis_pin are specific to Albuquerque", "source" => "survey", "source_ref" => "http://www.cabq.gov/gisshapes/base.zip", "street_address" => "1510 VISTA LARGA CT NE", "subdivision" => "VISTA LARGA"],    # not agreed,
               OSM::Node[[35.1012720, -106.6164160], :id => 208800000, :version => 2, :visible => false, :changeset => 10257302],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[35.1012720, -106.6164160], :id => 208800000, :version => 2, :visible => false, :changeset => -1]],
                  Delete[OSM::Node, 208800000],
                  Redact[OSM::Node, 208800000, 1, :hidden]
                 ], actions)
  end

  # auto-generated test for node 209000000
  # http://wtfe.gryph.de/report/node/209000000
  # http://osm.mapki.com/history/node.php?id=209000000
  def test_automatic_node209000000
    history = [OSM::Node[[35.0721900, -106.7153990], :id => 209000000, :version => 1, :visible => true, :changeset => 571205, "created_by" => "ktj-abq-gis-addr-convert", "gis_pin" => "ABQ160714", "name" => "340 LINDSAY PL SW", "note" => "name tag set to street_address initially, but should be changed if there is a business/amenity/etc located here; subdivision and gis_pin are specific to Albuquerque", "source" => "survey", "source_ref" => "http://www.cabq.gov/gisshapes/base.zip", "street_address" => "340 LINDSAY PL SW", "subdivision" => "BRIDGE CROSSING"],    # not agreed,
               OSM::Node[[35.0721900, -106.7153990], :id => 209000000, :version => 2, :visible => false, :changeset => 10257302],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[35.0721900, -106.7153990], :id => 209000000, :version => 2, :visible => false, :changeset => -1]],
                  Delete[OSM::Node, 209000000],
                  Redact[OSM::Node, 209000000, 1, :hidden]
                 ], actions)
  end

  # auto-generated test for node 249500000
  # http://wtfe.gryph.de/report/node/249500000
  # http://osm.mapki.com/history/node.php?id=249500000
  def test_automatic_node249500000
    history = [OSM::Node[[51.3940642, 0.1117962], :id => 249500000, :version => 1, :visible => true, :changeset => 216334, "created_by" => "JOSM"],    # not agreed,
               OSM::Node[[51.3940642, 0.1117962], :id => 249500000, :version => 2, :visible => true, :changeset => 1929628],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 249500000],
                  Redact[OSM::Node, 249500000, 1, :hidden],
                  Redact[OSM::Node, 249500000, 2, :visible]
                 ], actions)
  end

  # auto-generated test for node 249700000
  # http://wtfe.gryph.de/report/node/249700000
  # http://osm.mapki.com/history/node.php?id=249700000
  def test_automatic_node249700000
    history = [OSM::Node[[33.6689882, -117.8921611], :id => 249700000, :version => 1, :visible => true, :changeset => 230860, "created_by" => "JOSM"],    # not agreed,
               OSM::Node[[33.6690450, -117.8920122], :id => 249700000, :version => 2, :visible => true, :changeset => 4311750],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 249700000, 1, :hidden]
                 ], actions)
  end

  # auto-generated test for node 251100000
  # http://wtfe.gryph.de/report/node/251100000
  # http://osm.mapki.com/history/node.php?id=251100000
  def test_automatic_node251100000
    history = [OSM::Node[[-34.7020410, 139.0879186], :id => 251100000, :version => 1, :visible => true, :changeset => 283847, "created_by" => "JOSM"],    # not agreed,
               OSM::Node[[-34.7012263, 139.0876964], :id => 251100000, :version => 2, :visible => true, :changeset => 401256, "created_by" => "JOSM"],    # not agreed,
               OSM::Node[[-34.7010055, 139.0875589], :id => 251100000, :version => 3, :visible => true, :changeset => 417939, "created_by" => "JOSM"],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 251100000],
                  Redact[OSM::Node, 251100000, 1, :hidden],
                  Redact[OSM::Node, 251100000, 2, :hidden],
                  Redact[OSM::Node, 251100000, 3, :hidden]
                 ], actions)
  end

  # auto-generated test for node 251600000
  # http://wtfe.gryph.de/report/node/251600000
  # http://osm.mapki.com/history/node.php?id=251600000
  def test_automatic_node251600000
    history = [OSM::Node[[53.0493234, 12.5050153], :id => 251600000, :version => 1, :visible => true, :changeset => 306242],    # not agreed,
               OSM::Node[[53.0494139, 12.5049509], :id => 251600000, :version => 2, :visible => true, :changeset => 10409055],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 251600000, 1, :hidden]
                 ], actions)
  end

  # auto-generated test for node 253300000
  # http://wtfe.gryph.de/report/node/253300000
  # http://osm.mapki.com/history/node.php?id=253300000
  def test_automatic_node253300000
    history = [OSM::Node[[34.0454144, -118.1211364], :id => 253300000, :version => 1, :visible => true, :changeset => 369525, "created_by" => "JOSM"],    # not agreed,
               OSM::Node[[34.0454216, -118.1211195], :id => 253300000, :version => 2, :visible => true, :changeset => 3985695],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 253300000, 1, :hidden]
                 ], actions)
  end

  # auto-generated test for node 256200000
  # http://wtfe.gryph.de/report/node/256200000
  # http://osm.mapki.com/history/node.php?id=256200000
  def test_automatic_node256200000
    history = [OSM::Node[[26.7081394, 128.2677486], :id => 256200000, :version => 1, :visible => true, :changeset => 78973, "KSJ2:ARE" => "s551000001", "KSJ2:LPN" => "クイナ湖", "KSJ2:coordinate" => "26.7081394417547 128.267748615256", "KSJ2:curve_id" => "c551000001", "KSJ2:curve_type" => "exterior", "KSJ2:lake_id" => "gc01_551", "KSJ2:lat" => "26.7081394417547", "KSJ2:long" => "128.267748615256", "created_by" => "National-Land-Numerical-Information_MLIT_Japan", "note" => "National-Land Numerical Information (Lake and Pond) 2005, MLIT Japan", "note:ja" => "国土数値情報（湖沼データ）平成17年 国土交通省", "source" => "KSJ2", "source_ref" => "http://nlftp.mlit.go.jp/ksj/jpgis/datalist/KsjTmplt-W09.html"],    # not agreed,
               OSM::Node[[26.7081394, 128.2677486], :id => 256200000, :version => 2, :visible => true, :changeset => 8923822],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 256200000],
                  Redact[OSM::Node, 256200000, 1, :hidden],
                  Redact[OSM::Node, 256200000, 2, :visible]
                 ], actions)
  end

  # auto-generated test for node 256600000
  # http://wtfe.gryph.de/report/node/256600000
  # http://osm.mapki.com/history/node.php?id=256600000
  def test_automatic_node256600000
    history = [OSM::Node[[35.4096569, -80.7627288], :id => 256600000, :version => 1, :visible => true, :changeset => 97475, "created_by" => "JOSM"],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 256600000],
                  Redact[OSM::Node, 256600000, 1, :hidden]
                 ], actions)
  end

  # auto-generated test for node 258300000
  # http://wtfe.gryph.de/report/node/258300000
  # http://osm.mapki.com/history/node.php?id=258300000
  def test_automatic_node258300000
    history = [OSM::Node[[54.6043200, 17.9837800], :id => 258300000, :version => 1, :visible => true, :changeset => 177403, "created_by" => "JOSM", "debug" => "-89964", "source" => "UMP-PL, ./UMP-Gdansk/src/inne.ulice.txt"],    # agreed,
               OSM::Node[[54.6043200, 17.9837800], :id => 258300000, :version => 2, :visible => true, :changeset => 515077, "created_by" => "JOSM", "source" => "UMP-PL, ./UMP-Gdansk/src/inne.ulice.txt"],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[54.6043200, 17.9837800], :id => 258300000, :version => 2, :visible => true, :changeset => -1, "source" => "UMP-PL, ./UMP-Gdansk/src/inne.ulice.txt"]],
                 # deletion not redacted
                 ], actions)
  end

  # auto-generated test for node 263000000
  # http://wtfe.gryph.de/report/node/263000000
  # http://osm.mapki.com/history/node.php?id=263000000
  def test_automatic_node263000000
    history = [OSM::Node[[63.9264051, 19.5565597], :id => 263000000, :version => 1, :visible => true, :changeset => 374644],    # agreed,
               OSM::Node[[63.9264051, 19.5565597], :id => 263000000, :version => 2, :visible => true, :changeset => 724684],    # agreed,
               OSM::Node[[63.9264051, 19.5565597], :id => 263000000, :version => 3, :visible => true, :changeset => 767343],    # agreed,
               OSM::Node[[63.9264051, 19.5565597], :id => 263000000, :version => 4, :visible => true, :changeset => 767343],    # agreed,
               OSM::Node[[63.9264051, 19.5565597], :id => 263000000, :version => 5, :visible => true, :changeset => 767343],    # agreed,
               OSM::Node[[63.9264051, 19.5565597], :id => 263000000, :version => 6, :visible => true, :changeset => 767343],    # agreed,
               OSM::Node[[63.9264051, 19.5565597], :id => 263000000, :version => 7, :visible => true, :changeset => 767343],    # agreed,
               OSM::Node[[63.9260954, 19.5548793], :id => 263000000, :version => 8, :visible => true, :changeset => 767924],    # agreed,
               OSM::Node[[63.9260954, 19.5548793], :id => 263000000, :version => 9, :visible => true, :changeset => 712501],    # not agreed,
               OSM::Node[[63.9260954, 19.5548793], :id => 263000000, :version => 10, :visible => true, :changeset => 712501],    # not agreed,
               OSM::Node[[63.9260954, 19.5548793], :id => 263000000, :version => 11, :visible => true, :changeset => 712501],    # not agreed,
               OSM::Node[[63.9261998, 19.5545889], :id => 263000000, :version => 12, :visible => true, :changeset => 10723633],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions) # v9-11 not redacted because trivial
  end

  # auto-generated test for node 267900000
  # http://wtfe.gryph.de/report/node/267900000
  # http://osm.mapki.com/history/node.php?id=267900000
  def test_automatic_node267900000
    history = [OSM::Node[[49.7771749, 6.6352008], :id => 267900000, :version => 1, :visible => true, :changeset => 11756, "created_by" => "JOSM"],    # agreed,
               OSM::Node[[49.7771602, 6.6352401], :id => 267900000, :version => 2, :visible => true, :changeset => 277810, "created_by" => "JOSM"],    # not agreed,
               OSM::Node[[49.7771749, 6.6352008], :id => 267900000, :version => 3, :visible => true, :changeset => 279959],    # agreed,
               OSM::Node[[49.7771715, 6.6351262], :id => 267900000, :version => 4, :visible => true, :changeset => 279959],    # agreed,
               OSM::Node[[49.7771715, 6.6351262], :id => 267900000, :version => 5, :visible => true, :changeset => 279959],    # agreed,
               OSM::Node[[49.7771715, 6.6351262], :id => 267900000, :version => 6, :visible => true, :changeset => 279959],    # agreed,
               OSM::Node[[49.7771715, 6.6351262], :id => 267900000, :version => 7, :visible => true, :changeset => 279959],    # agreed,
               OSM::Node[[49.7771715, 6.6351262], :id => 267900000, :version => 8, :visible => true, :changeset => 279959],    # agreed,
               OSM::Node[[49.7771715, 6.6351262], :id => 267900000, :version => 9, :visible => true, :changeset => 279959],    # agreed,
               OSM::Node[[49.7771715, 6.6351262], :id => 267900000, :version => 10, :visible => true, :changeset => 279959],    # agreed,
               OSM::Node[[49.7771715, 6.6351262], :id => 267900000, :version => 11, :visible => true, :changeset => 279959],    # agreed,
               OSM::Node[[49.7771715, 6.6351262], :id => 267900000, :version => 12, :visible => true, :changeset => 279959],    # agreed,
               OSM::Node[[49.7771715, 6.6351262], :id => 267900000, :version => 13, :visible => true, :changeset => 279959],    # agreed,
               OSM::Node[[49.7772753, 6.6350213], :id => 267900000, :version => 14, :visible => true, :changeset => 618837],    # agreed,
               OSM::Node[[49.7772753, 6.6350213], :id => 267900000, :version => 15, :visible => true, :changeset => 618837],    # agreed,
               OSM::Node[[49.7772753, 6.6350213], :id => 267900000, :version => 16, :visible => true, :changeset => 618837],    # agreed,
               OSM::Node[[49.7772753, 6.6350213], :id => 267900000, :version => 17, :visible => true, :changeset => 618837],    # agreed,
               OSM::Node[[49.7772753, 6.6350213], :id => 267900000, :version => 18, :visible => true, :changeset => 618837],    # agreed,
               OSM::Node[[49.7772753, 6.6350213], :id => 267900000, :version => 19, :visible => true, :changeset => 618837],    # agreed,
               OSM::Node[[49.7771367, 6.6348840], :id => 267900000, :version => 20, :visible => true, :changeset => 618837],    # agreed,
               OSM::Node[[49.7772753, 6.6350213], :id => 267900000, :version => 21, :visible => true, :changeset => 618837],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 267900000, 2, :hidden]
                 ], actions)
  end

  # auto-generated test for node 270100000
  # http://wtfe.gryph.de/report/node/270100000
  # http://osm.mapki.com/history/node.php?id=270100000
  def test_automatic_node270100000
    history = [OSM::Node[[35.8390630, 139.7249690], :id => 270100000, :version => 1, :visible => true, :changeset => 148731, "KSJ2:coordinate" => "35.83906300 139.72496900", "KSJ2:curve_id" => "cv360ec", "KSJ2:filename" => "N03-070401_11.xml", "KSJ2:lat" => "35.83906300", "KSJ2:long" => "139.72496900", "created_by" => "National-Land-Numerical-Information_MLIT_Japan", "note" => "National-Land Numerical Information (Administrative area) 2007, MLIT Japan", "note:ja" => "国土数値情報（行政区域データ）平成19年 国土交通省", "source" => "KSJ2", "source_ref" => "http://nlftp.mlit.go.jp/ksj/jpgis/datalist/KsjTmplt-N03.html"],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 270100000],
                  Redact[OSM::Node, 270100000, 1, :hidden]
                 ], actions)
  end

  # auto-generated test for node 270200000
  # http://wtfe.gryph.de/report/node/270200000
  # http://osm.mapki.com/history/node.php?id=270200000
  def test_automatic_node270200000
    history = [OSM::Node[[-34.0085246, 151.0489520], :id => 270200000, :version => 1, :visible => true, :changeset => 159834, "created_by" => "JOSM"],    # not agreed,
               OSM::Node[[-34.0085437, 151.0489253], :id => 270200000, :version => 2, :visible => true, :changeset => 166558, "created_by" => "JOSM"],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 270200000],
                  Redact[OSM::Node, 270200000, 1, :hidden],
                  Redact[OSM::Node, 270200000, 2, :hidden] # would have been a :visible if not for the coordinate change
                 ], actions)
  end

  # auto-generated test for node 272800000
  # http://wtfe.gryph.de/report/node/272800000
  # http://osm.mapki.com/history/node.php?id=272800000
  def test_automatic_node272800000
    history = [OSM::Node[[45.8131244, 9.0822918], :id => 272800000, :version => 1, :visible => true, :changeset => 286316],    # not agreed,
               OSM::Node[[45.8131483, 9.0822661], :id => 272800000, :version => 2, :visible => true, :changeset => 325829],    # not agreed,
               OSM::Node[[45.8131603, 9.0823090], :id => 272800000, :version => 3, :visible => true, :changeset => 325829],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 272800000],
                  Redact[OSM::Node, 272800000, 1, :hidden],
                  Redact[OSM::Node, 272800000, 2, :hidden],
                  Redact[OSM::Node, 272800000, 3, :hidden]
                 ], actions)
  end

  # auto-generated test for node 277900000
  # http://wtfe.gryph.de/report/node/277900000
  # http://osm.mapki.com/history/node.php?id=277900000
  def test_automatic_node277900000
    history = [OSM::Node[[49.3525891, 8.7806452], :id => 277900000, :version => 1, :visible => true, :changeset => 470438],    # agreed,
               OSM::Node[[49.3526571, 8.7805299], :id => 277900000, :version => 2, :visible => true, :changeset => 7136895],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[49.3525891, 8.7806452], :id => 277900000, :version => 2, :visible => true, :changeset => -1]],
                  Redact[OSM::Node, 277900000, 2, :hidden]
                 ], actions)
  end

  # auto-generated test for node 278700000
  # http://wtfe.gryph.de/report/node/278700000
  # http://osm.mapki.com/history/node.php?id=278700000
  def test_automatic_node278700000
    history = [OSM::Node[[50.4826880, 11.1676659], :id => 278700000, :version => 1, :visible => true, :changeset => 500400],    # not agreed,
               OSM::Node[[50.4830319, 11.1677188], :id => 278700000, :version => 2, :visible => true, :changeset => 4474489],    # agreed,
               OSM::Node[[50.4830319, 11.1677188], :id => 278700000, :version => 3, :visible => false, :changeset => 9848735],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 278700000, 1, :hidden]
                 ], actions)
  end

  # auto-generated test for node 280400000
  # http://wtfe.gryph.de/report/node/280400000
  # http://osm.mapki.com/history/node.php?id=280400000
  def test_automatic_node280400000
    history = [OSM::Node[[51.5887357, 14.0076927], :id => 280400000, :version => 1, :visible => true, :changeset => 573364],    # not agreed,
               OSM::Node[[51.5887357, 14.0076927], :id => 280400000, :version => 2, :visible => true, :changeset => 507923],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 280400000],
                  Redact[OSM::Node, 280400000, 1, :hidden],
                  Redact[OSM::Node, 280400000, 2, :visible] # trivial change leads to "visible" redaction?
                 ], actions)
  end

  # auto-generated test for node 285700000
  # http://wtfe.gryph.de/report/node/285700000
  # http://osm.mapki.com/history/node.php?id=285700000
  def test_automatic_node285700000
    history = [OSM::Node[[49.2693000, 18.1147240], :id => 285700000, :version => 1, :visible => true, :changeset => 114224, "created_by" => "JOSM"],    # not agreed,
               OSM::Node[[49.2693000, 18.1147240], :id => 285700000, :version => 2, :visible => true, :changeset => 2517866],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 285700000],
                  Redact[OSM::Node, 285700000, 1, :hidden]
                 ], actions)
  end

  # auto-generated test for node 291100000
  # http://wtfe.gryph.de/report/node/291100000
  # http://osm.mapki.com/history/node.php?id=291100000
  def test_automatic_node291100000
    history = [OSM::Node[[55.8335816, -5.0604234], :id => 291100000, :version => 1, :visible => true, :changeset => 409178],    # agreed,
               OSM::Node[[55.8335816, -5.0604234], :id => 291100000, :version => 2, :visible => true, :changeset => 800857],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions) # v2 trivial
  end

  # auto-generated test for node 292600000
  # http://wtfe.gryph.de/report/node/292600000
  # http://osm.mapki.com/history/node.php?id=292600000
  def test_automatic_node292600000
    history = [OSM::Node[[51.2615675, 11.4196521], :id => 292600000, :version => 1, :visible => true, :changeset => 481899],    # not agreed,
               OSM::Node[[51.2615675, 11.4196521], :id => 292600000, :version => 2, :visible => false, :changeset => 3273117],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 292600000],
                  Redact[OSM::Node, 292600000, 1, :hidden],
                  Redact[OSM::Node, 292600000, 2, :visible] # trivial change leads to visible redaction
                 ], actions)
  end

  # auto-generated test for node 294600000
  # http://wtfe.gryph.de/report/node/294600000
  # http://osm.mapki.com/history/node.php?id=294600000
  def test_automatic_node294600000
    history = [OSM::Node[[41.2540119, -88.1356818], :id => 294600000, :version => 1, :visible => true, :changeset => 558510],    # not agreed,
               OSM::Node[[41.2540119, -88.1356818], :id => 294600000, :version => 2, :visible => true, :changeset => 579211],    # not agreed,
               OSM::Node[[41.2540119, -88.1356818], :id => 294600000, :version => 3, :visible => true, :changeset => 579211],    # not agreed,
               OSM::Node[[41.2540119, -88.1356818], :id => 294600000, :version => 4, :visible => true, :changeset => 579211],    # not agreed,
               OSM::Node[[41.2540119, -88.1356818], :id => 294600000, :version => 5, :visible => true, :changeset => 579211],    # not agreed,
               OSM::Node[[41.2540119, -88.1356818], :id => 294600000, :version => 6, :visible => true, :changeset => 4258380],    # agreed,
               OSM::Node[[41.2540119, -88.1356818], :id => 294600000, :version => 7, :visible => true, :changeset => 4269342],    # agreed,
               OSM::Node[[41.2540119, -88.1356818], :id => 294600000, :version => 8, :visible => true, :changeset => 5272044],    # agreed,
               OSM::Node[[41.2540119, -88.1356818], :id => 294600000, :version => 9, :visible => true, :changeset => 6389752],    # agreed,
               OSM::Node[[41.2502985, -88.1258971], :id => 294600000, :version => 10, :visible => true, :changeset => 6466647],    # agreed,
               OSM::Node[[41.2542412, -88.1354801], :id => 294600000, :version => 11, :visible => true, :changeset => 6571072],    # agreed,
               OSM::Node[[41.2540392, -88.1355445], :id => 294600000, :version => 12, :visible => true, :changeset => 6571072],    # agreed,
               OSM::Node[[41.2540392, -88.1355837], :id => 294600000, :version => 13, :visible => true, :changeset => 7615718],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 294600000, 1, :hidden],
                  Redact[OSM::Node, 294600000, 2, :visible], # v2-9 are trivial changes and lead to visible redactions, 
                  Redact[OSM::Node, 294600000, 3, :visible], # no matter whether made by decliner or agreer
                  Redact[OSM::Node, 294600000, 4, :visible],
                  Redact[OSM::Node, 294600000, 5, :visible],
                  Redact[OSM::Node, 294600000, 6, :visible],
                  Redact[OSM::Node, 294600000, 7, :visible],
                  Redact[OSM::Node, 294600000, 8, :visible],
                  Redact[OSM::Node, 294600000, 9, :visible],
                 ], actions)
  end

  # auto-generated test for node 296600000
  # http://wtfe.gryph.de/report/node/296600000
  # http://osm.mapki.com/history/node.php?id=296600000
  def test_automatic_node296600000
    history = [OSM::Node[[49.8415725, 18.2626519], :id => 296600000, :version => 1, :visible => true, :changeset => 626874, "addr:alternatenumber" => "2851", "addr:housenumber" => "49", "addr:postcode" => "70200", "addr:street" => "Hornopolní", "source:addr" => "uir_adr", "uir_adr:ADRESA_KOD" => "3197824"],    # not agreed,
               OSM::Node[[49.8415725, 18.2626519], :id => 296600000, :version => 2, :visible => true, :changeset => 1974539, "addr:conscriptionnumber" => "2851", "addr:housenumber" => "2851/49", "addr:postcode" => "70200", "addr:street" => "Hornopolní", "addr:streetnumber" => "49", "source:addr" => "uir_adr", "uir_adr:ADRESA_KOD" => "3197824"],    # agreed,
               OSM::Node[[49.8415725, 18.2626519], :id => 296600000, :version => 3, :visible => false, :changeset => 3605906, "addr:conscriptionnumber" => "2851", "addr:housenumber" => "2851/49", "addr:postcode" => "70200", "addr:street" => "Hornopolní", "addr:streetnumber" => "49", "source:addr" => "uir_adr", "uir_adr:ADRESA_KOD" => "3197824"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 296600000, 1, :hidden],
                  Redact[OSM::Node, 296600000, 2, :visible]
                 ], actions)
  end

  # auto-generated test for node 296700000
  # http://wtfe.gryph.de/report/node/296700000
  # http://osm.mapki.com/history/node.php?id=296700000
  def test_automatic_node296700000
    history = [OSM::Node[[50.0519987, 14.4563719], :id => 296700000, :version => 1, :visible => true, :changeset => 627275, "addr:alternatenumber" => "78", "addr:housenumber" => "37", "addr:postcode" => "14800", "addr:street" => "Michelská", "source:addr" => "uir_adr", "uir_adr:ADRESA_KOD" => "21903310"],    # not agreed,
               OSM::Node[[50.0519987, 14.4563719], :id => 296700000, :version => 2, :visible => true, :changeset => 1975646, "addr:conscriptionnumber" => "78", "addr:housenumber" => "78/37", "addr:postcode" => "14800", "addr:street" => "Michelská", "addr:streetnumber" => "37", "source:addr" => "uir_adr", "uir_adr:ADRESA_KOD" => "21903310"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 296700000],
                  Redact[OSM::Node, 296700000, 1, :hidden]
                 ], actions)
  end

  # auto-generated test for node 296800000
  # http://wtfe.gryph.de/report/node/296800000
  # http://osm.mapki.com/history/node.php?id=296800000
  def test_automatic_node296800000
    history = [OSM::Node[[50.2203731, 15.8606665], :id => 296800000, :version => 1, :visible => true, :changeset => 627739, "addr:alternatenumber" => "483", "addr:housenumber" => "5", "addr:postcode" => "50003", "addr:street" => "Vrbová", "source:addr" => "uir_adr", "uir_adr:ADRESA_KOD" => "23906740"],    # not agreed,
               OSM::Node[[50.2203731, 15.8606665], :id => 296800000, :version => 2, :visible => true, :changeset => 1966598, "addr:conscriptionnumber" => "483", "addr:housenumber" => "483/5", "addr:postcode" => "50003", "addr:street" => "Vrbová", "addr:streetnumber" => "5", "source:addr" => "uir_adr", "uir_adr:ADRESA_KOD" => "23906740"],    # agreed,
               OSM::Node[[50.2204098, 15.8607321], :id => 296800000, :version => 3, :visible => true, :changeset => 4168306, "addr:conscriptionnumber" => "483", "addr:housenumber" => "483/5", "addr:postcode" => "50003", "addr:street" => "Vrbová", "addr:streetnumber" => "5", "source:addr" => "uir_adr", "uir_adr:ADRESA_KOD" => "23906740"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[50.2204098, 15.8607321], :id => 296800000, :version => 3, :visible => true, :changeset => -1 ]],
                  Redact[OSM::Node, 296800000, 1, :hidden],  # this is an ugly test and it is never going to work. all tags in the v2 and v3
                  Redact[OSM::Node, 296800000, 2, :visible], # are obviously derived from v1 and therefore need to be removed, but it is
                  Redact[OSM::Node, 296800000, 3, :visible]  # virtually impossible to determine that automatically.
                 ], actions)
  end

  # auto-generated test for node 298200000
  # http://wtfe.gryph.de/report/node/298200000
  # http://osm.mapki.com/history/node.php?id=298200000
  def test_automatic_node298200000
    history = [OSM::Node[[48.2110024, 12.2775824], :id => 298200000, :version => 1, :visible => true, :changeset => 664258],    # not agreed,
               OSM::Node[[48.2111141, 12.2777228], :id => 298200000, :version => 2, :visible => true, :changeset => 10030890],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 298200000, 1, :hidden]
                 ], actions)
  end

  # auto-generated test for node 300300000
  # http://wtfe.gryph.de/report/node/300300000
  # http://osm.mapki.com/history/node.php?id=300300000
  def test_automatic_node300300000
    history = [OSM::Node[[51.3450984, 11.3616001], :id => 300300000, :version => 1, :visible => true, :changeset => 708960],    # not agreed,
               OSM::Node[[51.3450830, 11.3615643], :id => 300300000, :version => 2, :visible => true, :changeset => 741105],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 300300000],
                  Redact[OSM::Node, 300300000, 1, :hidden],
                  Redact[OSM::Node, 300300000, 2, :hidden]
                 ], actions)
  end

  # auto-generated test for node 301100000
  # http://wtfe.gryph.de/report/node/301100000
  # http://osm.mapki.com/history/node.php?id=301100000
  def test_automatic_node301100000
    history = [OSM::Node[[15.8794160, 120.6297401], :id => 301100000, :version => 1, :visible => true, :changeset => 723598, "highway" => "primary", "lanes" => "2", "name" => "Rosales"],    # not agreed,
               OSM::Node[[15.8794160, 120.6297401], :id => 301100000, :version => 2, :visible => true, :changeset => 768875],    # agreed,
               OSM::Node[[15.8794160, 120.6297401], :id => 301100000, :version => 3, :visible => true, :changeset => 319858],    # agreed,
               OSM::Node[[15.8794171, 120.6297857], :id => 301100000, :version => 4, :visible => true, :changeset => 8924832],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 301100000, 1, :hidden],
                  Redact[OSM::Node, 301100000, 2, :visible], # need to redact these because of lat/lon
                  Redact[OSM::Node, 301100000, 3, :visible]
                 ], actions)
  end

  # auto-generated test for node 302800000
  # http://wtfe.gryph.de/report/node/302800000
  # http://osm.mapki.com/history/node.php?id=302800000
  def test_automatic_node302800000
    history = [OSM::Node[[44.2365132, 8.3588799], :id => 302800000, :version => 1, :visible => true, :changeset => 127780],    # agreed,
               OSM::Node[[44.2365132, 8.3588799], :id => 302800000, :version => 2, :visible => true, :changeset => 127780],    # agreed,
               OSM::Node[[44.2365132, 8.3588799], :id => 302800000, :version => 3, :visible => true, :changeset => 496426],    # agreed,
               OSM::Node[[44.2365132, 8.3588799], :id => 302800000, :version => 4, :visible => true, :changeset => 496426],    # agreed,
               OSM::Node[[44.2365132, 8.3588799], :id => 302800000, :version => 5, :visible => true, :changeset => 496426],    # agreed,
               OSM::Node[[44.2365132, 8.3588799], :id => 302800000, :version => 6, :visible => true, :changeset => 496426],    # agreed,
               OSM::Node[[44.2365132, 8.3588799], :id => 302800000, :version => 7, :visible => true, :changeset => 496426],    # agreed,
               OSM::Node[[44.2365132, 8.3588799], :id => 302800000, :version => 8, :visible => true, :changeset => 496426],    # agreed,
               OSM::Node[[44.2365132, 8.3588799], :id => 302800000, :version => 9, :visible => true, :changeset => 496426],    # agreed,
               OSM::Node[[44.2365132, 8.3588799], :id => 302800000, :version => 10, :visible => true, :changeset => 496426],    # agreed,
               OSM::Node[[44.2365132, 8.3588799], :id => 302800000, :version => 11, :visible => true, :changeset => 496426],    # agreed,
               OSM::Node[[44.2365132, 8.3588799], :id => 302800000, :version => 12, :visible => true, :changeset => 496426],    # agreed,
               OSM::Node[[44.2365132, 8.3588799], :id => 302800000, :version => 13, :visible => true, :changeset => 180424],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions) # no redaction as v13 is trivial. redaction would mean that v14 needs to be created!
  end

  # auto-generated test for node 306000000
  # http://wtfe.gryph.de/report/node/306000000
  # http://osm.mapki.com/history/node.php?id=306000000
  def test_automatic_node306000000
    history = [OSM::Node[[51.4560389, 7.9373031], :id => 306000000, :version => 1, :visible => true, :changeset => 472131],    # not agreed,
               OSM::Node[[51.4560389, 7.9373031], :id => 306000000, :version => 2, :visible => true, :changeset => 82919],    # agreed,
               OSM::Node[[51.4560389, 7.9373031], :id => 306000000, :version => 3, :visible => true, :changeset => 82919],    # agreed,
               OSM::Node[[51.4560389, 7.9373031], :id => 306000000, :version => 4, :visible => true, :changeset => 82919],    # agreed,
               OSM::Node[[51.4560735, 7.9372426], :id => 306000000, :version => 5, :visible => true, :changeset => 1029473],    # agreed,
               OSM::Node[[51.4561396, 7.9372108], :id => 306000000, :version => 6, :visible => true, :changeset => 4028121],    # agreed,
               OSM::Node[[51.4561194, 7.9372108], :id => 306000000, :version => 7, :visible => true, :changeset => 7377616],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 306000000, 1, :hidden],
                  Redact[OSM::Node, 306000000, 2, :visible],
                  Redact[OSM::Node, 306000000, 3, :visible],
                  Redact[OSM::Node, 306000000, 4, :visible],
                 ], actions)
  end

  # auto-generated test for node 306200000
  # http://wtfe.gryph.de/report/node/306200000
  # http://osm.mapki.com/history/node.php?id=306200000
  def test_automatic_node306200000
    history = [OSM::Node[[-19.1397581, 146.7960815], :id => 306200000, :version => 1, :visible => true, :changeset => 491689],    # agreed,
               OSM::Node[[-19.1397581, 146.7960815], :id => 306200000, :version => 2, :visible => true, :changeset => 491689],    # agreed,
               OSM::Node[[-19.1397581, 146.7960815], :id => 306200000, :version => 3, :visible => true, :changeset => 1676377],    # not agreed,
               OSM::Node[[-19.1398359, 146.7960432], :id => 306200000, :version => 4, :visible => true, :changeset => 1676377],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[-19.1397581, 146.7960815], :id => 306200000, :version => 4, :visible => true, :changeset => -1]],
                  Redact[OSM::Node, 306200000, 4, :hidden] # no redaction for v3 because it is trivial
                 ], actions)
  end

  # auto-generated test for node 307300000
  # http://wtfe.gryph.de/report/node/307300000
  # http://osm.mapki.com/history/node.php?id=307300000
  def test_automatic_node307300000
    history = [OSM::Node[[46.6359055, 11.1717468], :id => 307300000, :version => 1, :visible => true, :changeset => 558435],    # agreed,
               OSM::Node[[46.6359055, 11.1717468], :id => 307300000, :version => 2, :visible => true, :changeset => 341217],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions)
  end


  # auto-generated test for node 323500000
  # http://wtfe.gryph.de/report/node/323500000
  # http://osm.mapki.com/history/node.php?id=323500000
  def test_automatic_node323500000
    history = [OSM::Node[[-32.1110171, 116.0735957], :id => 323500000, :version => 1, :visible => true, :changeset => 682651],    # agreed,
               OSM::Node[[-32.1110171, 116.0735957], :id => 323500000, :version => 2, :visible => true, :changeset => 682651],    # agreed,
               OSM::Node[[-32.1110171, 116.0735957], :id => 323500000, :version => 3, :visible => true, :changeset => 682651],    # agreed,
               OSM::Node[[-32.1110171, 116.0735957], :id => 323500000, :version => 4, :visible => true, :changeset => 682651],    # agreed,
               OSM::Node[[-32.1110171, 116.0735957], :id => 323500000, :version => 5, :visible => true, :changeset => 682651],    # agreed,
               OSM::Node[[-32.1110171, 116.0735957], :id => 323500000, :version => 6, :visible => true, :changeset => 682651],    # agreed,
               OSM::Node[[-32.1110171, 116.0735957], :id => 323500000, :version => 7, :visible => true, :changeset => 682651],    # agreed,
               OSM::Node[[-32.1110171, 116.0735957], :id => 323500000, :version => 8, :visible => true, :changeset => 682651],    # agreed,
               OSM::Node[[-32.1110171, 116.0735957], :id => 323500000, :version => 9, :visible => true, :changeset => 840201],    # agreed,
               OSM::Node[[-32.1110171, 116.0735957], :id => 323500000, :version => 10, :visible => true, :changeset => 840201],    # agreed,
               OSM::Node[[-32.1109644, 116.0736602], :id => 323500000, :version => 11, :visible => true, :changeset => 3262019],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[-32.1110171, 116.0735957], :id => 323500000, :version => 11, :visible => true, :changeset => -1]],
                  Redact[OSM::Node, 323500000, 11, :hidden]
                 ], actions)
  end

  # auto-generated test for node 329400000
  # http://wtfe.gryph.de/report/node/329400000
  # http://osm.mapki.com/history/node.php?id=329400000
  def test_automatic_node329400000
    history = [OSM::Node[[60.2528979, 24.8937219], :id => 329400000, :version => 1, :visible => true, :changeset => 747434],    # not agreed,
               OSM::Node[[60.2529114, 24.8936980], :id => 329400000, :version => 2, :visible => true, :changeset => 9408627],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 329400000, 1, :hidden]
                 ], actions)
  end

  # auto-generated test for node 342200000
  # http://wtfe.gryph.de/report/node/342200000
  # http://osm.mapki.com/history/node.php?id=342200000
  def test_automatic_node342200000
    history = [OSM::Node[[47.6624579, 11.0849960], :id => 342200000, :version => 1, :visible => true, :changeset => 193121, "created_by" => "Merkaartor 0.12"],    # agreed,
               OSM::Node[[47.6624579, 11.0849960], :id => 342200000, :version => 2, :visible => true, :changeset => 772639],    # agreed,
               OSM::Node[[47.6624579, 11.0849960], :id => 342200000, :version => 3, :visible => true, :changeset => 1550007, "created_by" => "RambaZamba"],    # not agreed,
               OSM::Node[[47.6624579, 11.0849960], :id => 342200000, :version => 4, :visible => true, :changeset => 2118817],    # agreed,
               OSM::Node[[47.6624579, 11.0849960], :id => 342200000, :version => 5, :visible => true, :changeset => 2251292],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions) # don't bother redacting v3 or v5 since they are trivial.
  end

  # auto-generated test for node 347600000
  # http://wtfe.gryph.de/report/node/347600000
  # http://osm.mapki.com/history/node.php?id=347600000
  def test_automatic_node347600000
    history = [OSM::Node[[34.4717926, 77.7073800], :id => 347600000, :version => 1, :visible => true, :changeset => 562457],    # agreed,
               OSM::Node[[34.4717926, 77.7073800], :id => 347600000, :version => 2, :visible => true, :changeset => 562457],    # agreed,
               OSM::Node[[34.4717926, 77.7073800], :id => 347600000, :version => 3, :visible => false, :changeset => 1865166],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions) # must be empty since deletion is not copyrightable.
  end

  # auto-generated test for node 358900000
  # http://wtfe.gryph.de/report/node/358900000
  # http://osm.mapki.com/history/node.php?id=358900000
  def test_automatic_node358900000
    history = [OSM::Node[[-30.7394796, 151.9595637], :id => 358900000, :version => 1, :visible => true, :changeset => 784581],    # not agreed,
               OSM::Node[[-30.7394796, 151.9595637], :id => 358900000, :version => 2, :visible => true, :changeset => 1980546],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 358900000],
                  Redact[OSM::Node, 358900000, 1, :hidden],
                  Redact[OSM::Node, 358900000, 2, :visible],
                 ], actions)
  end

  # auto-generated test for node 359600000
  # http://wtfe.gryph.de/report/node/359600000
  # http://osm.mapki.com/history/node.php?id=359600000
  def test_automatic_node359600000
    history = [OSM::Node[[52.5995847, 103.8857783], :id => 359600000, :version => 1, :visible => true, :changeset => 797148],    # agreed,
               OSM::Node[[52.5997810, 103.8858364], :id => 359600000, :version => 2, :visible => true, :changeset => 4368338],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[52.5995847, 103.8857783], :id => 359600000, :version => 2, :visible => true, :changeset => -1]],
                  Redact[OSM::Node, 359600000, 2, :hidden]
                 ], actions)
  end


  # auto-generated test for node 370300000
  # http://wtfe.gryph.de/report/node/370300000
  # http://osm.mapki.com/history/node.php?id=370300000
  def test_automatic_node370300000
    history = [OSM::Node[[34.7807200, 33.3208351], :id => 370300000, :version => 1, :visible => true, :changeset => 252822],    # not agreed,
               OSM::Node[[34.7804181, 33.3209150], :id => 370300000, :version => 2, :visible => true, :changeset => 909413],    # not agreed,
               OSM::Node[[34.7804933, 33.3209439], :id => 370300000, :version => 3, :visible => true, :changeset => 926323],    # not agreed,
               OSM::Node[[34.7804933, 33.3209439], :id => 370300000, :version => 4, :visible => false, :changeset => 1164578],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 370300000, 1, :hidden],
                  Redact[OSM::Node, 370300000, 2, :hidden],
                  Redact[OSM::Node, 370300000, 3, :hidden]
                 ], actions)
  end

  # auto-generated test for node 382300000
  # http://wtfe.gryph.de/report/node/382300000
  # http://osm.mapki.com/history/node.php?id=382300000
  def test_automatic_node382300000
    history = [OSM::Node[[28.9089300, -81.9073500], :id => 382300000, :version => 1, :visible => true, :changeset => 914936],    # agreed,
               OSM::Node[[28.9089300, -81.9073500], :id => 382300000, :version => 2, :visible => false, :changeset => 2647076],    # not agreed,
               OSM::Node[[28.9089300, -81.9073500], :id => 382300000, :version => 3, :visible => true, :changeset => 6014368],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions) # deletion and undeletion
  end

  # auto-generated test for node 415400000
  # http://wtfe.gryph.de/report/node/415400000
  # http://osm.mapki.com/history/node.php?id=415400000
  def test_automatic_node415400000
    history = [OSM::Node[[52.4522972, 13.3844426], :id => 415400000, :version => 1, :visible => true, :changeset => 1415009, "amenity" => "post_box", "operator" => "Deutsche Post"],    # not agreed,
               OSM::Node[[52.4522957, 13.3844315], :id => 415400000, :version => 2, :visible => true, :changeset => 1420886, "amenity" => "post_box", "operator" => "Deutsche Post"],    # not agreed,
               OSM::Node[[52.4522917, 13.3844323], :id => 415400000, :version => 3, :visible => true, :changeset => 1423271, "amenity" => "post_box", "operator" => "Deutsche Post"],    # not agreed,
               OSM::Node[[52.4522917, 13.3844323], :id => 415400000, :version => 4, :visible => true, :changeset => 2952910, "amenity" => "post_box", "operator" => "Deutsche Post AG"],    # not agreed,
               OSM::Node[[52.4522917, 13.3844323], :id => 415400000, :version => 5, :visible => true, :changeset => 7081667, "addr:city" => "Berlin", "addr:country" => "DE", "amenity" => "post_box", "operator" => "Deutsche Post AG"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Node, 415400000],
                  Redact[OSM::Node, 415400000, 1, :hidden],
                  Redact[OSM::Node, 415400000, 2, :hidden],
                  Redact[OSM::Node, 415400000, 3, :hidden],
                  Redact[OSM::Node, 415400000, 4, :hidden],
                  Redact[OSM::Node, 415400000, 4, :visible]
                 ], actions)
  end

  # auto-generated test for node 558100000
  # http://wtfe.gryph.de/report/node/558100000
  # http://osm.mapki.com/history/node.php?id=558100000
  def test_automatic_node558100000
    history = [OSM::Node[[53.6393426, 10.0628143], :id => 558100000, :version => 1, :visible => true, :changeset => 3047373],    # agreed,
               OSM::Node[[53.6393434, 10.0628227], :id => 558100000, :version => 2, :visible => true, :changeset => 3086612],    # agreed,
               OSM::Node[[53.6393933, 10.0626008], :id => 558100000, :version => 3, :visible => true, :changeset => 4446312],    # agreed,
               OSM::Node[[53.6393106, 10.0628476], :id => 558100000, :version => 4, :visible => true, :changeset => 4704784],    # not agreed,
               OSM::Node[[53.6393197, 10.0627587], :id => 558100000, :version => 5, :visible => true, :changeset => 6508173],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[53.6393933, 10.0626008], :id => 558100000, :version => 5, :visible => true, :changeset => -1]],
                  Redact[OSM::Node, 558100000, 4, :hidden],
                  Redact[OSM::Node, 558100000, 5, :hidden]
                 ], actions)
  end

  # auto-generated test for node 612500000
  # http://wtfe.gryph.de/report/node/612500000
  # http://osm.mapki.com/history/node.php?id=612500000
  def test_automatic_node612500000
    history = [OSM::Node[[13.6650384, -89.2229090], :id => 612500000, :version => 1, :visible => true, :changeset => 3605398],    # not agreed,
               OSM::Node[[13.6650736, -89.2229705], :id => 612500000, :version => 2, :visible => true, :changeset => 8017592],    # agreed,
               OSM::Node[[13.6651145, -89.2229384], :id => 612500000, :version => 3, :visible => true, :changeset => 9963249, "highway" => "turning_circle"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 612500000, 1, :hidden]
                 ], actions)
  end

  # auto-generated test for node 694100000
  # http://wtfe.gryph.de/report/node/694100000
  # http://osm.mapki.com/history/node.php?id=694100000
  def test_automatic_node694100000
    history = [OSM::Node[[49.7704063, 73.1356740], :id => 694100000, :version => 1, :visible => true, :changeset => 4402440],    # not agreed,
               OSM::Node[[49.7703603, 73.1359290], :id => 694100000, :version => 2, :visible => true, :changeset => 4783868],    # agreed,
               OSM::Node[[49.7702438, 73.1357167], :id => 694100000, :version => 3, :visible => true, :changeset => 7229766],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Node, 694100000, 1, :hidden]
                 ], actions)
  end
  # auto-generated test for node 836300000
  # http://wtfe.gryph.de/report/node/836300000
  # http://osm.mapki.com/history/node.php?id=836300000
  def test_automatic_node836300000
    history = [OSM::Node[[-38.1326256, 144.3556072], :id => 836300000, :version => 1, :visible => true, :changeset => 5338157],    # agreed,
               OSM::Node[[-38.1326273, 144.3555853], :id => 836300000, :version => 2, :visible => true, :changeset => 5545771],    # agreed,
               OSM::Node[[-38.1326663, 144.3555605], :id => 836300000, :version => 3, :visible => true, :changeset => 7645827],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[-38.1326273, 144.3555853], :id => 836300000, :version => 3, :visible => true, :changeset => -1]],
                  Redact[OSM::Node, 836300000, 3, :hidden]
                 ], actions)
  end

  # auto-generated test for node 1042100000
  # http://wtfe.gryph.de/report/node/1042100000
  # http://osm.mapki.com/history/node.php?id=1042100000
  def test_automatic_node1042100000
    history = [OSM::Node[[-26.2833004, 151.8580017], :id => 1042100000, :version => 1, :visible => true, :changeset => 6682943, "aeroway" => "aerodrome", "iata" => "WDI", "name" => "Wondai Airport", "source" => "ourairports.com"],    # agreed,
               OSM::Node[[-26.2841981, 151.8628212], :id => 1042100000, :version => 2, :visible => true, :changeset => 7426168, "aeroway" => "aerodrome", "iata" => "WDI", "name" => "Wondai"],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Node[[-26.2833004, 151.8580017], :id => 1042100000, :version => 2, :visible => true, :changeset => -1, "aeroway" => "aerodrome", "iata" => "WDI", "name" => "Wondai Airport"]],
                  Redact[OSM::Node, 1042100000, 2, :hidden]
                 ], actions)
  end

  # auto-generated test for way 2630000
  # http://wtfe.gryph.de/report/way/2630000
  # http://osm.mapki.com/history/way.php?id=2630000
  def test_automatic_way2630000
    history = [OSM::Way[[11766021,11766007,11765997,11768482], :id => 2630000, :version => 1, :visible => true, :changeset => 97823, "bicycle" => "yes", "foot" => "yes", "highway" => "residential", "maxspeed" => "30", "motorcar" => "yes", "name" => "Winckelmannstraße"],    # agreed,
               OSM::Way[[11766021,11766007,88086491,11765997,11768482], :id => 2630000, :version => 2, :visible => true, :changeset => 321847, "bicycle" => "yes", "created_by" => "Potlatch alpha", "foot" => "yes", "highway" => "residential", "maxspeed" => "30", "motorcar" => "yes", "name" => "Winckelmannstraße"],    # agreed,
               OSM::Way[[11766021,11766007,88086491,88089061,11765997,11768482], :id => 2630000, :version => 3, :visible => true, :changeset => 321847, "bicycle" => "yes", "created_by" => "Potlatch alpha", "foot" => "yes", "highway" => "residential", "maxspeed" => "30", "motorcar" => "yes", "name" => "Winckelmannstraße"],    # agreed,
               OSM::Way[[251755945,251755946,11766021,11766007,88086491,88089061,11765997,11768482], :id => 2630000, :version => 4, :visible => true, :changeset => 309003, "bicycle" => "yes", "created_by" => "Potlatch alpha", "foot" => "yes", "highway" => "residential", "maxspeed" => "30", "motorcar" => "yes", "name" => "Winckelmannstraße"],    # agreed,
               OSM::Way[[251755945,251755946,11766021,11766007,88086491,88089061,11765997,11768482], :id => 2630000, :version => 5, :visible => true, :changeset => 306014, "bicycle" => "yes", "created_by" => "Potlatch alpha", "foot" => "yes", "highway" => "residential", "maxspeed" => "30", "motorcar" => "yes", "name" => "Winckelmannstraße", "postal_code" => "01069"],    # agreed,
               OSM::Way[[251755945,251755946,11766021,309378724,11766007,88086491,88089061,11765997,11768482], :id => 2630000, :version => 6, :visible => true, :changeset => 663044, "bicycle" => "yes", "created_by" => "Potlatch 0.10f", "foot" => "yes", "highway" => "residential", "maxspeed" => "30", "motorcar" => "yes", "name" => "Winckelmannstraße", "postal_code" => "01069"],    # not agreed,
               OSM::Way[[251755945,251755946,11766021,309378724,11766007,88086491,88089061,11765997,11768482], :id => 2630000, :version => 7, :visible => true, :changeset => 855544, "bicycle" => "yes", "foot" => "yes", "highway" => "residential", "maxspeed" => "30", "motorcar" => "yes", "name" => "Winckelmannstraße", "postal_code" => "01069"],    # agreed,
               OSM::Way[[251755945,251755946,11766021,309378724,11766007,88086491,88089061,463216309,11765997,11768482], :id => 2630000, :version => 8, :visible => true, :changeset => 2129137, "bicycle" => "yes", "foot" => "yes", "highway" => "residential", "maxspeed" => "30", "motorcar" => "yes", "name" => "Winckelmannstraße", "postal_code" => "01069"],    # agreed,
               OSM::Way[[251755945,251755946,11766021,309378724,11766007], :id => 2630000, :version => 9, :visible => true, :changeset => 2222941, "highway" => "residential", "maxspeed" => "30", "name" => "Winckelmannstraße", "postal_code" => "01069", "surface" => "paved"],    # agreed,
               OSM::Way[[251755945,251755946,11766021,309378724,11766007], :id => 2630000, :version => 10, :visible => true, :changeset => 2875819, "highway" => "residential", "lit" => "yes", "maxspeed" => "30", "name" => "Winckelmannstraße", "postal_code" => "01069", "surface" => "paved"],    # agreed,
               OSM::Way[[251755945,251755946,11766021,309378724,11766007], :id => 2630000, :version => 11, :visible => true, :changeset => 4291131, "highway" => "residential", "lit" => "yes", "maxspeed" => "30", "name" => "Winckelmannstraße", "postal_code" => "01069", "surface" => "asphalt", "width" => "9"],    # agreed,
               OSM::Way[[251755945,251755946,11766021,309378724,11766007], :id => 2630000, :version => 12, :visible => true, :changeset => 8516445, "highway" => "residential", "lit" => "yes", "maxspeed" => "30", "name" => "Winckelmannstraße", "postal_code" => "01069", "surface:left" => "asphalt", "surface:right" => "cobblestone", "width" => "9"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Way[[251755945,251755946,11766021,11766007], :id => 2630000, :version => 12, :visible => true, :changeset => -1, "highway" => "residential", "lit" => "yes", "maxspeed" => "30", "name" => "Winckelmannstraße", "postal_code" => "01069", "surface:left" => "asphalt", "surface:right" => "cobblestone", "width" => "9"]],
                  Redact[OSM::Way, 2630000, 6, :hidden],
                  Redact[OSM::Way, 2630000, 7, :visible],
                  Redact[OSM::Way, 2630000, 8, :visible],
                  Redact[OSM::Way, 2630000, 9, :visible],
                  Redact[OSM::Way, 2630000, 10, :visible],
                  Redact[OSM::Way, 2630000, 11, :visible],
                  Redact[OSM::Way, 2630000, 12, :visible]
                 ], actions)
  end

  # auto-generated test for way 3870000
  # http://wtfe.gryph.de/report/way/3870000
  # http://osm.mapki.com/history/way.php?id=3870000
  def test_automatic_way3870000
    history = [OSM::Way[[362860,362861,362862,362863,362864], :id => 3870000, :version => 1, :visible => true, :changeset => 144098, "abutters" => "residential", "created_by" => "JOSM", "highway" => "secondary", "name" => "Penn Hill Road"],    # agreed,
               OSM::Way[[362860,362861,362862,362863,362864], :id => 3870000, :version => 2, :visible => true, :changeset => 286004, "abutters" => "residential", "created_by" => "JOSM", "highway" => "secondary", "name" => "Penn Hill Avenue"],    # not agreed,
               OSM::Way[[362860,362861,362862,305379189,362863,362864], :id => 3870000, :version => 3, :visible => true, :changeset => 420331, "abutters" => "residential", "created_by" => "Potlatch 0.10e", "highway" => "secondary", "name" => "Penn Hill Avenue"],    # agreed,
               OSM::Way[[362860,362861,362862,305379203,305379189,362863,362864], :id => 3870000, :version => 4, :visible => true, :changeset => 420331, "abutters" => "residential", "created_by" => "Potlatch 0.10e", "highway" => "secondary", "name" => "Penn Hill Avenue"],    # agreed,
               OSM::Way[[362860,362861,362862,305379203,305379189,362863,362864], :id => 3870000, :version => 5, :visible => true, :changeset => 760739, "abutters" => "residential", "created_by" => "Potlatch 0.10f", "highway" => "tertiary", "name" => "Penn Hill Avenue"],    # agreed,
               OSM::Way[[362860,362861,362862,305379203,305379189,362863,388954515,362864], :id => 3870000, :version => 6, :visible => true, :changeset => 1050775, "abutters" => "residential", "created_by" => "Potlatch 0.10f", "highway" => "tertiary", "name" => "Penn Hill Avenue"],    # agreed,
               OSM::Way[[362860,362861], :id => 3870000, :version => 7, :visible => true, :changeset => 5415738, "abutters" => "residential", "highway" => "tertiary", "name" => "Penn Hill Avenue"],    # agreed,
               OSM::Way[[362860,362861], :id => 3870000, :version => 8, :visible => true, :changeset => 7500227, "abutters" => "residential", "highway" => "tertiary", "name" => "Kingsbridge Road"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Way, 3870000, 2, :hidden],
                  Redact[OSM::Way, 3870000, 3, :hidden],
                  Redact[OSM::Way, 3870000, 4, :hidden],
                  Redact[OSM::Way, 3870000, 5, :hidden],
                  Redact[OSM::Way, 3870000, 6, :hidden],
                  Redact[OSM::Way, 3870000, 7, :hidden]
                 ], actions)
  end

  # auto-generated test for way 3990000
  # http://wtfe.gryph.de/report/way/3990000
  # http://osm.mapki.com/history/way.php?id=3990000
  def test_automatic_way3990000
    history = [OSM::Way[[12620655,590359,590360,590361,12620677,590362,20850544,20850545,20850546,12620668,590163,20850547,20850548,20275989,20850551], :id => 3990000, :version => 1, :visible => true, :changeset => 515754, "created_by" => "JOSM", "highway" => "minor", "name" => "Kronenstraße"],    # agreed,
               OSM::Way[[12620655,590359,590360,590361,12620677,590362,20850544,20850545,20850546,12620668,590163,20850547,20850548,20275989,71706403,20850551], :id => 3990000, :version => 2, :visible => true, :changeset => 185961, "created_by" => "Potlatch alpha", "highway" => "minor", "name" => "Kronenstraße"],    # agreed,
               OSM::Way[[12620655,590359,590360,590361,12620677,590362,20850544,20850545,20850546,12620668,590163,20850547,20850548,20275989,71706396], :id => 3990000, :version => 3, :visible => true, :changeset => 185961, "created_by" => "Potlatch alpha", "highway" => "minor", "name" => "Kronenstraße"],    # agreed,
               OSM::Way[[12620655,590359,590360,590361,12620677,590362,20850544,20850545,20850546,12620668,590163,20850547,20275989,71706396], :id => 3990000, :version => 4, :visible => true, :changeset => 185961, "created_by" => "Potlatch alpha", "highway" => "minor", "name" => "Kronenstraße"],    # agreed,
               OSM::Way[[12620655,590359,590360,590361,12620677,590362,20850544,20850545,12620668,590163,20275989,71706396], :id => 3990000, :version => 5, :visible => true, :changeset => 185961, "created_by" => "Potlatch alpha", "highway" => "minor", "name" => "Kronenstraße"],    # agreed,
               OSM::Way[[12620655,590359,590360,590361,12620677,590362,20850544,20850545,12620668], :id => 3990000, :version => 6, :visible => true, :changeset => 185961, "created_by" => "Potlatch alpha", "highway" => "minor", "name" => "Kronenstraße"],    # agreed,
               OSM::Way[[12620655,590359,590360,590361,12620677,590362,20850544,20850545,12620668,71711299], :id => 3990000, :version => 7, :visible => true, :changeset => 211042, "created_by" => "Potlatch alpha", "highway" => "minor", "name" => "Kronenstraße"],    # agreed,
               OSM::Way[[12620655,590359,590360,590361,12620677,590362,20850544,20850545,12620668,71711299], :id => 3990000, :version => 8, :visible => true, :changeset => 97142, "created_by" => "Potlatch 0.5d", "highway" => "tertiary", "name" => "Kronenstraße"],    # not agreed,
               OSM::Way[[12620655,590359,590360,590361,12620677,590362,20850544,20850545,12620668,71711299], :id => 3990000, :version => 9, :visible => true, :changeset => 129641, "created_by" => "Potlatch 0.9c", "highway" => "residential", "name" => "Kronenstraße"],    # agreed,
               OSM::Way[[12620655,590359,590360,590361,12620677,590362], :id => 3990000, :version => 10, :visible => true, :changeset => 129641, "created_by" => "Potlatch 0.9c", "highway" => "residential", "name" => "Kronenstraße"],    # agreed,
               OSM::Way[[12620655,590359], :id => 3990000, :version => 11, :visible => true, :changeset => 290414, "created_by" => "Potlatch 0.9c", "highway" => "residential", "maxspeed" => "30", "name" => "Kronenstraße", "noexit" => "yes"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Way[[12620655,590359], :id => 3990000, :version => 11, :visible => true, :changeset => -1, "created_by" => "Potlatch 0.9c", "highway" => "residential", "maxspeed" => "30", "name" => "Kronenstraße", "noexit" => "yes"]],
                  Redact[OSM::Way, 3990000, 8, :hidden]
                 ], actions)
  end

  # auto-generated test for way 4190000
  # http://wtfe.gryph.de/report/way/4190000
  # http://osm.mapki.com/history/way.php?id=4190000
  def test_automatic_way4190000
    history = [OSM::Way[[14043177,14043179,14043180,14043182,14043186,14043188,14043190,14043192,14043193,14043195,14043199,14043200,14043202,14043204,14043206,14043209,14043211,14043212,14043215,14043218,14043219,14043221,12511469], :id => 4190000, :version => 1, :visible => true, :changeset => 186997, "created_by" => "JOSM", "highway" => "residential", "name" => "Richards Street"],    # agreed,
               OSM::Way[[14043177,14043179,14043180,14043182,14043186,14043188,14043190,14043192,14043193,14043195,14043199,14043200,14043202,14043204,14043206,14043209,14043211,14043212,14043215,14043218,14043219,14043221,12511469], :id => 4190000, :version => 2, :visible => true, :changeset => 5156250, "highway" => "residential", "maxspeed" => "50", "maxspeed:source" => "default residential speed limit in Australia", "name" => "Richards Street"],    # not agreed,
               OSM::Way[[14043177,14043179,14043180,14043182,14043186,14043188,14043190,14043192,14043193,14043195,14043199,14043200,14043202,14043204,14043206,14043209,14043211,14043212,14043215,14043218,14043219,14043221,12511469], :id => 4190000, :version => 3, :visible => true, :changeset => 10327743, "highway" => "residential", "name" => "Richards Street"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Way, 4190000, 2, :hidden]
                 ], actions)
  end

  # auto-generated test for way 4270000
  # http://wtfe.gryph.de/report/way/4270000
  # http://osm.mapki.com/history/way.php?id=4270000
  def test_automatic_way4270000
    history = [OSM::Way[[15849245,15849246,15849249,15849250,15849251,15849248,15849252,15849253,15849254,15849256,15849255,15849257,15849247,15849258,15849259,15679551], :id => 4270000, :version => 1, :visible => true, :changeset => 80649, "tracktype" => "grade1"],    # agreed,
               OSM::Way[[15849245,15849246,15849249,15849250,15849251,15849248,15849252,15849253,15849254,15849256,15849255,15849257,15849247,15849258,15849259,15679551], :id => 4270000, :version => 2, :visible => true, :changeset => 4969063, "highway" => "track", "tracktype" => "grade1"],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Way[[15849245,15849246,15849249,15849250,15849251,15849248,15849252,15849253,15849254,15849256,15849255,15849257,15849247,15849258,15849259,15679551], :id => 4270000, :version => 2, :visible => true, :changeset => -1, "tracktype" => "grade1"]],
                  Redact[OSM::Way, 4270000, 2, :hidden]
                 ], actions)
  end

  # auto-generated test for way 4310000
  # http://wtfe.gryph.de/report/way/4310000
  # http://osm.mapki.com/history/way.php?id=4310000
  def test_automatic_way4310000
    history = [OSM::Way[[26108593,26108580,26108597,26108595,26108594], :id => 4310000, :version => 1, :visible => true, :changeset => 98450, "created_by" => "JOSM", "highway" => "residential", "name" => "Waterhouse Lane"],    # agreed,
               OSM::Way[[251910922,251910923,251910924,251910925,251910926,251910927,26108593,26108580,26108597,26108595,26108594], :id => 4310000, :version => 2, :visible => true, :changeset => 314715, "created_by" => "Potlatch 0.7b", "highway" => "residential", "name" => "Waterhouse Lane"],    # agreed,
               OSM::Way[[251910922,251910923,251910924,251910925,251910926,251911132,251910927,26108593,26108580,26108597,26108595,26108594], :id => 4310000, :version => 3, :visible => true, :changeset => 314715, "created_by" => "Potlatch 0.7b", "highway" => "residential", "name" => "Waterhouse Lane"],    # agreed,
               OSM::Way[[251910922,251910923,251910924,251910925,251910926,251911132,251910927,26108593,26108580,26108597,26108595], :id => 4310000, :version => 4, :visible => true, :changeset => 282291, "created_by" => "Potlatch 0.7b", "highway" => "residential", "name" => "Waterhouse Lane"],    # not agreed,
               OSM::Way[[251910922,251910923,251910924,251910925,251910926,251911132,251910927,412769781,26108580,26108597,26108595], :id => 4310000, :version => 5, :visible => true, :changeset => 1358109, "created_by" => "Potlatch 0.7b", "highway" => "residential", "name" => "Waterhouse Lane"],    # agreed,
               OSM::Way[[251910922,251910923,251910924,251910925,251910926,251911132,251910927,412769781,26108580], :id => 4310000, :version => 6, :visible => true, :changeset => 2912307, "highway" => "residential", "name" => "Waterhouse Lane"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions) # no need to redact - just node deletion
  end

  # auto-generated test for way 4520000
  # http://wtfe.gryph.de/report/way/4520000
  # http://osm.mapki.com/history/way.php?id=4520000
  def test_automatic_way4520000
    history = [OSM::Way[[651683,561347], :id => 4520000, :version => 1, :visible => true, :changeset => 27147, "created_by" => "JOSM", "highway" => "primary", "oneway" => "yes"],    # not agreed,
               OSM::Way[[651683,561347], :id => 4520000, :version => 2, :visible => true, :changeset => 893398, "created_by" => "JOSM", "cycleway" => "opposite_lane", "highway" => "primary", "oneway" => "yes"],    # not agreed,
               OSM::Way[[651683,561347], :id => 4520000, :version => 3, :visible => true, :changeset => 1922529, "cycleway" => "opposite_lane", "highway" => "primary", "oneway" => "yes"],    # agreed,
               OSM::Way[[380290033,561347], :id => 4520000, :version => 4, :visible => true, :changeset => 2723934, "cycleway" => "opposite_lane", "highway" => "primary", "oneway" => "yes"],    # agreed,
               OSM::Way[[569670924,380290033,569670928,569670930], :id => 4520000, :version => 5, :visible => true, :changeset => 3199269, "cycleway" => "opposite_lane", "highway" => "primary_link", "oneway" => "yes"],    # agreed,
               OSM::Way[[569670924,380290033,569670928,569670930], :id => 4520000, :version => 6, :visible => true, :changeset => 4775032, "highway" => "primary_link", "oneway" => "yes"],    # agreed,
               OSM::Way[[569670924,761117130,380290033,569670928,569670930], :id => 4520000, :version => 7, :visible => true, :changeset => 4872568, "highway" => "primary_link", "oneway" => "yes"],    # agreed,
               OSM::Way[[569670924,761117130,380290033,1109578859,569670928,569670930], :id => 4520000, :version => 8, :visible => true, :changeset => 7014681, "highway" => "primary_link", "oneway" => "yes"],    # agreed,
               OSM::Way[[569670924,761117130,380290033,1109578859,569670928,569670930], :id => 4520000, :version => 9, :visible => true, :changeset => 10181820, "highway" => "primary_link", "maxspeed" => "50", "oneway" => "yes", "source:maxspeed" => "DE:urban"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Way[[569670924,761117130,380290033,1109578859,569670928,569670930], :id => 4520000, :version => 9, :visible => true, :changeset => -1, "highway" => "primary_link", "maxspeed" => "50", "source:maxspeed" => "DE:urban"]],
                  Redact[OSM::Way, 4520000, 1, :hidden],
                  Redact[OSM::Way, 4520000, 2, :hidden]
                 ], actions)
  end

  # auto-generated test for way 4630000
  # http://wtfe.gryph.de/report/way/4630000
  # http://osm.mapki.com/history/way.php?id=4630000
  def test_automatic_way4630000
    history = [OSM::Way[[29403707,33211953,29405458,29405459,29405460,29405461,29405462,29405463,29405464,29405465,29405466,29405467,29405468,29405469,29405470,29405471,29405472,29405473,29405474,29405475,29405476,29405477,29405478,29405479,29405480,29405481,29405482,29405483,29405484,29405485,29405486,29405487,29405488,29405489,29405490,29405491,29405492,29405493,29405494,29405495,29405496,29405497,29405498,29405499,29405500,29405501,29405502,29405503,29405504,29405505,29405506,29405507,29405508,29405509,29405510,29405511,29405512,29405513,29405514,29405515,29405516,29405517,29405518,29405519,29405520,29405521,29405522,29405523,29405524,29405525,29405526,29405527,29405528,29405529,29405530,29405531,29405532,29405533,29405534,29405535,29405536,29405537,29405452], :id => 4630000, :version => 1, :visible => true, :changeset => 182602, "created_by" => "JOSM", "highway" => "secondary"],    # not agreed,
               OSM::Way[[29403707,33211953,29405458,29405459,29405460,29405461,29405462,29405463,29405464,29405465,29405466,29405467,29405468,29405469,29405470,29405471,29405472,29405473,29405474,29405475,29405476,29405477,29405478,29405479,29405480,29405481,29405482,29405483,29405484,29405485,29405486,29405487,29405488,29405489,29405490,29405491,29405492,29405493,29405494,29405495,29405496,29405497,29405498,29405499,29405500,29405501,29405502,29405503,29405504,29405505,29405506,29405507,29405508,29405509,29405510,29405511,29405512,29405513,29405514,29405515,29405516,29405517,29405518,29405519,29405520,29405521,29405522,29405523,29405524,29405525,29405526,29405527,29405528,29405529,29405530,29405531,29405532,29405533,29405534,29405535,29405536,29405537,29405452], :id => 4630000, :version => 2, :visible => true, :changeset => 1604109, "highway" => "tertiary"],    # agreed,
               OSM::Way[[29403707,33211953,29405458,29405459,29405460,29405461,29405462,29405463,29405464,29405465,29405466,29405467,29405468,29405469,29405470,29405471,29405472,810214222,29405473,29405474,29405475,29405476,29405477,29405478,29405479,29405480,29405481,29405482,29405483,29405484,29405485,29405486,29405487,29405488,29405489,29405490,29405491,29405492,29405493,29405494,29405495,29405496,29405497,29405498,29405499,29405500,29405501,29405502,29405503,29405504,29405505,29405506,29405507,29405508,29405509,29405510,29405511,29405512,29405513,29405514,29405515,29405516,29405517,29405518,29405519,29405520,29405521,29405522,29405523,29405524,29405525,29405526,29405527,29405528,29405529,29405530,29405531,29405532,29405533,29405534,29405535,29405536,29405537,29405452], :id => 4630000, :version => 3, :visible => true, :changeset => 5183817, "highway" => "tertiary"],    # agreed,
               OSM::Way[[29403707,33211953,29405458,29405459,29405460,29405461,29405462,29405463,29405464,29405465,29405466,29405467,29405468,29405469,29405470,29405471,29405472,810214222,29405473,29405474,29405475,29405476,29405477,29405478,29405479,29405480,29405481,29405482,29405483,29405484,29405485,29405486,29405487,29405488,29405489,29405490,29405491,29405492,29405493,29405494,29405495,29405496,29405497,29405498,29405499,29405500,29405501,29405502,29405503,29405504,29405505,29405506,29405507,29405508,29405509,29405510,29405511,29405512,29405513,29405514,29405515,29405516,29405517,29405518,29405519,29405520,29405521,29405522,29405523,29405524,29405525,29405526,29405527,29405528,29405529,29405530,29405531,29405532,29405533,29405534,29405535,29405536,1659210898,1659210890], :id => 4630000, :version => 4, :visible => true, :changeset => 10870557, "highway" => "tertiary"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Way[[810214222,1659210898,1659210890], :id => 4630000, :version => 4, :visible => true, :changeset => -1, "highway" => "tertiary"]],
                  Delete[OSM::Way, 4630000],
                  Redact[OSM::Way, 4630000, 1, :hidden],
                  Redact[OSM::Way, 4630000, 2, :visible],
                  Redact[OSM::Way, 4630000, 3, :visible],
                  Redact[OSM::Way, 4630000, 4, :visible]
                 ], actions)
  end

  # auto-generated test for way 4700000
  # http://wtfe.gryph.de/report/way/4700000
  # http://osm.mapki.com/history/way.php?id=4700000
  def test_automatic_way4700000
    history = [OSM::Way[[29893602,29893603,29893604,29893605,29893606,29893607,29893608,29893609,29893610,29893611,29893612,29893613,29893614,29893615,29893616,29893617,29893618,29893619,29893620,29893621,29893622,29893623,29893624,29893625,29893626,29893627,29893628,29893629,29893630], :id => 4700000, :version => 1, :visible => true, :changeset => 78226, "created_by" => "Potlatch alpha", "foot" => "yes", "highway" => "footway", "surface" => "unpaved"],    # not agreed,
               OSM::Way[[29893602,29893603,29893604,29893605,29893606,29893607,29893608,29893609,29893610,29893611,29893612,29893613,29893614,29893615,29893616,29893617,29893618,29893619,29893620,29893621,29893622,29893623,29893624,29893625,29893626,29893627,29893628], :id => 4700000, :version => 2, :visible => true, :changeset => 716542, "created_by" => "Potlatch 0.10f", "foot" => "yes", "highway" => "footway", "surface" => "unpaved"],    # agreed,
               OSM::Way[[29893602,29893603,29893604,29893605,29893606,29893607,29893608,29893609,29893610,29893611,29893612,29893613,29893614,29893615,29893616,29893617,29893618,29893619,29893620,29893621,29893622,29893623,29893624,29893625,29893626,29893627,29893628], :id => 4700000, :version => 3, :visible => true, :changeset => 831353, "created_by" => "Potlatch 0.10f", "foot" => "yes", "highway" => "track", "source" => "survey", "surface" => "unpaved"],    # agreed,
               OSM::Way[[29893602,29893603,29893604,29893605,29893606,29893607,29893608,29893609,29893610,29893611,29893612,29893613,29893614,29893615,29893616,29893617,29893618,29893619,29893620,29893621,29893622,29893623,29893624,29893625,29893626,29893627,29893628], :id => 4700000, :version => 4, :visible => true, :changeset => 831353, "created_by" => "Potlatch 0.10f", "foot" => "yes", "highway" => "track", "source" => "GPS", "surface" => "unpaved"],    # agreed,
               OSM::Way[[29893602,29893603,29893604,29893605,29893606,29893607,29893608,29893609,29893610,29893611,29893612,29893613,29893614,29893615,29893616,29893617,29893618,29893619,29893620,29893621,29893622,29893623,29893624,29893625,29893626,29893627,29893628], :id => 4700000, :version => 5, :visible => true, :changeset => 2565302, "foot" => "yes", "highway" => "track", "source" => "survey", "surface" => "unpaved"],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Way, 4700000],
                  Redact[OSM::Way, 4700000, 1, :hidden],
                  Redact[OSM::Way, 4700000, 2, :visible],
                  Redact[OSM::Way, 4700000, 3, :visible],
                  Redact[OSM::Way, 4700000, 4, :visible],
                  Redact[OSM::Way, 4700000, 5, :hidden]
                 ], actions)
  end

  # auto-generated test for way 4750000
  # http://wtfe.gryph.de/report/way/4750000
  # http://osm.mapki.com/history/way.php?id=4750000
  def test_automatic_way4750000
    history = [OSM::Way[[30292705,30292709,30292710,30292711,30292708], :id => 4750000, :version => 1, :visible => true, :changeset => 93742, "created_by" => "JOSM", "highway" => "cycleway"],    # agreed,
               OSM::Way[[15109312,249332709,249332710,249332711,249332712,249332713,249332714,249332715,249332716,249332717,249332718,249332719,249332720,249332721,249332722,249332723,249332724,249332725,249332726,249332727,249332728,249332729,249332730,249332731,249332732,249332733,249332758,249332759,249332760,249332761,249332762,249332763,249332764,249332765,249332766,30292710,30292709,30292705], :id => 4750000, :version => 2, :visible => true, :changeset => 210834, "created_by" => "JOSM", "highway" => "tertiary"],    # agreed,
               OSM::Way[[15109312,249332709,249332710,249332711,249332712,249332713,249332714,249332715,252452509,249332716,249332717,249332718,249332719,249332720,249332721,249332722,252452507,249332723,249332724,249332725,249332726,249332727,249332728,249332729,249332730,249332731,249332732,249332733,249332758,249332759,249332760,249332761,249332762,249332763,249332764,249332765,249332766,30292710,30292709,30292705], :id => 4750000, :version => 3, :visible => true, :changeset => 334222, "created_by" => "JOSM", "highway" => "tertiary"],    # agreed,
               OSM::Way[[15109312,249332709,249332710,249332711,249332712,249332713,249332714,249332715,252452509,252452645,249332716,249332717,249332718,249332719,249332720,249332721,249332722,252452507,249332723,249332724,249332725,249332726,249332727,249332728,249332729,249332730,249332731,249332732,249332733,249332758,249332759,249332760,249332761,249332762,249332763,249332764,249332765,249332766,30292710,30292709,30292705], :id => 4750000, :version => 4, :visible => true, :changeset => 334222, "created_by" => "JOSM", "highway" => "tertiary"],    # agreed,
               OSM::Way[[15109312,249332709,249332710,249332711,249332712,249332713,249332714,249332715,252452509,252452645,249332716,249332717,249332718,249332719,249332720,249332721,249332722,252452507,249332723,249332724,249332725,249332726,249332727,249332728,249332729,249332730,249332731,249332732,249332733,249332758,249332759,249332760,249332761,249332762,249332763,249332764,249332765,249332766,30292710], :id => 4750000, :version => 5, :visible => true, :changeset => 177128, "created_by" => "JOSM", "highway" => "tertiary"],    # agreed,
               OSM::Way[[15109312,249332709,249332710,249332711,249332712,249332713,249332714,249332715,252452509,252452645,249332716,249332717,249332718,249332719,249332720,249332721,249332722,252452507,249332723,249332724,249332725,249332726,249332727,300928103], :id => 4750000, :version => 6, :visible => true, :changeset => 718457, "created_by" => "JOSM", "highway" => "tertiary", "name" => "Mühlstettstraße"],    # agreed,
               OSM::Way[[15109312,249332709,249332710,249332711,249332712,249332713,249332714,249332715,252452509,252452645,249332716,249332717,249332718,325972594,249332719,249332720,249332721,249332722,252452507,249332723,249332724,249332725,249332726,249332727,300928103], :id => 4750000, :version => 7, :visible => true, :changeset => 731878, "created_by" => "JOSM", "highway" => "tertiary", "name" => "Mühlstettstraße"],    # not agreed,
               OSM::Way[[15109312,249332709,249332710,249332711,249332712,249332713,249332714,249332715,252452509,252452645,249332716,249332717,249332718,325972594,249332719,249332720,249332721,249332722,252452507,249332723,249332724,249332725,249332726,249332727,300928103], :id => 4750000, :version => 8, :visible => true, :changeset => 1535655, "highway" => "tertiary", "name" => "Mühlstettstraße"],    # agreed,
               OSM::Way[[15109312,249332709,249332710,249332711,472328666,249332712,249332713,249332714,249332715,252452509,252452645,249332716,249332717,249332718,325972594,249332719,249332720,249332721,249332722,252452507,249332723,249332724,249332725,249332726,249332727,300928103], :id => 4750000, :version => 9, :visible => true, :changeset => 2232476, "highway" => "tertiary", "name" => "Mühlstettstraße"],    # agreed,
               OSM::Way[[15109312,249332709,249332710,249332711,472328666,249332712,249332713,249332714,249332715,252452509,252452645,249332716,249332717,249332718,325972594,249332719,472366539,249332720,249332721,249332722,252452507,249332723,249332724,249332725,249332726,249332727,300928103], :id => 4750000, :version => 10, :visible => true, :changeset => 2233706, "highway" => "tertiary", "name" => "Mühlstettstraße"],    # agreed,
               OSM::Way[[15109312,249332709,249332710,249332711,472328666,249332712,249332713,249332714,249332715,252452509,252452645,249332716,249332717,249332718,325972594,249332719,472366539,249332720,249332721,249332722,252452507,249332723,249332724,249332725,249332726,792441180,249332727,300928103], :id => 4750000, :version => 11, :visible => true, :changeset => 5087890, "highway" => "tertiary", "name" => "Mühlstettstraße"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Way[[15109312,249332709,249332710,249332711,472328666,249332712,249332713,249332714,249332715,252452509,252452645,249332716,249332717,249332718,249332719,472366539,249332720,249332721,249332722,252452507,249332723,249332724,249332725,249332726,792441180,249332727,300928103], :id => 4750000, :version => 11, :visible => true, :changeset => -1, "highway" => "tertiary", "name" => "Mühlstettstraße"]],
                  Delete[OSM::Way, 4750000],
                  Redact[OSM::Way, 4750000, 7, :hidden],
                  Redact[OSM::Way, 4750000, 8, :visible],
                  Redact[OSM::Way, 4750000, 9, :visible],
                  Redact[OSM::Way, 4750000, 10, :visible],
                  Redact[OSM::Way, 4750000, 11, :visible]
                 ], actions)
  end

  # auto-generated test for way 4890000
  # http://wtfe.gryph.de/report/way/4890000
  # http://osm.mapki.com/history/way.php?id=4890000
  def test_automatic_way4890000
    history = [OSM::Way[[31777825,31777972,31777973,31777974,31777975,31777976,31777977], :id => 4890000, :version => 1, :visible => true, :changeset => 141648, "created_by" => "JOSM", "highway" => "unclassified"],    # not agreed,
               OSM::Way[[31777825,31777972,343623285,31777973,343623282,31777974,31777975,31777976,31777977], :id => 4890000, :version => 2, :visible => true, :changeset => 292607, "created_by" => "JOSM", "highway" => "unclassified"],    # not agreed,
               OSM::Way[[31777825,31777972,343623285,31777973,343623282,31777974,31777975,31777976,31777977], :id => 4890000, :version => 3, :visible => true, :changeset => 6260985, "highway" => "unclassified"],    # not agreed,
               OSM::Way[[1581144847,31777972,343623285,31777973,343623282,1581145006,31777974,31777975,31777976,31777977], :id => 4890000, :version => 4, :visible => true, :changeset => 10322930, "highway" => "unclassified"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Way, 4890000], # only one node would remain so delete
                  Redact[OSM::Way, 4890000, 1, :hidden],
                  Redact[OSM::Way, 4890000, 2, :hidden],
                  Redact[OSM::Way, 4890000, 3, :visible],
                  Redact[OSM::Way, 4890000, 4, :visible]
                 ], actions)
  end

  # auto-generated test for way 4960000
  # http://wtfe.gryph.de/report/way/4960000
  # http://osm.mapki.com/history/way.php?id=4960000
  def test_automatic_way4960000
    history = [OSM::Way[[60207070,32828635,32828636,32828637,32828638,32828639,60207066,32828640], :id => 4960000, :version => 1, :visible => true, :changeset => 539029, "created_by" => "Potlatch alpha", "highway" => "trunk", "name" => "Nicholson Road", "oneway" => "yes", "ref" => "S31"],    # agreed,
               OSM::Way[[60207070,32828635,32828636,32828637,179990380,32828638,32828639,60207066,32828640], :id => 4960000, :version => 2, :visible => true, :changeset => 375997, "created_by" => "Potlatch 0.5d", "highway" => "trunk", "name" => "Nicholson Road", "oneway" => "yes", "ref" => "S31"],    # agreed,
               OSM::Way[[60207070,32828635,32828636,32828637,179990380,32828638,32828639,60207066,32828640], :id => 4960000, :version => 3, :visible => true, :changeset => 4430272, "highway" => "trunk", "name" => "Nicholson Road", "oneway" => "yes", "ref" => "S31"],    # agreed,
               OSM::Way[[60207070,32828635,32828636,32828637,179990380,32828638,32828639,701674942,60207066,701674974,32828640,701674953,32950766], :id => 4960000, :version => 4, :visible => true, :changeset => 4464575, "highway" => "trunk", "name" => "Nicholson Road", "oneway" => "yes", "ref" => "S31"],    # agreed,
               OSM::Way[[60207070,32828635,32828636,32828637,179990380,32828638,722534261,32828639,701674942,60207066,701674974,32828640,701674953,32950766], :id => 4960000, :version => 5, :visible => true, :changeset => 4613402, "highway" => "trunk", "name" => "Nicholson Road", "oneway" => "yes", "ref" => "S31"],    # agreed,
               OSM::Way[[60207070,32828635,32828636,32828637,179990380,32828638,722534261,32828639,60207066,32828640], :id => 4960000, :version => 6, :visible => true, :changeset => 4636239, "highway" => "trunk", "name" => "Nicholson Road", "oneway" => "yes", "ref" => "S31"],    # not agreed,
               OSM::Way[[60207070,32828635,32828636,32828637,951792190,179990380,32828638,722534261,32828639,60207066,32828640], :id => 4960000, :version => 7, :visible => true, :changeset => 6059272, "highway" => "trunk", "name" => "Nicholson Road", "oneway" => "yes", "ref" => "S31"],    # agreed,
               OSM::Way[[60207070,32828635,32828636,32828637,951792190,179990380,960926362,32828638,722534261,32828639,60207066,32828640], :id => 4960000, :version => 8, :visible => true, :changeset => 6141205, "highway" => "trunk", "name" => "Nicholson Road", "oneway" => "yes", "ref" => "S31"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([ ], actions) # just node removal
  end

  # auto-generated test for way 4980000
  # http://wtfe.gryph.de/report/way/4980000
  # http://osm.mapki.com/history/way.php?id=4980000
  def test_automatic_way4980000
    history = [OSM::Way[[32463439,32414139,32414131,32414122,32414115,32407849], :id => 4980000, :version => 1, :visible => true, :changeset => 173839, "created_by" => "JOSM", "highway" => "secondary", "name" => "Søndre Allé"],    # agreed,
               OSM::Way[[32463439,258889260,32414139,32414131,32414122,32414115,32407849], :id => 4980000, :version => 2, :visible => true, :changeset => 208299, "created_by" => "Potlatch 0.8a", "highway" => "secondary", "name" => "Søndre Allé"],    # not agreed,
               OSM::Way[[32463439,258889260,32414139,32414131,32414122,32414115,421457411,32407849], :id => 4980000, :version => 3, :visible => true, :changeset => 1534281, "created_by" => "Potlatch 0.8a", "highway" => "secondary", "name" => "Søndre Allé"],    # agreed,
               OSM::Way[[32463439,489365649,258889260,32414139,32414131,32414122,32414115,421457411,32407849], :id => 4980000, :version => 4, :visible => true, :changeset => 2411999, "highway" => "secondary", "name" => "Søndre Allé"],    # agreed,
               OSM::Way[[32463439,489365649,258889260,32414139,32414131,32414122,32414115,421457411,32407849], :id => 4980000, :version => 5, :visible => true, :changeset => 2896679, "highway" => "tertiary", "name" => "Søndre Alle"],    # agreed,
               OSM::Way[[32463439,576987646,489365649,258889260,32414139,32414131,32414122,32414115,421457411,32407849], :id => 4980000, :version => 6, :visible => true, :changeset => 3262561, "highway" => "tertiary", "name" => "Søndre Alle"],    # agreed,
               OSM::Way[[32463439,576987646,489365649,258889260,576988451,32414139,32414131,32414122,32414115,421457411,32407849], :id => 4980000, :version => 7, :visible => true, :changeset => 3262561, "highway" => "tertiary", "name" => "Søndre Alle"],    # agreed,
               OSM::Way[[32463439,576987646,489365649,258889260,576988451,32414139,576988531], :id => 4980000, :version => 8, :visible => true, :changeset => 3262561, "highway" => "tertiary", "name" => "Søndre Alle"],    # agreed,
               OSM::Way[[32463439,576987646,489365649], :id => 4980000, :version => 9, :visible => true, :changeset => 8503082, "highway" => "tertiary", "name" => "Søndre Alle"],    # agreed,
               OSM::Way[[32463439,1512933112,576987646,489365649], :id => 4980000, :version => 10, :visible => true, :changeset => 9910555, "highway" => "tertiary", "name" => "Søndre Alle"],    # agreed,
               OSM::Way[[32463439,1612881782,1512933112,576987646,489365649], :id => 4980000, :version => 11, :visible => true, :changeset => 10547773, "highway" => "tertiary", "name" => "Søndre Alle"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Way[[32463439,1612881782,1512933112,576987646,489365649], :id => 4980000, :version => 11, :visible => true, :changeset => -1, "highway" => "tertiary", "name" => "Søndre Alle"]],
                  Delete[OSM::Way, 4980000],
                  Redact[OSM::Way, 4980000, 2, :hidden],
                  Redact[OSM::Way, 4980000, 3, :visible],
                  Redact[OSM::Way, 4980000, 4, :visible],
                  Redact[OSM::Way, 4980000, 5, :visible],
                  Redact[OSM::Way, 4980000, 6, :visible],
                  Redact[OSM::Way, 4980000, 7, :visible],
                  Redact[OSM::Way, 4980000, 8, :visible]
                 ], actions)
  end

  # auto-generated test for way 5020000
  # http://wtfe.gryph.de/report/way/5020000
  # http://osm.mapki.com/history/way.php?id=5020000
  def test_automatic_way5020000
    history = [OSM::Way[[33391693,33391694,33391695,33391696,33391697,33391698,33391699,33391700,33391701,33391702,33391703,33391704,33391705,33391706,33391707,33391708,33391709,33391710,33391711,33391712,33391713,33391714,33391715,33391716,33391717,33391718,33391719,33391720,33391721,33391722], :id => 5020000, :version => 1, :visible => true, :changeset => 188527, "created_by" => "JOSM", "highway" => "secondary"],    # agreed,
               OSM::Way[[33391693,33391694,33391695,33391696,33391697,33391698,33391699,33391700,33391701,33391702,33391703,33391704,33391705,33391706,33391707,33391708,33391709,33391710,33391711,33391712,33391713,33391714,33391715,33391716,33391717,333291592,33391718,33391719,33391720,33391721,33391722], :id => 5020000, :version => 2, :visible => true, :changeset => 806497, "created_by" => "JOSM", "highway" => "secondary"],    # agreed,
               OSM::Way[[33391693,33391694,33391695,33391696,33391697,33391698,33391699,33391700,33391701,33391702,33391703,333763910,33391704,33391705,33391706,33391707,33391708,33391709,33391710,33391711,33391712,33391713,33391714,33391715,33391716,33391717,333291592,33391718,33391719,33391720,33391721,33391722], :id => 5020000, :version => 3, :visible => true, :changeset => 811791, "created_by" => "JOSM", "highway" => "secondary"],    # agreed,
               OSM::Way[[33391693,33391694,33391695,33391697,33391700,33391701,33391702,333763910,33391706,33391708,33391710,33391711,33391714,33391715,33391716,33391717,333291592,33391719,33391720,33391722], :id => 5020000, :version => 4, :visible => true, :changeset => 1468945, "created_by" => "JOSM", "highway" => "secondary", "ref" => "L 209"],    # agreed,
               OSM::Way[[33391693,33391694,33391695,33391697,33391700,33391701,33391702,333763910,33391706,490015665,33391708,33391710,33391711,33391714,33391715,33391716,33391717,333291592,33391719,33391720,33391722], :id => 5020000, :version => 5, :visible => true, :changeset => 2417803, "highway" => "secondary", "ref" => "L 209"],    # agreed,
               OSM::Way[[33391693,33391694,33391695,33391697,33391700,33391701,33391702,490024893,333763910,33391706,490015665,33391708,33391710,33391711,33391714,33391715,33391716,33391717,333291592,33391719,33391720,33391722], :id => 5020000, :version => 6, :visible => true, :changeset => 2417803, "highway" => "secondary", "ref" => "L 209"],    # agreed,
               OSM::Way[[33391693,33391694,33391695,33391697,490603993,33391700,33391701,33391702,490024893,333763910,33391706,490015665,33391708,33391710,33391711,33391714,33391715,33391716,33391717,333291592,33391719,33391720,33391722], :id => 5020000, :version => 7, :visible => true, :changeset => 2421680, "highway" => "secondary", "ref" => "L 209"],    # agreed,
               OSM::Way[[33391693,33391694,33391695,490604844,33391697,490603993,33391700,33391701,33391702,490024893,333763910,33391706,490015665,33391708,33391710,33391711,33391714,33391715,33391716,33391717,333291592,33391719,33391720,33391722], :id => 5020000, :version => 8, :visible => true, :changeset => 2421680, "highway" => "secondary", "ref" => "L 209"],    # agreed,
               OSM::Way[[33391693,33391694,33391695,490604844,33391697,490603993,33391700,491556760,33391701,33391702,490024893,333763910,33391706,490015665,33391708,33391710,33391711,33391714,33391715,33391716,33391717,333291592,33391719,33391720,33391722], :id => 5020000, :version => 9, :visible => true, :changeset => 2429729, "highway" => "secondary", "ref" => "L 209"],    # agreed,
               OSM::Way[[33391693,33391694,33391695,490604844,33391697,490603993,33391700,491556760,33391701,33391702,490024893,513618227,333763910,33391706,490015665,33391708,33391710,33391711,33391714,33391715,33391716,33391717,333291592,33391719,33391720,33391722], :id => 5020000, :version => 10, :visible => true, :changeset => 2678768, "highway" => "secondary", "ref" => "L 209"],    # agreed,
               OSM::Way[[33391693,33391694,33391695,490604844,33391697,490603993,514576485,33391700,491556760,33391701,33391702,490024893,513618227,333763910,33391706,490015665,33391708,33391710,33391711,33391714,33391715,33391716,33391717,333291592,33391719,33391720,33391722], :id => 5020000, :version => 11, :visible => true, :changeset => 2689507, "highway" => "secondary", "ref" => "L 209"],    # agreed,
               OSM::Way[[33391693,33391694,33391695,490604844,33391697,490603993,514576485,33391700,491556760,33391701,33391702,490024893,513618227,333763910,622374907,33391706,490015665,33391708,33391710,33391711,33391714,33391715,33391716,33391717,333291592,33391719,33391720,33391722], :id => 5020000, :version => 12, :visible => true, :changeset => 3743409, "highway" => "secondary", "ref" => "L 209"],    # not agreed,
               OSM::Way[[33391693,33391694,33391695,490604844,33391697,490603993,514576485,33391700,491556760,33391701,33391702,490024893,513618227,333763910,622374907,646621236,33391706,490015665,33391708,33391710,33391711,33391714,33391715,33391716,33391717,333291592,33391719,33391720,33391722], :id => 5020000, :version => 13, :visible => true, :changeset => 3914643, "highway" => "secondary", "ref" => "L 209"],    # agreed,
               OSM::Way[[33391693,33391694,33391695,490604844,33391697,490603993,514576485,33391700,491556760,33391701,33391702,490024893,513618227,333763910,622374907,646621236,33391706,490015665,33391708,33391710,33391711,33391714,33391715,33391716,33391717,333291592], :id => 5020000, :version => 14, :visible => true, :changeset => 6025019, "highway" => "secondary", "ref" => "L 209"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Way[[33391693,33391694,33391695,490604844,33391697,490603993,514576485,33391700,491556760,33391701,33391702,490024893,513618227,333763910,646621236,33391706,490015665,33391708,33391710,33391711,33391714,33391715,33391716,33391717,333291592], :id => 5020000, :version => 14, :visible => true, :changeset => -1, "highway" => "secondary", "ref" => "L 209"]], # loses one node
                  Redact[OSM::Way, 5020000, 12, :hidden],
                  Redact[OSM::Way, 5020000, 13, :visible],
                  Redact[OSM::Way, 5020000, 14, :visible]
                 ], actions)
  end

  # auto-generated test for way 5220000
  # http://wtfe.gryph.de/report/way/5220000
  # http://osm.mapki.com/history/way.php?id=5220000
  def test_automatic_way5220000
    history = [OSM::Way[[36452068,36567763,36574291,36552883,36559013,36598590,36588407,36597596,36627534,36520648,36524900,36506733,36512882,36542153,36547753,36530162,36536298,36644635,36448111,36460891,36433492,36440698,36487849,36508306,36649700,36642766,36637975,36460408,36445644,36438581,36604357,36597678,36585512,36632625,36626906,36574923,36552606,36559669,36598362,36640521,36646005,36655035,36661046,36557646], :id => 5220000, :version => 1, :visible => true, :changeset => 261208, "created_by" => "JOSM", "highway" => "residential", "name" => "Nfs Rd 410", "tiger:cfcc" => "A41", "tiger:name_base" => "Nfs Rd 410", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070808", "tiger:tlid" => "138454640:138454614:138453459:138475404"],    # agreed,
               OSM::Way[[36452068,36567763,36574291,36552883,36559013,36598590,36588407,36597596,36627534,36520648,36524900,36506733,36512882,36542153,36547753,36530162,36536298,36644635,36448111,36460891,36433492,36440698,36487849,36508306,36649700,36642766,36637975,36460408,36445644,36438581,36604357,36597678,36585512,36632625,36626906,36574923,36552606,36559669,36598362,36640521,36646005,36655035,36661046,36557646], :id => 5220000, :version => 2, :visible => true, :changeset => 4335476, "created_by" => "JOSM", "highway" => "residential", "name" => "Nfs Road 410", "tiger:cfcc" => "A41", "tiger:name_base" => "Nfs Rd 410", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070808", "tiger:tlid" => "138454640:138454614:138453459:138475404"],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions) # just Rd->Road, no copyright
  end

  # auto-generated test for way 5350000
  # http://wtfe.gryph.de/report/way/5350000
  # http://osm.mapki.com/history/way.php?id=5350000
  def test_automatic_way5350000
    history = [OSM::Way[[38220052,38220054], :id => 5350000, :version => 1, :visible => true, :changeset => 280091, "highway" => "residential", "name" => "N Johnson St", "tiger:cfcc" => "A41", "tiger:county" => "Coos, OR", "tiger:name_base" => "Johnson", "tiger:name_direction_prefix" => "N", "tiger:name_type" => "St", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070808", "tiger:tlid" => "136992146", "tiger:upload_uuid" => "bulk_upload.pl-2942b97e-42c4-41d2-9942-8c2bd0ceb333", "tiger:zip_left" => "97423", "tiger:zip_right" => "97423"],    # agreed,
               OSM::Way[[38220052,38220054], :id => 5350000, :version => 2, :visible => true, :changeset => 4199043, "highway" => "residential", "name" => "North Johnson Street", "tiger:cfcc" => "A41", "tiger:county" => "Coos, OR", "tiger:name_base" => "Johnson", "tiger:name_direction_prefix" => "N", "tiger:name_type" => "St", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070808", "tiger:tlid" => "136992146", "tiger:zip_left" => "97423", "tiger:zip_right" => "97423"],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Way[[38220052,38220054], :id => 5350000, :version => 1, :visible => true, :changeset => 280091, "highway" => "residential", "name" => "N Johnson St", "tiger:cfcc" => "A41", "tiger:county" => "Coos, OR", "tiger:name_base" => "Johnson", "tiger:name_direction_prefix" => "N", "tiger:name_type" => "St", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070808", "tiger:tlid" => "136992146", "tiger:upload_uuid" => "bulk_upload.pl-2942b97e-42c4-41d2-9942-8c2bd0ceb333", "tiger:zip_left" => "97423", "tiger:zip_right" => "97423"]],
                  Redact[OSM::Way, 5350000, 2, :hidden]
                 ], actions)
  end

  # auto-generated test for way 5370000
  # http://wtfe.gryph.de/report/way/5370000
  # http://osm.mapki.com/history/way.php?id=5370000
  def test_automatic_way5370000
    history = [OSM::Way[[38473568,38473569,38473570,38473572,38473574,38473576,38473578,38473580,38473582,38473584], :id => 5370000, :version => 1, :visible => true, :changeset => 286360, "highway" => "residential", "name" => "SW Meadow Ln", "name_1" => "SW Windrow Acres Rd", "tiger:cfcc" => "A41", "tiger:county" => "Deschutes, OR", "tiger:name_base" => "Meadow", "tiger:name_base_1" => "Windrow Acres", "tiger:name_direction_prefix" => "SW", "tiger:name_direction_prefix_1" => "SW", "tiger:name_type" => "Ln", "tiger:name_type_1" => "Rd", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070808", "tiger:tlid" => "152583990:152571700:152574546:152583989", "tiger:upload_uuid" => "bulk_upload.pl-1e8a3f75-6ce3-4901-922a-3c8985329d78", "tiger:zip_left" => "97756", "tiger:zip_right" => "97756"],    # agreed,
               OSM::Way[[38473568,38473569,38473570,38473572,38473574,38473576,38473578,38473580,38473582,38473584], :id => 5370000, :version => 2, :visible => true, :changeset => 4191243, "highway" => "residential", "name" => "Southwest Meadow Lane", "name_1" => "Southwest Windrow Acres Road", "tiger:cfcc" => "A41", "tiger:county" => "Deschutes, OR", "tiger:name_base" => "Meadow", "tiger:name_base_1" => "Windrow Acres", "tiger:name_direction_prefix" => "SW", "tiger:name_direction_prefix_1" => "SW", "tiger:name_type" => "Ln", "tiger:name_type_1" => "Rd", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070808", "tiger:tlid" => "152583990:152571700:152574546:152583989", "tiger:zip_left" => "97756", "tiger:zip_right" => "97756"],    # not agreed,
               OSM::Way[[38473568,38473572,38473574,38473576,38473584], :id => 5370000, :version => 3, :visible => true, :changeset => 4600604, "highway" => "residential", "name" => "Southwest Meadow Lane", "name_1" => "Southwest Windrow Acres Road", "tiger:cfcc" => "A41", "tiger:county" => "Deschutes, OR", "tiger:name_base" => "Meadow", "tiger:name_base_1" => "Windrow Acres", "tiger:name_direction_prefix" => "SW", "tiger:name_direction_prefix_1" => "SW", "tiger:name_type" => "Ln", "tiger:name_type_1" => "Rd", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070808", "tiger:tlid" => "152583990:152571700:152574546:152583989", "tiger:zip_left" => "97756", "tiger:zip_right" => "97756"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([ ], actions) #tiger name wanking
  end

  # auto-generated test for way 5390000
  # http://wtfe.gryph.de/report/way/5390000
  # http://osm.mapki.com/history/way.php?id=5390000
  def test_automatic_way5390000
    history = [OSM::Way[[38751757,38751758,38751759,38751761,38751762,38751764,38751766,38751767,38751770,38751772,38751774,38751775,38751776,38751778,38751780,38751781,38751782,38751785,38751786,38751787,38751790,38751791,38751792,38751793,38751795,38751796,38751798], :id => 5390000, :version => 1, :visible => true, :changeset => 290778, "highway" => "track", "name" => "Schurtz Creek Ridge Rd", "tiger:cfcc" => "A51", "tiger:county" => "Harney, OR", "tiger:name_base" => "Schurtz Creek Ridge", "tiger:name_type" => "Rd", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070808", "tiger:tlid" => "152786223", "tiger:upload_uuid" => "bulk_upload.pl-d6491c37-9417-45f4-8064-17dbe1f23f56"],    # agreed,
               OSM::Way[[38751757,38751758,38751759,38751761,38751762,38751764,38751766,38751767,38751770,38751772,38751774,38751775,38751776,38751778,38751780,38751781,38751782,38751785,38751786,38751787,38751790,38751791,38751792,38751793,38751795,38751796,38751798], :id => 5390000, :version => 2, :visible => true, :changeset => 4191243, "highway" => "track", "name" => "Schurtz Creek Ridge Road", "tiger:cfcc" => "A51", "tiger:county" => "Harney, OR", "tiger:name_base" => "Schurtz Creek Ridge", "tiger:name_type" => "Rd", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070808", "tiger:tlid" => "152786223"],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions) #tiger name wanking
  end

  # auto-generated test for way 6510000
  # http://wtfe.gryph.de/report/way/6510000
  # http://osm.mapki.com/history/way.php?id=6510000
  def test_automatic_way6510000
    history = [OSM::Way[[53120720,53100737,53182378,59699628,53109829,53092498,53099797,53163625,59713406,53187519,53175980,53196350,59594033,59594034,59594035,59594036,59594031], :id => 6510000, :version => 1, :visible => true, :changeset => 45584, "highway" => "secondary", "name" => "NE 40th St", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "St", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:upload_uuid" => "bulk_upload.pl-29a9466e-9467-44bf-9700-aac8a269b22a", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"],    # agreed,
               OSM::Way[[53120720,53100737,53182378,59699628,53109829,53092498,53099797,53163625,59713406,53187519,53175980,53196350], :id => 6510000, :version => 2, :visible => true, :changeset => 62468, "highway" => "secondary", "name" => "NE 40th St", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "St", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:upload_uuid" => "bulk_upload.pl-29a9466e-9467-44bf-9700-aac8a269b22a", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"],    # agreed,
               OSM::Way[[53120720,53100737,53182378,59699628,53109829,206249014,53092498,53099797,53163625,59713406,53187519,53175980,53196350], :id => 6510000, :version => 3, :visible => true, :changeset => 546271, "created_by" => "Potlatch 0.6a", "highway" => "secondary", "name" => "NE 40th St", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "St", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:upload_uuid" => "bulk_upload.pl-29a9466e-9467-44bf-9700-aac8a269b22a", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"],    # agreed,
               OSM::Way[[53120720,53100737,53182378,59699628,53109829,206249014,53092498,206249655,53099797,53163625,59713406,53187519,53175980,53196350], :id => 6510000, :version => 4, :visible => true, :changeset => 546271, "created_by" => "Potlatch 0.6a", "highway" => "secondary", "name" => "NE 40th St", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "St", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:upload_uuid" => "bulk_upload.pl-29a9466e-9467-44bf-9700-aac8a269b22a", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"],    # agreed,
               OSM::Way[[53120720,53100737,53182378,59699628,53109829,206249014,53092498,206249655,53099797,53163625,59713406,53187519,53175980,53196350], :id => 6510000, :version => 5, :visible => true, :changeset => 100113, "created_by" => "Potlatch 0.10f", "highway" => "secondary", "name" => "NE 40th St", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "St", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:upload_uuid" => "bulk_upload.pl-29a9466e-9467-44bf-9700-aac8a269b22a", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"],    # not agreed,
               OSM::Way[[53120720,53100737,53182378,59699628,53109829,206249014,53092498,206249655,53099797,53163625,59713406,53187519,53175980,53196350], :id => 6510000, :version => 6, :visible => true, :changeset => 100113, "created_by" => "Potlatch 0.10f", "highway" => "secondary", "name" => "NE 40th St", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "St", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:upload_uuid" => "bulk_upload.pl-29a9466e-9467-44bf-9700-aac8a269b22a", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"],    # not agreed,
               OSM::Way[[53120720,53100737,53182378,59699628,53109829,206249014,53092498,206249655,53099797,53163625,59713406,53187519,53175980,53196350], :id => 6510000, :version => 7, :visible => true, :changeset => 100113, "created_by" => "Potlatch 0.10f", "highway" => "secondary", "name" => "NE 40th St", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "St", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:upload_uuid" => "bulk_upload.pl-29a9466e-9467-44bf-9700-aac8a269b22a", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"],    # not agreed,
               OSM::Way[[53120720,53100737,53182378,59699628,53109829,206249014,53092498,206249655,53099797,53163625,340259221,59713406,340259222,340259223,53187519,53175980,53196350], :id => 6510000, :version => 8, :visible => true, :changeset => 100113, "created_by" => "Potlatch 0.10f", "highway" => "secondary", "name" => "NE 40th St", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "St", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:upload_uuid" => "bulk_upload.pl-29a9466e-9467-44bf-9700-aac8a269b22a", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"],    # not agreed,
               OSM::Way[[53120720,53100737,53182378,59699628,53109829,206249014,53092498,206249655,53099797,53163625,340259221,59713406,340259222,340259223,53187519,53175980,53196350], :id => 6510000, :version => 9, :visible => true, :changeset => 100113, "created_by" => "Potlatch 0.10f", "highway" => "secondary", "name" => "NE 40th St", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "St", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:upload_uuid" => "bulk_upload.pl-29a9466e-9467-44bf-9700-aac8a269b22a", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"],    # not agreed,
               OSM::Way[[53120720,53100737,53182378,59699628,53109829,206249014,53092498,206249655,53099797,53163625,340259221,59713406,340259222,340259223,53187519,340259263,340259264,53175980,53196350], :id => 6510000, :version => 10, :visible => true, :changeset => 100113, "created_by" => "Potlatch 0.10f", "highway" => "secondary", "name" => "NE 40th St", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "St", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:upload_uuid" => "bulk_upload.pl-29a9466e-9467-44bf-9700-aac8a269b22a", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"],    # not agreed,
               OSM::Way[[53120720,53100737,53182378,59699628,53109829,206249014,53092498,206249655,53099797,53163625,340259221,59713406,340259222,340259223,53187519], :id => 6510000, :version => 11, :visible => true, :changeset => 100113, "created_by" => "Potlatch 0.10f", "highway" => "secondary", "name" => "NE 40th St", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "St", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:upload_uuid" => "bulk_upload.pl-29a9466e-9467-44bf-9700-aac8a269b22a", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"],    # not agreed,
               OSM::Way[[53120720,53100737,53182378,59699628,53109829,206249014,53092498,206249655,53099797,53163625,340259221,59713406,340259322,340259323,340259295], :id => 6510000, :version => 12, :visible => true, :changeset => 100113, "created_by" => "Potlatch 0.10f", "highway" => "secondary", "name" => "NE 40th St", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "St", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:upload_uuid" => "bulk_upload.pl-29a9466e-9467-44bf-9700-aac8a269b22a", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"],    # not agreed,
               OSM::Way[[53120720,53100737,53182378,59699628,53109829,206249014,53092498,206249655,53099797,53163625,340259221,59713406,340259322,340259323,340259295], :id => 6510000, :version => 13, :visible => true, :changeset => 832544, "created_by" => "Potlatch 0.10f", "highway" => "tertiary", "name" => "NE 40th St", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "St", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:upload_uuid" => "bulk_upload.pl-29a9466e-9467-44bf-9700-aac8a269b22a", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"],    # agreed,
               OSM::Way[[53120720,53100737,53182378,59699628,53109829,206249014,53092498,206249655,53099797,53163625,340259221,59713406,340259322,340259323,340259295], :id => 6510000, :version => 14, :visible => true, :changeset => 861018, "created_by" => "Potlatch 0.10f", "highway" => "tertiary", "name" => "NE 40th Street", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "Street", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:upload_uuid" => "bulk_upload.pl-29a9466e-9467-44bf-9700-aac8a269b22a", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"],    # agreed,
               OSM::Way[[53120720,53100737,53182378,59699628,53109829,206249014,53092498,53099797,53163625,340259221,59713406,340259322,340259323,340259295], :id => 6510000, :version => 15, :visible => true, :changeset => 2333984, "highway" => "tertiary", "name" => "NE 40th Street", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "Street", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:upload_uuid" => "bulk_upload.pl-29a9466e-9467-44bf-9700-aac8a269b22a", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"],    # agreed,
               OSM::Way[[53120720,53100737,53182378,59699628,53109829,206249014,53092498,53099797,53163625,340259221,59713406,340259322,340259323,340259295], :id => 6510000, :version => 16, :visible => true, :changeset => 4304484, "highway" => "tertiary", "name" => "Northeast 40th Street", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "Street", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"],    # not agreed,
               OSM::Way[[53120720,53100737,53182378,59699628,53109829,206249014,53092498,53099797,53163625,340259221,59713406,340259322,340259323,340259295], :id => 6510000, :version => 17, :visible => true, :changeset => 7299220, "highway" => "tertiary", "name" => "Northeast 40th Street", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "Street", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Way[[53120720,53100737,53182378,59699628,53109829,206249014,53092498,53099797,53163625,59713406], :id => 6510000, :version => 17, :visible => true, :changeset => -1, "highway" => "tertiary", "name" => "Northeast 40th Street", "tiger:cfcc" => "A41", "tiger:county" => "King, WA", "tiger:name_base" => "40th", "tiger:name_direction_prefix" => "NE", "tiger:name_type" => "Street", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070830", "tiger:tlid" => "186586974:186586986:186586988:186705907:186583408:186583354:186583359:186583257:186586943", "tiger:zip_left" => "98105", "tiger:zip_right" => "98105"]],
                  Redact[OSM::Way, 6510000, 5, :hidden],
                  Redact[OSM::Way, 6510000, 6, :hidden],
                  Redact[OSM::Way, 6510000, 7, :hidden],
                  Redact[OSM::Way, 6510000, 8, :hidden],
                  Redact[OSM::Way, 6510000, 9, :hidden],
                  Redact[OSM::Way, 6510000, 10, :hidden],
                  Redact[OSM::Way, 6510000, 11, :hidden],
                  Redact[OSM::Way, 6510000, 12, :hidden],
                  Redact[OSM::Way, 6510000, 13, :visible],
                  Redact[OSM::Way, 6510000, 14, :visible],
                  Redact[OSM::Way, 6510000, 15, :hidden],
                  Redact[OSM::Way, 6510000, 16, :hidden],
                  Redact[OSM::Way, 6510000, 17, :visible],
                 ], actions)
  end

  # auto-generated test for way 8020000
  # http://wtfe.gryph.de/report/way/8020000
  # http://osm.mapki.com/history/way.php?id=8020000
  def test_automatic_way8020000
    history = [OSM::Way[[843976,843972,843941,843947,843950,843961], :id => 8020000, :version => 1, :visible => true, :changeset => 524536, "created_by" => "JOSM", "highway" => "FIXME - unwayed segments"],    # agreed,
               OSM::Way[[843976,843972,843941,843947,843950,843961], :id => 8020000, :version => 2, :visible => true, :changeset => 457552, "highway" => "FIXME"],    # not agreed,
               OSM::Way[[843976,843972,843941,843947,843950,843961], :id => 8020000, :version => 3, :visible => true, :changeset => 69066, "highway" => "road"],    # agreed,
               OSM::Way[[843976,843972,843941,843947,843950,843961], :id => 8020000, :version => 4, :visible => true, :changeset => 6237550, "highway" => "residential"],    # agreed,
               OSM::Way[[1688453324,1688453353,1688453365,1688453386,1688453392,1688453397,1688453414,1688453416,1688453419,1688453420,1688453421], :id => 8020000, :version => 5, :visible => true, :changeset => 11083565, "highway" => "residential"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Redact[OSM::Way, 8020000, 2, :hidden]
                 ], actions)
  end

  # auto-generated test for way 8060000
  # http://wtfe.gryph.de/report/way/8060000
  # http://osm.mapki.com/history/way.php?id=8060000
  def test_automatic_way8060000
    history = [OSM::Way[[60262308,60262561,60262626,60262630,60262635], :id => 8060000, :version => 1, :visible => true, :changeset => 540445, "created_by" => "JOSM", "highway" => "residential"],    # not agreed,
               OSM::Way[[60262308,60262561,60262626,60262630,60262635], :id => 8060000, :version => 2, :visible => true, :changeset => 539695, "created_by" => "JOSM", "highway" => "residential", "name" => "Litožnická", "name:source" => "nameit/uir-adr"],    # not agreed,
               OSM::Way[[60262308,345440988,60262561,60262626,60262630,60262635], :id => 8060000, :version => 3, :visible => true, :changeset => 459201, "created_by" => "JOSM", "highway" => "residential", "name" => "Litožnická", "name:source" => "nameit/uir-adr"],    # agreed,
               OSM::Way[[60262308,345440988,60262561,60262626,60262630,60262635], :id => 8060000, :version => 4, :visible => true, :changeset => 739570, "highway" => "residential", "name" => "Litožnická", "source:name" => "nameit/uir-adr"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Way, 8060000],
                  Redact[OSM::Way, 8060000, 1, :hidden],
                  Redact[OSM::Way, 8060000, 2, :hidden],
                  Redact[OSM::Way, 8060000, 3, :visible],
                  Redact[OSM::Way, 8060000, 4, :visible]
                 ], actions)
  end

  # auto-generated test for way 8400000
  # http://wtfe.gryph.de/report/way/8400000
  # http://osm.mapki.com/history/way.php?id=8400000
  def test_automatic_way8400000
    history = [OSM::Way[[25288125,26635376], :id => 8400000, :version => 1, :visible => true, :changeset => 240226, "created_by" => "YahooApplet 1.0", "note" => "FIXME previously unwayed segment"],    # agreed,
               OSM::Way[[25288125,26635376,129879246], :id => 8400000, :version => 2, :visible => true, :changeset => 596052, "created_by" => "Potlatch 0.5c", "note" => "FIXME previously unwayed segment"],    # agreed,
               OSM::Way[[25288125,26635376,129879246], :id => 8400000, :version => 3, :visible => true, :changeset => 596052, "created_by" => "Potlatch 0.5c", "foot" => "yes", "highway" => "footway", "note" => "FIXME previously unwayed segment"],    # agreed,
               OSM::Way[[25288125,26635376,129879246], :id => 8400000, :version => 4, :visible => true, :changeset => 704330, "created_by" => "Potlatch 0.5c", "foot" => "yes", "highway" => "footway", "note" => "FIXME previously unwayed segment"],    # agreed,
               OSM::Way[[25288125,26635376,129879246], :id => 8400000, :version => 5, :visible => true, :changeset => 336184, "created_by" => "Potlatch 0.8c", "foot" => "yes", "highway" => "footway"],    # not agreed,
               OSM::Way[[25288125,26635376,907961731,907961740], :id => 8400000, :version => 6, :visible => true, :changeset => 5757725, "created_by" => "Potlatch 0.8c", "highway" => "unclassified", "name" => "Swiss Terrace"],    # agreed,
               OSM::Way[[25288125,907961731,907961740], :id => 8400000, :version => 7, :visible => true, :changeset => 11094034, "highway" => "unclassified", "name" => "Swiss Terrace"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions)
  end

  # auto-generated test for way 8410000
  # http://wtfe.gryph.de/report/way/8410000
  # http://osm.mapki.com/history/way.php?id=8410000
  def test_automatic_way8410000
    history = [OSM::Way[[27165527,27165525], :id => 8410000, :version => 1, :visible => true, :changeset => 8388, "created_by" => "JOSM", "note" => "FIXME previously unwayed segment"],    # not agreed,
               OSM::Way[[95248130,27165520,27165521,27165529,27165528,27165527,27165525,27165526,27165524,95248136], :id => 8410000, :version => 2, :visible => true, :changeset => 384275, "created_by" => "JOSM", "highway" => "primary", "name" => "Landevejen", "ref" => "155"],    # agreed,
               OSM::Way[[95248130,27165520,27165521,27165529,27165528,27165527,27165525,27165526,27165524,95248136], :id => 8410000, :version => 3, :visible => true, :changeset => 474386, "created_by" => "Potlatch 0.9c", "highway" => "secondary", "name" => "Landevejen", "ref" => "155"],    # agreed,
               OSM::Way[[95248130,27165520,27165521,311339996,27165529,27165528,27165527,27165525,27165526,27165524,95248136], :id => 8410000, :version => 4, :visible => true, :changeset => 734325, "created_by" => "Potlatch 0.10f", "highway" => "secondary", "name" => "Landevejen", "ref" => "155"],    # agreed,
               OSM::Way[[95248130,334245603,27165520,27165521,334245604,334245605,311339996,27165529,27165528,27165527,27165525,27165526,27165524,95248136], :id => 8410000, :version => 5, :visible => true, :changeset => 817998, "created_by" => "Potlatch 0.10f", "highway" => "secondary", "name" => "Landevejen", "ref" => "155"],    # agreed,
               OSM::Way[[], :id => 8410000, :version => 6, :visible => false, :changeset => 817998],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([
                  Redact[OSM::Way, 8410000, 1, :hidden],
                  Redact[OSM::Way, 8410000, 2, :visible],
                  Redact[OSM::Way, 8410000, 3, :visible],
                  Redact[OSM::Way, 8410000, 4, :visible],
                  Redact[OSM::Way, 8410000, 5, :visible]
                 ], actions)
  end

  # auto-generated test for way 9010000
  # http://wtfe.gryph.de/report/way/9010000
  # http://osm.mapki.com/history/way.php?id=9010000
  def test_automatic_way9010000
    history = [OSM::Way[[66121829,66121833,66121835], :id => 9010000, :version => 1, :visible => true, :changeset => 117088, "highway" => "residential", "name" => "Merry Ct", "tiger:cfcc" => "A41", "tiger:county" => "Baldwin, GA", "tiger:name_base" => "Merry", "tiger:name_type" => "Ct", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070809", "tiger:tlid" => "16588710", "tiger:upload_uuid" => "bulk_upload.pl-5365a834-9cd2-4c18-b6e9-22ab79fecb48"],    # agreed,
               OSM::Way[[66121829,66121833,66121835], :id => 9010000, :version => 2, :visible => true, :changeset => 443654, "created_by" => "Potlatch 0.10f", "highway" => "residential", "name" => "Merry Ct", "tiger:cfcc" => "A41", "tiger:county" => "Baldwin, GA", "tiger:name_base" => "Merry", "tiger:name_type" => "Ct", "tiger:reviewed" => "no", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070809", "tiger:tlid" => "16588710", "tiger:upload_uuid" => "bulk_upload.pl-5365a834-9cd2-4c18-b6e9-22ab79fecb48"],    # not agreed,
               OSM::Way[[66121829,66121833,66121835], :id => 9010000, :version => 3, :visible => true, :changeset => 460346, "created_by" => "Merkaartor 0.12", "highway" => "residential", "name" => "Merry Ct", "tiger:cfcc" => "A41", "tiger:county" => "Baldwin, GA", "tiger:name_base" => "Merry", "tiger:name_type" => "Ct", "tiger:separated" => "no", "tiger:source" => "tiger_import_dch_v0.6_20070809", "tiger:tlid" => "16588710", "tiger:upload_uuid" => "bulk_upload.pl-5365a834-9cd2-4c18-b6e9-22ab79fecb48"],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([], actions) # both disagreers changed nothing but created_by
  end

  # auto-generated test for way 9160000
  # http://wtfe.gryph.de/report/way/9160000
  # http://osm.mapki.com/history/way.php?id=9160000
  def test_automatic_way9160000
    history = [OSM::Way[[67988783,67921711,67995916,67927031,67938289,67893004,68057769,67925379,67925055,68033333,68050297,67897577,68046991,68029474,68017773,67919827,67975307,67906128,67914373,68051361], :id => 9160000, :version => 1, :visible => true, :changeset => 134247, "attribution" => "Office of Geographic and Environmental Information (MassGIS)", "condition" => "fair", "highway" => "secondary", "lanes" => "2", "massgis:way_id" => "205523", "name" => "River Road", "source" => "massgis_import_v0.1_20071009100704", "width" => "13.4"],    # agreed,
               OSM::Way[[67988783,67921711,67995916,67927031,67938289,67893004,68057769,67925379,67925055,68033333,68050297,67897577,68046991,68029474,68017773,67919827,67975307,67906128,67914373,68051361], :id => 9160000, :version => 2, :visible => true, :changeset => 287654, "attribution" => "Office of Geographic and Environmental Information (MassGIS)", "condition" => "fair", "created_by" => "Potlatch 0.10f", "highway" => "secondary", "lanes" => "2", "massgis:way_id" => "205523", "name" => "River Road", "source" => "massgis_import_v0.1_20071009100704", "width" => "13.4"],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([],  actions) # disagreer added only created_by
  end

  # auto-generated test for way 10010000
  # http://wtfe.gryph.de/report/way/10010000
  # http://osm.mapki.com/history/way.php?id=10010000
  def test_automatic_way10010000
    history = [OSM::Way[[82203417,82203428,82203437], :id => 10010000, :version => 1, :visible => true, :changeset => 270542, "created_by" => "JOSM", "highway" => "residential", "name" => "Mrytle St"],    # not agreed,
               OSM::Way[[82203417,82203428,123176780,82203437], :id => 10010000, :version => 2, :visible => true, :changeset => 160987, "created_by" => "JOSM", "highway" => "residential", "name" => "Mrytle St"],    # not agreed,
               OSM::Way[[82203417,82203428,123176780,82203437], :id => 10010000, :version => 3, :visible => true, :changeset => 4245390, "created_by" => "JOSM", "highway" => "residential", "name" => "Mrytle Street"],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Way, 10010000],
                  Redact[OSM::Way, 10010000, 1, :hidden],
                  Redact[OSM::Way, 10010000, 2, :hidden],
                  Redact[OSM::Way, 10010000, 3, :hidden]
                 ], actions)
  end

  # auto-generated test for way 10290000
  # http://wtfe.gryph.de/report/way/10290000
  # http://osm.mapki.com/history/way.php?id=10290000
  def test_automatic_way10290000
    history = [OSM::Way[[86414733,86412872], :id => 10290000, :version => 1, :visible => true, :changeset => 308728, "created_by" => "Potlatch alpha", "source" => "yahoo_imagery"],    # agreed,
               OSM::Way[[86414733,86412872], :id => 10290000, :version => 2, :visible => true, :changeset => 518204, "created_by" => "Potlatch 0.6", "highway" => "residential", "source" => "yahoo_imagery"],    # agreed,
               OSM::Way[[86414733,86412872], :id => 10290000, :version => 3, :visible => true, :changeset => 619169, "created_by" => "Merkaartor 0.13", "highway" => "residential", "note" => "No street name signs, 22/Feb/2009", "source" => "yahoo_imagery", "source:surface" => "survey", "surface" => "unpaved"],    # not agreed,
               OSM::Way[[86414733,86412872], :id => 10290000, :version => 4, :visible => true, :changeset => 4519453, "fixme:sign:no" => "2009-02-22", "highway" => "residential", "note" => "No street name signs, 22/Feb/2009", "source" => "yahoo_imagery", "source:surface" => "survey", "surface" => "unpaved"],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Way[[86414733,86412872], :id => 10290000, :version => 4, :visible => true, :changeset => -1, "highway" => "residential", "source" => "yahoo_imagery"]],
                  Redact[OSM::Way, 10290000, 3, :hidden],
                  Redact[OSM::Way, 10290000, 4, :hidden]
                 ], actions)
  end

  # auto-generated test for way 10300000
  # http://wtfe.gryph.de/report/way/10300000
  # http://osm.mapki.com/history/way.php?id=10300000
  def test_automatic_way10300000
    history = [OSM::Way[[86677530,86682405,86682406,86680343], :id => 10300000, :version => 1, :visible => true, :changeset => 314804, "created_by" => "Potlatch alpha", "highway" => "residential"],    # not agreed,
               OSM::Way[[275719305,86682405,86682406,86680343], :id => 10300000, :version => 2, :visible => true, :changeset => 591998, "created_by" => "Potlatch alpha", "highway" => "residential"],    # agreed,
               OSM::Way[[275719305,86682405,86682406,86680343], :id => 10300000, :version => 3, :visible => true, :changeset => 358953, "created_by" => "Potlatch 0.10b", "highway" => "residential", "name" => "Kronfeldstraße"],    # agreed,
               OSM::Way[[275719310,275719305,86682405,86682406,86680343], :id => 10300000, :version => 4, :visible => true, :changeset => 358953, "created_by" => "Potlatch 0.10b", "highway" => "residential", "name" => "Kronfeldstraße"],    # agreed,
               OSM::Way[[275719310,275719305], :id => 10300000, :version => 5, :visible => true, :changeset => 2419919, "highway" => "residential", "name" => "Kronfeldstraße", "oneway" => "yes"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Way[[275719310,275719305], :id => 10300000, :version => 5, :visible => true, :changeset => -1, "name" => "Kronfeldstraße", "oneway" => "yes"]],
                  Redact[OSM::Way, 10300000, 1, :hidden],
                  Redact[OSM::Way, 10300000, 2, :visible],
                  Redact[OSM::Way, 10300000, 3, :visible],
                  Redact[OSM::Way, 10300000, 4, :visible],
                  Redact[OSM::Way, 10300000, 5, :visible]
                 ], actions)
  end

  # auto-generated test for way 10370000
  # http://wtfe.gryph.de/report/way/10370000
  # http://osm.mapki.com/history/way.php?id=10370000
  def test_automatic_way10370000
    history = [OSM::Way[[88143807,88143811], :id => 10370000, :version => 1, :visible => true, :changeset => 323103, "created_by" => "JOSM", "highway" => "residential", "name" => "Calle Iznájar", "oneway" => "true"],    # agreed,
               OSM::Way[[88143807,88143811], :id => 10370000, :version => 2, :visible => true, :changeset => 1838238, "created_by" => "JOSM", "highway" => "residential", "name" => "Calle Iznájar"],    # not agreed,
               OSM::Way[[88143807,582486777,582486807,582486714,88143811], :id => 10370000, :version => 3, :visible => true, :changeset => 3302126, "highway" => "residential", "name" => "Calle Iznájar"],    # agreed,
               OSM::Way[[88143807,582486777,582486807,582486714,1597497920,88143811], :id => 10370000, :version => 4, :visible => true, :changeset => 10435757, "highway" => "residential", "name" => "Calle Iznájar", "oneway" => "yes"],    # agreed,
               OSM::Way[[88143807,582486777,582486807,582486714,1597497920,1684907661,88143811], :id => 10370000, :version => 5, :visible => true, :changeset => 11054687, "highway" => "residential", "name" => "Calle Iznájar", "oneway" => "yes"],    # agreed,
               OSM::Way[[88143807,1693494627,582486777,582486807,582486714,1597497920,1693494619,1684907661,88143811], :id => 10370000, :version => 6, :visible => true, :changeset => 11118486, "highway" => "residential", "name" => "Calle Iznájar", "oneway" => "yes"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([ ], actions)
  end

  # auto-generated test for relation 17000
  # http://wtfe.gryph.de/report/relation/17000
  # http://osm.mapki.com/history/relation.php?id=17000
  def test_automatic_relation17000
    history = [OSM::Relation[[[OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24881812] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715]], :id  => 17000, :version => 1, :visible => true, :changeset => 166434, "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24881812] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804]], :id  => 17000, :version => 2, :visible => true, :changeset => 166434, "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24881812] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804]], :id  => 17000, :version => 3, :visible => true, :changeset => 258812, "created_by" => "Potlatch 0.9c", "rcn_ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24881812] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804]], :id  => 17000, :version => 4, :visible => true, :changeset => 258812, "created_by" => "Potlatch 0.9c", "name" => "Radweg Speyer-Neustadt", "netword" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24881812] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804]], :id  => 17000, :version => 5, :visible => true, :changeset => 258812, "created_by" => "Potlatch 0.9c", "name" => "Radweg Speyer-Neustadt", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24881812] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,26542427]], :id  => 17000, :version => 6, :visible => true, :changeset => 398455, "created_by" => "Potlatch 0.9c", "name" => "Radweg Speyer-Neustadt", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,26542427] , [OSM::Way,27388956]], :id  => 17000, :version => 7, :visible => true, :changeset => 710785, "created_by" => "Potlatch 0.9c", "name" => "Radweg Speyer-Neustadt", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,26542427] , [OSM::Way,27849489]], :id  => 17000, :version => 8, :visible => true, :changeset => 453741, "created_by" => "Potlatch 0.9c", "name" => "Radweg Speyer-Neustadt", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683]], :id  => 17000, :version => 9, :visible => true, :changeset => 784031, "created_by" => "Potlatch 0.9c", "name" => "Radweg Speyer-Neustadt", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683]], :id  => 17000, :version => 10, :visible => true, :changeset => 64244, "created_by" => "Potlatch 0.9c", "name" => "Radweg Speyer-Neustadt", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,25460178] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683]], :id  => 17000, :version => 11, :visible => true, :changeset => 73747, "created_by" => "Potlatch 0.9c", "name" => "Radweg Speyer-Neustadt", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683]], :id  => 17000, :version => 12, :visible => true, :changeset => 73747, "created_by" => "Potlatch 0.9c", "name" => "Radweg Speyer-Neustadt", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683]], :id  => 17000, :version => 13, :visible => true, :changeset => 80550, "created_by" => "Potlatch 0.9c", "name" => "Palatia-Radweg", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,25719194] , [OSM::Way,25719198] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683]], :id  => 17000, :version => 14, :visible => true, :changeset => 110221, "created_by" => "Potlatch 0.9c", "name" => "Palatia-Radweg", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,25719194] , [OSM::Way,25719198] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683]], :id  => 17000, :version => 15, :visible => true, :changeset => 110221, "created_by" => "Potlatch 0.9c", "name" => "Palatia-Radweg", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,25719194] , [OSM::Way,25719198] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,30752607]], :id  => 17000, :version => 16, :visible => true, :changeset => 73171, "created_by" => "Potlatch 0.9c", "name" => "Palatia-Radweg", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,25339934] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,25719194] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,30236218] , [OSM::Way,30236230] , [OSM::Way,30752607] , [OSM::Way,31778625] , [OSM::Way,31877023] , [OSM::Way,31877024] , [OSM::Way,31877026] , [OSM::Way,31889133] , [OSM::Way,31889136]], :id  => 17000, :version => 17, :visible => true, :changeset => 755662, "created_by" => "Potlatch 0.9c", "name" => "Palatia-Radweg", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,30236218] , [OSM::Way,30236230] , [OSM::Way,30752607] , [OSM::Way,31778625] , [OSM::Way,31877023] , [OSM::Way,31877024] , [OSM::Way,31877026] , [OSM::Way,31889133] , [OSM::Way,31889136] , [OSM::Way,31926628]], :id  => 17000, :version => 18, :visible => true, :changeset => 766988, "created_by" => "Potlatch 0.9c", "name" => "Palatia-Radweg", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,30236218] , [OSM::Way,30236230] , [OSM::Way,30752607] , [OSM::Way,31778625] , [OSM::Way,31877023] , [OSM::Way,31877024] , [OSM::Way,31877026] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,24195193] , [OSM::Way,31877020]], :id  => 17000, :version => 19, :visible => true, :changeset => 1098107, "created_by" => "Potlatch 0.9c", "name" => "Palatia-Radweg", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,30236218] , [OSM::Way,30236230] , [OSM::Way,30752607] , [OSM::Way,31778625] , [OSM::Way,31877023] , [OSM::Way,31877024] , [OSM::Way,31877026] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,25719194]], :id  => 17000, :version => 20, :visible => true, :changeset => 2981943, "created_by" => "Potlatch 0.9c", "name" => "Palatia-Radweg", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,30236218] , [OSM::Way,30236230] , [OSM::Way,30752607] , [OSM::Way,31778625] , [OSM::Way,31877023] , [OSM::Way,31877024] , [OSM::Way,31877026] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,25719194]], :id  => 17000, :version => 21, :visible => true, :changeset => 3034071, "name" => "Palatia-Radweg", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,30236218] , [OSM::Way,30236230] , [OSM::Way,30752607] , [OSM::Way,31778625] , [OSM::Way,31877023] , [OSM::Way,31877024] , [OSM::Way,31877026] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,25719194]], :id  => 17000, :version => 22, :visible => true, :changeset => 3122941, "name" => "Palatia-Radweg", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,30236218] , [OSM::Way,30236230] , [OSM::Way,30752607] , [OSM::Way,31778625] , [OSM::Way,31877023] , [OSM::Way,31877024] , [OSM::Way,31877026] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,25719194]], :id  => 17000, :version => 23, :visible => true, :changeset => 3560332, "name" => "Palatia-Radweg", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,51370932] , [OSM::Way,27388962] , [OSM::Way,26714535] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,16858011] , [OSM::Way,25574329] , [OSM::Way,26173438] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,30236218] , [OSM::Way,30236230] , [OSM::Way,30752607] , [OSM::Way,31778625] , [OSM::Way,31877023] , [OSM::Way,31877024] , [OSM::Way,31877026] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,25719194]], :id  => 17000, :version => 24, :visible => true, :changeset => 3994235, "name" => "Palatia-Radweg", "network" => "rcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,51370932] , [OSM::Way,27388962] , [OSM::Way,26714535] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,16858011] , [OSM::Way,25574329] , [OSM::Way,26173438] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,30236218] , [OSM::Way,30236230] , [OSM::Way,30752607] , [OSM::Way,31778625] , [OSM::Way,31877023] , [OSM::Way,31877024] , [OSM::Way,31877026] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,25719194]], :id  => 17000, :version => 25, :visible => true, :changeset => 4070468, "name" => "Palatia-Radweg", "network" => "rcn", "rcn" => "yes", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,26542418] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,51370932] , [OSM::Way,27388962] , [OSM::Way,26714535] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,26542427] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,30236218] , [OSM::Way,30236230] , [OSM::Way,30752607] , [OSM::Way,31778625] , [OSM::Way,31877023] , [OSM::Way,31877024] , [OSM::Way,31877026] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,25719194]], :id  => 17000, :version => 26, :visible => true, :changeset => 4074007, "ascent" => "27", "descent" => "62", "distance" => "28", "name" => "Palatia-Radweg", "network" => "rcn", "rcn" => "yes", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24251484] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24705842] , [OSM::Way,24749476] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24768604] , [OSM::Way,24815705] , [OSM::Way,24815706] , [OSM::Way,24815707] , [OSM::Way,24815708] , [OSM::Way,24815709] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,24882714] , [OSM::Way,24882715] , [OSM::Way,24882804] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,51370932] , [OSM::Way,27388962] , [OSM::Way,26714535] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,27849489] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24305257] , [OSM::Way,24305256] , [OSM::Way,24305255] , [OSM::Way,30752607] , [OSM::Way,26542418] , [OSM::Way,26542427] , [OSM::Way,47748645] , [OSM::Way,26542426] , [OSM::Way,26542424] , [OSM::Way,26542425] , [OSM::Way,25339946] , [OSM::Way,25339945] , [OSM::Way,25339944] , [OSM::Way,31926628] , [OSM::Way,31889133] , [OSM::Way,25719194] , [OSM::Way,30236218] , [OSM::Way,31778625] , [OSM::Way,31877024] , [OSM::Way,31877026] , [OSM::Way,31877023] , [OSM::Way,30236230] , [OSM::Way,25719198] , [OSM::Way,25719197] , [OSM::Way,24008034] , [OSM::Way,9051849] , [OSM::Way,31877020] , [OSM::Way,24195193]], :id  => 17000, :version => 27, :visible => true, :changeset => 4074206, "ascent" => "27", "descent" => "62", "distance" => "28", "name" => "Palatia-Radweg", "network" => "rcn", "rcn" => "yes", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,30236230] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,30236218] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,51370932] , [OSM::Way,27388962] , [OSM::Way,26714535] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653]], :id  => 17000, :version => 28, :visible => true, :changeset => 4074459, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Palatia-Radweg", "network" => "rcn", "rcn" => "yes", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,30236230] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,30236218] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,51370932] , [OSM::Way,27388962] , [OSM::Way,26714535] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,53152876]], :id  => 17000, :version => 29, :visible => true, :changeset => 4211009, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Palatia-Radweg", "network" => "rcn", "rcn" => "yes", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,30236230] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,30236218] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,51370932] , [OSM::Way,27388962] , [OSM::Way,26714535] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931]], :id  => 17000, :version => 30, :visible => true, :changeset => 4780691, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Palatia-Radweg", "network" => "rcn", "rcn" => "yes", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,30236230] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,30236218] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,27388962] , [OSM::Way,26714535] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931]], :id  => 17000, :version => 31, :visible => true, :changeset => 4780691, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Palatia-Radweg", "network" => "rcn", "rcn" => "yes", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,30236230] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,30236218] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931]], :id  => 17000, :version => 32, :visible => true, :changeset => 4780691, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Palatia-Radweg", "network" => "rcn", "rcn" => "yes", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,30236230] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,30236218] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931] , [OSM::Way,26714535]], :id  => 17000, :version => 33, :visible => true, :changeset => 4780691, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Palatia-Radweg", "network" => "rcn", "rcn" => "yes", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,30236230] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,30236218] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931] , [OSM::Way,26714535]], :id  => 17000, :version => 34, :visible => true, :changeset => 5260163, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Palatia-Radweg", "network" => "rcn", "ref" => "R58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,30236230] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,30236218] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931] , [OSM::Way,26714535]], :id  => 17000, :version => 35, :visible => true, :changeset => 5260176, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Palatia-Radweg", "network" => "lcn", "ref" => "R58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,30236230] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,30236218] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931] , [OSM::Way,26714535]], :id  => 17000, :version => 36, :visible => true, :changeset => 5361201, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Jakobsweg", "network" => "lcn", "ref" => "R58", "route" => "bicycle", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,30236230] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,30236218] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931] , [OSM::Way,26714535] , [OSM::Way,72456862] , [OSM::Way,72456863] , [OSM::Way,72456853]], :id  => 17000, :version => 37, :visible => true, :changeset => 5492027, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Jakobsweg", "network" => "lcn", "ref" => "R58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,30236230] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,30236218] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931] , [OSM::Way,26714535] , [OSM::Way,72456862] , [OSM::Way,72456863] , [OSM::Way,72456853] , [OSM::Way,72519674]], :id  => 17000, :version => 38, :visible => true, :changeset => 5497121, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Jakobsweg", "network" => "lcn", "ref" => "R58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,30236218] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931] , [OSM::Way,26714535] , [OSM::Way,72456862] , [OSM::Way,72456863] , [OSM::Way,72456853] , [OSM::Way,72519674]], :id  => 17000, :version => 39, :visible => true, :changeset => 5583707, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Jakobsweg", "network" => "lcn", "ref" => "R58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,30236218] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931] , [OSM::Way,26714535] , [OSM::Way,72456862] , [OSM::Way,72456863] , [OSM::Way,72456853] , [OSM::Way,72519674] , [OSM::Way,74204675]], :id  => 17000, :version => 40, :visible => true, :changeset => 5583707, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Jakobsweg", "network" => "lcn", "ref" => "R58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,31877020] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931] , [OSM::Way,26714535] , [OSM::Way,72456862] , [OSM::Way,72456863] , [OSM::Way,72456853] , [OSM::Way,72519674] , [OSM::Way,74204675]], :id  => 17000, :version => 41, :visible => true, :changeset => 5583707, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Jakobsweg", "network" => "lcn", "ref" => "R58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,75839489] , [OSM::Way,31877020] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931] , [OSM::Way,26714535] , [OSM::Way,72456862] , [OSM::Way,72456863] , [OSM::Way,72456853] , [OSM::Way,72519674] , [OSM::Way,74204675]], :id  => 17000, :version => 42, :visible => true, :changeset => 5676349, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Jakobsweg", "network" => "lcn", "ref" => "R58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,75839489] , [OSM::Way,31877020] , [OSM::Way,76167246] , [OSM::Way,76167248] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931] , [OSM::Way,26714535] , [OSM::Way,72456862] , [OSM::Way,72456863] , [OSM::Way,72456853] , [OSM::Way,72519674] , [OSM::Way,74204675]], :id  => 17000, :version => 43, :visible => true, :changeset => 5694663, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Jakobsweg", "network" => "lcn", "ref" => "R58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,75839489] , [OSM::Way,31877020] , [OSM::Way,76167246] , [OSM::Way,76167248] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,77029417] , [OSM::Way,77029415] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,8045330] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931] , [OSM::Way,26714535] , [OSM::Way,72456862] , [OSM::Way,72456863] , [OSM::Way,72456853] , [OSM::Way,72519674] , [OSM::Way,74204675]], :id  => 17000, :version => 44, :visible => true, :changeset => 5751347, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Jakobsweg", "network" => "lcn", "ref" => "R58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,75839489] , [OSM::Way,31877020] , [OSM::Way,76167246] , [OSM::Way,76167248] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,77029417] , [OSM::Way,77029415] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931] , [OSM::Way,26714535] , [OSM::Way,72456862] , [OSM::Way,72456863] , [OSM::Way,72456853] , [OSM::Way,72519674] , [OSM::Way,74204675]], :id  => 17000, :version => 45, :visible => true, :changeset => 8151316, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Jakobsweg", "network" => "lcn", "ref" => "R58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,75839489] , [OSM::Way,31877020] , [OSM::Way,76167246] , [OSM::Way,76167248] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,77029417] , [OSM::Way,77029415] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,51370936] , [OSM::Way,8050742] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931] , [OSM::Way,26714535] , [OSM::Way,72456862] , [OSM::Way,72456863] , [OSM::Way,72456853] , [OSM::Way,72519674] , [OSM::Way,74204675]], :id  => 17000, :version => 46, :visible => true, :changeset => 9084890, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Palatia-Radweg", "network" => "lcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,75839489] , [OSM::Way,31877020] , [OSM::Way,76167246] , [OSM::Way,76167248] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,77029417] , [OSM::Way,77029415] , [OSM::Way,24882070] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931] , [OSM::Way,26714535] , [OSM::Way,72456862] , [OSM::Way,72456863] , [OSM::Way,72456853] , [OSM::Way,72519674] , [OSM::Way,74204675]], :id  => 17000, :version => 47, :visible => true, :changeset => 9085054, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Palatia-Radweg", "network" => "lcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,75839489] , [OSM::Way,31877020] , [OSM::Way,76167246] , [OSM::Way,76167248] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,77029417] , [OSM::Way,77029415] , [OSM::Way,24882070] , [OSM::Way,131424918] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931] , [OSM::Way,26714535] , [OSM::Way,72456862] , [OSM::Way,72456863] , [OSM::Way,72456853] , [OSM::Way,72519674] , [OSM::Way,74204675]], :id  => 17000, :version => 48, :visible => true, :changeset => 9404475, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Palatia-Radweg", "network" => "lcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,24195193] , [OSM::Way,75839489] , [OSM::Way,31877020] , [OSM::Way,76167246] , [OSM::Way,76167248] , [OSM::Way,9051849] , [OSM::Way,24008034] , [OSM::Way,25719197] , [OSM::Way,25719198] , [OSM::Way,31877023] , [OSM::Way,31877026] , [OSM::Way,31877024] , [OSM::Way,31778625] , [OSM::Way,25719194] , [OSM::Way,31889133] , [OSM::Way,31926628] , [OSM::Way,25339944] , [OSM::Way,25339945] , [OSM::Way,25339946] , [OSM::Way,26542425] , [OSM::Way,26542424] , [OSM::Way,26542426] , [OSM::Way,47748645] , [OSM::Way,26542427] , [OSM::Way,26542418] , [OSM::Way,30752607] , [OSM::Way,24305255] , [OSM::Way,24305256] , [OSM::Way,24305257] , [OSM::Way,24305248] , [OSM::Way,24305249] , [OSM::Way,24319519] , [OSM::Way,24319520] , [OSM::Way,24319511] , [OSM::Way,44430025] , [OSM::Way,24319512] , [OSM::Way,24882804] , [OSM::Way,24705842] , [OSM::Way,24251476] , [OSM::Way,157332374] , [OSM::Way,24251481] , [OSM::Way,24251482] , [OSM::Way,24768604] , [OSM::Way,24251484] , [OSM::Way,24815709] , [OSM::Way,24815708] , [OSM::Way,24815707] , [OSM::Way,24815706] , [OSM::Way,24815705] , [OSM::Way,24881672] , [OSM::Way,24881673] , [OSM::Way,24881674] , [OSM::Way,24882714] , [OSM::Way,24749476] , [OSM::Way,28589682] , [OSM::Way,28589683] , [OSM::Way,24749478] , [OSM::Way,24749479] , [OSM::Way,77029417] , [OSM::Way,77029415] , [OSM::Way,24882070] , [OSM::Way,131424918] , [OSM::Way,24882071] , [OSM::Way,24882715] , [OSM::Way,24882072] , [OSM::Way,24882073] , [OSM::Way,24882074] , [OSM::Way,27849489] , [OSM::Way,24881813] , [OSM::Way,51370926] , [OSM::Way,26718279] , [OSM::Way,26799529] , [OSM::Way,26718081] , [OSM::Way,26715722] , [OSM::Way,27076099] , [OSM::Way,27076098] , [OSM::Way,26502853] , [OSM::Way,51370934] , [OSM::Way,26502854] , [OSM::Way,26502842] , [OSM::Way,51370937] , [OSM::Way,26192905] , [OSM::Way,16858074] , [OSM::Way,51370930] , [OSM::Way,51995589,"forward"] , [OSM::Way,45126174,"forward"] , [OSM::Way,45126175,"forward"] , [OSM::Way,26267650,"forward"] , [OSM::Way,16858011,"backward"] , [OSM::Way,25574329,"forward"] , [OSM::Way,26173438,"forward"] , [OSM::Way,26124653] , [OSM::Way,53152876] , [OSM::Way,51370931] , [OSM::Way,26714535] , [OSM::Way,72456862] , [OSM::Way,72456863] , [OSM::Way,72456853] , [OSM::Way,72519674] , [OSM::Way,74204675]], :id  => 17000, :version => 49, :visible => true, :changeset => 11132658, "ascent" => "27", "descent" => "62", "description" => "Radweg von Neustadt a.d.W. am Speyerbach entlang nach Speyer", "distance" => "28", "name" => "Palatia-Radweg", "network" => "lcn", "ref" => "R 58", "route" => "bicycle", "type" => "route"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([
                  Redact[OSM::Relation, 17000, 36, :hidden],
                  Redact[OSM::Relation, 17000, 37, :visible],
                  Redact[OSM::Relation, 17000, 38, :visible],
                  Redact[OSM::Relation, 17000, 39, :visible],
                  Redact[OSM::Relation, 17000, 40, :visible],
                  Redact[OSM::Relation, 17000, 41, :visible],
                  Redact[OSM::Relation, 17000, 42, :visible],
                  Redact[OSM::Relation, 17000, 43, :visible],
                  Redact[OSM::Relation, 17000, 44, :visible],
                  Redact[OSM::Relation, 17000, 45, :visible] # name changed in v36 and changed back in v46
                 ], actions)
  end

  # auto-generated test for relation 19000
  # http://wtfe.gryph.de/report/relation/19000
  # http://osm.mapki.com/history/relation.php?id=19000
  def test_automatic_relation19000
    history = [OSM::Relation[[[OSM::Way,4397388,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,4403589] , [OSM::Way,4403591] , [OSM::Way,4403874,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,4410471] , [OSM::Way,4410473,"forward"] , [OSM::Way,4424794,"forward"] , [OSM::Way,4469836] , [OSM::Way,4469837] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991] , [OSM::Way,4471993,"forward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,4592573] , [OSM::Way,4600236,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4677645] , [OSM::Way,4763465] , [OSM::Way,4763947,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,19183059] , [OSM::Way,23635724,"forward"] , [OSM::Way,23720975] , [OSM::Way,23735656] , [OSM::Way,24916008] , [OSM::Way,24916009] , [OSM::Way,24916010,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,25216571] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217539,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25217951,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219759] , [OSM::Way,25219761] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219767,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,25219775,"forward"]], :id  => 19000, :version => 1, :visible => true, :changeset => 346312, "name" => "Buslinie M27", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4397388,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,4403589] , [OSM::Way,4403591] , [OSM::Way,4403874,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,4410471] , [OSM::Way,4410473,"forward"] , [OSM::Way,4424794,"forward"] , [OSM::Way,4469836] , [OSM::Way,4469837] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991] , [OSM::Way,4471993,"forward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,4592573] , [OSM::Way,4600236,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4677645] , [OSM::Way,4763465] , [OSM::Way,4763947,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,19183059] , [OSM::Way,23635724,"forward"] , [OSM::Way,23720975] , [OSM::Way,23735656] , [OSM::Way,24700555,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,24916008] , [OSM::Way,24916009] , [OSM::Way,24916010,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,25216571] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217539,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25217951,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219759] , [OSM::Way,25219761] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219767,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"]], :id  => 19000, :version => 2, :visible => true, :changeset => 465079, "name" => "Buslinie M27", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4397388,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,4403589] , [OSM::Way,4403591] , [OSM::Way,4403874,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,4410471] , [OSM::Way,4410473,"forward"] , [OSM::Way,4424794,"forward"] , [OSM::Way,4469836] , [OSM::Way,4469837] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991] , [OSM::Way,4471993,"forward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4592573] , [OSM::Way,4600236,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,4632866] , [OSM::Way,4632868] , [OSM::Way,4637741] , [OSM::Way,4675817,"forward"] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4677645] , [OSM::Way,4763465] , [OSM::Way,4763947,"forward"] , [OSM::Way,4776148] , [OSM::Way,4954198,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,19183059] , [OSM::Way,23635724,"forward"] , [OSM::Way,23720975] , [OSM::Way,23735656] , [OSM::Way,23984383] , [OSM::Way,23984384] , [OSM::Way,24700555,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,24916008] , [OSM::Way,24916009] , [OSM::Way,24916010,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,25216571] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217539,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25217951,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219759] , [OSM::Way,25219761] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219767,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,25500702] , [OSM::Way,25500703] , [OSM::Way,25500705]], :id  => 19000, :version => 3, :visible => true, :changeset => 465079, "name" => "Buslinie M27", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4397388,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,4403589] , [OSM::Way,4403591] , [OSM::Way,4403874,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,4410471] , [OSM::Way,4410473,"forward"] , [OSM::Way,4424794,"forward"] , [OSM::Way,4469836] , [OSM::Way,4469837] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991] , [OSM::Way,4471993,"forward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4592573] , [OSM::Way,4600236,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,4632866] , [OSM::Way,4632868] , [OSM::Way,4637741] , [OSM::Way,4675817,"forward"] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4677645] , [OSM::Way,4763465] , [OSM::Way,4763947,"forward"] , [OSM::Way,4776148] , [OSM::Way,4954198,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,19183059] , [OSM::Way,23635724,"forward"] , [OSM::Way,23720975] , [OSM::Way,23735656] , [OSM::Way,23984383] , [OSM::Way,23984384] , [OSM::Way,24700555,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,24916008] , [OSM::Way,24916009] , [OSM::Way,24916010,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,25216571] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217539,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25217951,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219759] , [OSM::Way,25219761] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219767,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,25500702] , [OSM::Way,25500703] , [OSM::Way,25500705]], :id  => 19000, :version => 4, :visible => true, :changeset => 465079, "name" => "Buslinie M27", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4397388,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,4403589] , [OSM::Way,4403591] , [OSM::Way,4403874,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,4410471] , [OSM::Way,4410473,"forward"] , [OSM::Way,4424794,"forward"] , [OSM::Way,4469836] , [OSM::Way,4469837] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991] , [OSM::Way,4471993,"forward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4592573] , [OSM::Way,4600236,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,4632866] , [OSM::Way,4632868] , [OSM::Way,4637741] , [OSM::Way,4675817,"forward"] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4677645] , [OSM::Way,4763465] , [OSM::Way,4763947,"forward"] , [OSM::Way,4776148] , [OSM::Way,4954198,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,19183059] , [OSM::Way,23635724,"forward"] , [OSM::Way,23720975] , [OSM::Way,23735656] , [OSM::Way,23984383] , [OSM::Way,23984384] , [OSM::Way,24700555,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,24916008] , [OSM::Way,24916009] , [OSM::Way,24916010,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,25216571] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217539,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219759] , [OSM::Way,25219761] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219767,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,25500702] , [OSM::Way,25500703] , [OSM::Way,25500705] , [OSM::Way,25781742,"forward"]], :id  => 19000, :version => 5, :visible => true, :changeset => 306607, "name" => "Buslinie M27", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4397388,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,4403589] , [OSM::Way,4403591] , [OSM::Way,4403874,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,4410471] , [OSM::Way,4410473,"forward"] , [OSM::Way,4424794,"forward"] , [OSM::Way,4469836] , [OSM::Way,4469837] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991] , [OSM::Way,4471993,"forward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4592573] , [OSM::Way,4600236,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,4632866] , [OSM::Way,4632868] , [OSM::Way,4637741] , [OSM::Way,4675817,"forward"] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4677645] , [OSM::Way,4763465] , [OSM::Way,4763947,"forward"] , [OSM::Way,4776148] , [OSM::Way,4954198,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,19183059] , [OSM::Way,23635724,"forward"] , [OSM::Way,23720975] , [OSM::Way,23735656] , [OSM::Way,23984383] , [OSM::Way,23984384] , [OSM::Way,24700555,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,24916008] , [OSM::Way,24916009] , [OSM::Way,24916010,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,25216571] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217539,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219759] , [OSM::Way,25219761] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219767,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,25500702] , [OSM::Way,25500703] , [OSM::Way,25500705] , [OSM::Way,25781742,"forward"]], :id  => 19000, :version => 6, :visible => true, :changeset => 306607, "name" => "Buslinie M27", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4397388,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,4403589] , [OSM::Way,4403591] , [OSM::Way,4403874,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,4410471] , [OSM::Way,4410473,"forward"] , [OSM::Way,4424794,"forward"] , [OSM::Way,4469836] , [OSM::Way,4469837] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991] , [OSM::Way,4471993,"forward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4592573] , [OSM::Way,4600236,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,4632866] , [OSM::Way,4632868] , [OSM::Way,4637741] , [OSM::Way,4675817,"forward"] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4677645] , [OSM::Way,4763465] , [OSM::Way,4763947,"forward"] , [OSM::Way,4776148] , [OSM::Way,4954198,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,19183059] , [OSM::Way,23635724,"forward"] , [OSM::Way,23720975] , [OSM::Way,23735656] , [OSM::Way,23984383] , [OSM::Way,23984384] , [OSM::Way,24700555,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,24916008] , [OSM::Way,24916009] , [OSM::Way,24916010,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,25216571] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219759] , [OSM::Way,25219761] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219767,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,25500702] , [OSM::Way,25500703] , [OSM::Way,25500705] , [OSM::Way,25781742,"forward"] , [OSM::Way,27708240]], :id  => 19000, :version => 7, :visible => true, :changeset => 306607, "name" => "Buslinie M27", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4397388,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,4403589] , [OSM::Way,4403591] , [OSM::Way,4403874,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,4410471] , [OSM::Way,4410473,"forward"] , [OSM::Way,4424794,"forward"] , [OSM::Way,4469836] , [OSM::Way,4469837] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991] , [OSM::Way,4471993,"forward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4592573] , [OSM::Way,4600236,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,4632866] , [OSM::Way,4632868] , [OSM::Way,4637741] , [OSM::Way,4675817,"forward"] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4677645] , [OSM::Way,4763465] , [OSM::Way,4763947,"forward"] , [OSM::Way,4776148] , [OSM::Way,4954198,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,19183059] , [OSM::Way,23635724,"forward"] , [OSM::Way,23720975] , [OSM::Way,23735656] , [OSM::Way,23984383] , [OSM::Way,23984384] , [OSM::Way,24700555,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,24916008] , [OSM::Way,24916009] , [OSM::Way,24916010,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,25216571] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219759] , [OSM::Way,25219761] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219767,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,25500702] , [OSM::Way,25500703] , [OSM::Way,25500705] , [OSM::Way,25781742,"forward"] , [OSM::Way,27708240] , [OSM::Way,27717037] , [OSM::Way,27717047]], :id  => 19000, :version => 8, :visible => true, :changeset => 674418, "name" => "Buslinie M27", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4397388,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,4403589] , [OSM::Way,4403591] , [OSM::Way,4403874,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,4410471] , [OSM::Way,4410473,"forward"] , [OSM::Way,4424794,"forward"] , [OSM::Way,4469836] , [OSM::Way,4469837] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991] , [OSM::Way,4471993,"forward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4592573] , [OSM::Way,4600236,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,4632866] , [OSM::Way,4632868] , [OSM::Way,4637741] , [OSM::Way,4675817,"forward"] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4677645] , [OSM::Way,4763465] , [OSM::Way,4763947,"forward"] , [OSM::Way,4776148] , [OSM::Way,4954198,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,19183059] , [OSM::Way,23635724,"forward"] , [OSM::Way,23720975] , [OSM::Way,23735656] , [OSM::Way,23984383] , [OSM::Way,23984384] , [OSM::Way,24700555,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,24916008] , [OSM::Way,24916009] , [OSM::Way,24916010,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,25216571] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219759] , [OSM::Way,25219761] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219767,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,25500702] , [OSM::Way,25500703] , [OSM::Way,25500705] , [OSM::Way,25781742,"forward"] , [OSM::Way,27708240] , [OSM::Way,27717037] , [OSM::Way,27717047] , [OSM::Way,30195541,"forward"]], :id  => 19000, :version => 9, :visible => true, :changeset => 800001, "name" => "Buslinie M27", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4397388,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,4403591] , [OSM::Way,4403874,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,4410471] , [OSM::Way,4410473,"forward"] , [OSM::Way,4424794,"forward"] , [OSM::Way,4469836] , [OSM::Way,4469837] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4592573] , [OSM::Way,4600236,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,4632866] , [OSM::Way,4632868] , [OSM::Way,4637741] , [OSM::Way,4675817,"forward"] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4677645] , [OSM::Way,4763465] , [OSM::Way,4763947,"forward"] , [OSM::Way,4776148] , [OSM::Way,4954198,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,19183059] , [OSM::Way,23635724,"forward"] , [OSM::Way,23720975] , [OSM::Way,23735656] , [OSM::Way,23984383] , [OSM::Way,23984384] , [OSM::Way,24700555,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,24916008] , [OSM::Way,24916009] , [OSM::Way,24916010,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,25216571] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219759] , [OSM::Way,25219761] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219767,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,25500702] , [OSM::Way,25500703] , [OSM::Way,25500705] , [OSM::Way,25781742,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,30195541,"forward"]], :id  => 19000, :version => 10, :visible => true, :changeset => 1476380, "name" => "Buslinie M27", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4397388,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,4403591] , [OSM::Way,4403874,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,4410471] , [OSM::Way,4410473,"forward"] , [OSM::Way,4424794,"forward"] , [OSM::Way,4469836] , [OSM::Way,4469837] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4592573] , [OSM::Way,4600236,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,4632866] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,4675817,"forward"] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4677645] , [OSM::Way,4763465] , [OSM::Way,4763947,"forward"] , [OSM::Way,4776148] , [OSM::Way,4954198,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,19183059] , [OSM::Way,23635724,"forward"] , [OSM::Way,23720975] , [OSM::Way,23735656] , [OSM::Way,23984383] , [OSM::Way,23984384] , [OSM::Way,24700555,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,24916008] , [OSM::Way,24916009] , [OSM::Way,24916010,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,25216571] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219759] , [OSM::Way,25219761] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219767,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,25500702] , [OSM::Way,25500703] , [OSM::Way,25500705] , [OSM::Way,25781742,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,30195541,"forward"]], :id  => 19000, :version => 11, :visible => true, :changeset => 1496591, "name" => "Buslinie M27", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4397388,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,4403591] , [OSM::Way,4403874,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,4410471] , [OSM::Way,4410473,"forward"] , [OSM::Way,4424794,"forward"] , [OSM::Way,4469836] , [OSM::Way,4469837] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4592573] , [OSM::Way,4600236,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,4632866] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,4675817,"forward"] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4677645] , [OSM::Way,4763465] , [OSM::Way,4763947,"forward"] , [OSM::Way,4776148] , [OSM::Way,4954198,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,19183059] , [OSM::Way,23635724,"forward"] , [OSM::Way,23720975] , [OSM::Way,23735656] , [OSM::Way,23984383] , [OSM::Way,23984384] , [OSM::Way,24700555,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,24916008] , [OSM::Way,24916009] , [OSM::Way,24916010,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,25216571] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219759] , [OSM::Way,25219761] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219767,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,25500702] , [OSM::Way,25500703] , [OSM::Way,25500705] , [OSM::Way,25781742,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,25219775,"forward"]], :id  => 19000, :version => 12, :visible => true, :changeset => 1600715, "name" => "Buslinie M27", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4397388,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,4403591] , [OSM::Way,4403874,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,4410473,"forward"] , [OSM::Way,4424794,"forward"] , [OSM::Way,4469836] , [OSM::Way,4469837] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4592573] , [OSM::Way,4600236,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,4632866] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,4675817,"forward"] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4677645] , [OSM::Way,38279334] , [OSM::Way,4763947,"forward"] , [OSM::Way,4776148] , [OSM::Way,4954198,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,19183059] , [OSM::Way,23635724,"forward"] , [OSM::Way,23720975] , [OSM::Way,23735656] , [OSM::Way,23984383] , [OSM::Way,23984384] , [OSM::Way,24700555,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,25216571] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219759] , [OSM::Way,25219761] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219767,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,25500702] , [OSM::Way,25500703] , [OSM::Way,25500705] , [OSM::Way,25781742,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,24916008] , [OSM::Way,4763465]], :id  => 19000, :version => 13, :visible => true, :changeset => 1982000, "name" => "Buslinie M27", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4397388,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,4403591] , [OSM::Way,4403874,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,4410473,"forward"] , [OSM::Way,4424794,"forward"] , [OSM::Way,4469836] , [OSM::Way,4469837] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4592573] , [OSM::Way,4600236,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,4632866] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,4675817,"forward"] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4677645] , [OSM::Way,38279334] , [OSM::Way,4763947,"forward"] , [OSM::Way,4776148] , [OSM::Way,4954198,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,19183059] , [OSM::Way,23635724,"forward"] , [OSM::Way,23720975] , [OSM::Way,23735656] , [OSM::Way,23984383] , [OSM::Way,23984384] , [OSM::Way,24700555,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,25216571] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219759] , [OSM::Way,25219761] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219767,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,25500702] , [OSM::Way,25500703] , [OSM::Way,25500705] , [OSM::Way,25781742,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,24916008] , [OSM::Way,4763465]], :id  => 19000, :version => 14, :visible => true, :changeset => 2032354, "name" => "Buslinie M27", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Node,271419839,"forward_stop"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Node,271419843,"stop"] , [OSM::Node,271419843,"stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,23735656] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Node,271419842] , [OSM::Node,271419841] , [OSM::Way,25781481,"forward"]], :id  => 19000, :version => 15, :visible => true, :changeset => 2032834, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Node,271419839,"forward_stop"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Node,271419843,"stop"] , [OSM::Node,271419843,"stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,23735656] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Node,271419842] , [OSM::Node,271419841] , [OSM::Way,25781481,"forward"] , [OSM::Node,459173213,"S+UWedding/Nettelbeckplatz"]], :id  => 19000, :version => 16, :visible => true, :changeset => 2079295, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Node,271419839,"forward_stop"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Node,271419843,"stop"] , [OSM::Node,271419843,"stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,23735656] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Node,271419842] , [OSM::Node,271419841] , [OSM::Way,25781481,"forward"] , [OSM::Node,459173213,"S+UWedding/Nettelbeckplatz"] , [OSM::Node,459174241]], :id  => 19000, :version => 17, :visible => true, :changeset => 2079357, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Node,271419839,"forward_stop"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Node,271419843,"stop"] , [OSM::Node,271419843,"stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,23735656] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Node,271419842] , [OSM::Node,271419841] , [OSM::Way,25781481,"forward"] , [OSM::Node,459173213,"S+UWedding/Nettelbeckplatz"] , [OSM::Node,459174241,"S+UWedding/Nettelbeckplatz"]], :id  => 19000, :version => 18, :visible => true, :changeset => 2079357, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Node,271419839,"forward_stop"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Node,271419843,"stop"] , [OSM::Node,271419843,"stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,23735656] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Node,271419842] , [OSM::Node,271419841] , [OSM::Way,25781481,"forward"] , [OSM::Node,459173213,"S+UWedding/Nettelbeckplatz"] , [OSM::Node,459174241]], :id  => 19000, :version => 19, :visible => true, :changeset => 2079357, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Node,271419839,"forward_stop"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Node,271419843,"stop"] , [OSM::Node,271419843,"stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,23735656] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Node,271419842] , [OSM::Node,271419841] , [OSM::Way,25781481,"forward"] , [OSM::Node,459173213,"S+UPankow"] , [OSM::Node,459174241,"UMierendofplatz"] , [OSM::Node,459187222,"S+UPankow"]], :id  => 19000, :version => 25, :visible => true, :changeset => 2079478, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Node,271419839,"forward_stop"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Node,271419843,"stop"] , [OSM::Node,271419843,"stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,23735656] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Node,271419842] , [OSM::Node,271419841] , [OSM::Way,25781481,"forward"] , [OSM::Node,459173213,"S+UPankow"] , [OSM::Node,459174241,"UMierendofplatz"] , [OSM::Node,459187222,"S+UPankow"] , [OSM::Node,459190896,"uMierendorfplatz"]], :id  => 19000, :version => 26, :visible => true, :changeset => 2079478, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Node,271419839,"forward_stop"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Node,271419843,"stop"] , [OSM::Node,271419843,"stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,23735656] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Node,271419842] , [OSM::Node,271419841] , [OSM::Way,25781481,"forward"] , [OSM::Node,459173213,"S+UPankow"] , [OSM::Node,459174241,"UMierendofplatz"] , [OSM::Node,459187222,"S+UPankow"] , [OSM::Node,459190896,"uMierendorfplatz"] , [OSM::Node,459221987,"S+UPankow"]], :id  => 19000, :version => 27, :visible => true, :changeset => 2079654, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Node,271419839,"forward_stop"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Node,271419843,"stop"] , [OSM::Node,271419843,"stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,23735656] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Node,271419842] , [OSM::Node,271419841] , [OSM::Way,25781481,"forward"] , [OSM::Node,459173213,"S+UPankow"] , [OSM::Node,459174241,"UMierendofplatz"] , [OSM::Node,459187222,"S+UPankow"] , [OSM::Node,459190896,"uMierendorfplatz"] , [OSM::Node,459221987,"S+UPankow"] , [OSM::Node,459223907,"uMierendorfplatz"]], :id  => 19000, :version => 28, :visible => true, :changeset => 2079654, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Node,271419839,"forward_stop"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Node,271419843,"stop"] , [OSM::Node,271419843,"stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,23735656] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Node,271419842] , [OSM::Node,271419841] , [OSM::Way,25781481,"forward"] , [OSM::Node,459173213,"S+UPankow"] , [OSM::Node,459174241,"UMierendofplatz"] , [OSM::Node,459187222,"S+UPankow"] , [OSM::Node,459190896,"uMierendorfplatz"] , [OSM::Node,459221987,"S+UPankow"] , [OSM::Node,459223907,"uMierendorfplatz"] , [OSM::Node,459232349,"U+SPankow"]], :id  => 19000, :version => 29, :visible => true, :changeset => 2079675, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Node,271419839,"forward_stop"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Node,271419843,"stop"] , [OSM::Node,271419843,"stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,23735656] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Node,271419842] , [OSM::Node,271419841] , [OSM::Way,25781481,"forward"] , [OSM::Node,459173213,"S+UPankow"] , [OSM::Node,459174241,"UMierendofplatz"] , [OSM::Node,459187222,"S+UPankow"] , [OSM::Node,459190896,"uMierendorfplatz"] , [OSM::Node,459221987,"S+UPankow"] , [OSM::Node,459223907,"uMierendorfplatz"] , [OSM::Node,459232349,"U+SPankow"] , [OSM::Node,459231936,"uMierendorfplatz"]], :id  => 19000, :version => 30, :visible => true, :changeset => 2079675, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Node,271419839,"forward_stop"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Node,271419843,"stop"] , [OSM::Node,271419843,"stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,23735656] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Node,271419842] , [OSM::Node,271419841] , [OSM::Way,25781481,"forward"] , [OSM::Node,459173213,"S+UPankow"] , [OSM::Node,459174241,"UMierendofplatz"] , [OSM::Node,459187222,"S+UPankow"] , [OSM::Node,459190896,"uMierendorfplatz"] , [OSM::Node,459221987,"S+UPankow"] , [OSM::Node,459223907,"uMierendorfplatz"] , [OSM::Node,459232349,"U+SPankow"] , [OSM::Node,459231936,"uMierendorfplatz"] , [OSM::Node,483556399]], :id  => 19000, :version => 31, :visible => true, :changeset => 2373273, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Node,271419839,"forward_stop"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Node,271419843,"stop"] , [OSM::Node,271419843,"stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Node,271419842] , [OSM::Node,271419841] , [OSM::Way,25781481,"forward"] , [OSM::Node,459173213,"S+UPankow"] , [OSM::Node,459174241,"UMierendofplatz"] , [OSM::Node,459187222,"S+UPankow"] , [OSM::Node,459190896,"uMierendorfplatz"] , [OSM::Node,459221987,"S+UPankow"] , [OSM::Node,459223907,"uMierendorfplatz"] , [OSM::Node,459232349,"U+SPankow"] , [OSM::Node,459231936,"uMierendorfplatz"] , [OSM::Node,483556399]], :id  => 19000, :version => 32, :visible => true, :changeset => 2763783, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Node,271419839,"forward_stop"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Node,271419843,"stop"] , [OSM::Node,271419843,"stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Node,271419842] , [OSM::Node,271419841] , [OSM::Way,25781481,"forward"] , [OSM::Node,459173213,"S+UPankow"] , [OSM::Node,459174241,"UMierendofplatz"] , [OSM::Node,459187222,"S+UPankow"] , [OSM::Node,459190896,"uMierendorfplatz"] , [OSM::Node,459221987,"S+UPankow"] , [OSM::Node,459223907,"uMierendorfplatz"] , [OSM::Node,459232349,"U+SPankow"] , [OSM::Node,459231936,"uMierendorfplatz"] , [OSM::Node,483556399]], :id  => 19000, :version => 33, :visible => true, :changeset => 2764077, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Node,271419839,"forward_stop"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Node,271419843,"stop"] , [OSM::Node,271419843,"stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Node,271419842] , [OSM::Node,271419841] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,459173213,"S+UPankow"] , [OSM::Node,459174241,"UMierendofplatz"] , [OSM::Node,459187222,"S+UPankow"] , [OSM::Node,459190896,"uMierendorfplatz"] , [OSM::Node,459221987,"S+UPankow"] , [OSM::Node,459223907,"uMierendorfplatz"] , [OSM::Node,459232349,"U+SPankow"] , [OSM::Node,459231936,"uMierendorfplatz"] , [OSM::Node,483556399]], :id  => 19000, :version => 34, :visible => true, :changeset => 2876510, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,499522445] , [OSM::Node,366186452,"backward"] , [OSM::Node,366186445,"forward"] , [OSM::Node,538406886,"backward"] , [OSM::Node,538406887,"forward"] , [OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Node,271419839,"forward_stop"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Node,271419843,"stop"] , [OSM::Node,271419843,"stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,271419844,"stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Node,271419842] , [OSM::Node,271419841] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,459173213,"S+UPankow"] , [OSM::Node,459174241,"UMierendofplatz"] , [OSM::Node,459187222,"S+UPankow"] , [OSM::Node,459190896,"uMierendorfplatz"] , [OSM::Node,459221987,"S+UPankow"] , [OSM::Node,459223907,"uMierendorfplatz"] , [OSM::Node,459232349,"U+SPankow"] , [OSM::Node,459231936,"uMierendorfplatz"] , [OSM::Node,483556399]], :id  => 19000, :version => 35, :visible => true, :changeset => 3039177, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,483556399,"forward_stop"] , [OSM::Node,448913473,"forward_stop"] , [OSM::Node,459231936,"forward_stop"] , [OSM::Node,459223907,"forward_stop"] , [OSM::Node,459190896,"forward_stop"] , [OSM::Node,459174241,"forward_stop"] , [OSM::Node,606354048,"forward_stop"] , [OSM::Node,538406886,"forward_stop"] , [OSM::Node,428147942,"forward_stop"] , [OSM::Node,499522445,"forward_stop"] , [OSM::Node,366186450,"forward_stop"] , [OSM::Node,366186452,"forward_stop"] , [OSM::Node,366186444,"forward_stop"] , [OSM::Node,261744526,"forward_stop"] , [OSM::Node,270737265,"forward_stop"] , [OSM::Node,270737268,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,271419843,"forward_stop"] , [OSM::Node,271419842,"forward_stop"] , [OSM::Node,271419838,"forward_stop"] , [OSM::Node,271977443,"forward_stop"] , [OSM::Node,271977445,"forward_stop"] , [OSM::Node,271977447,"forward_stop"] , [OSM::Node,271977449,"forward_stop"] , [OSM::Node,271977449,"backward_stop"] , [OSM::Node,271419839,"backward_stop"] , [OSM::Node,271419841,"backward_stop"] , [OSM::Node,271419844,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737270,"backward_stop"] , [OSM::Node,270737264,"backward_stop"] , [OSM::Node,261744064,"backward_stop"] , [OSM::Node,381312687,"backward_stop"] , [OSM::Node,366186445,"backward_stop"] , [OSM::Node,366186447,"backward_stop"] , [OSM::Node,606354047,"backward_stop"] , [OSM::Node,428147950,"backward_stop"] , [OSM::Node,538406887,"backward"] , [OSM::Node,418177639,"backward_stop"] , [OSM::Node,459173213,"backward_stop"] , [OSM::Node,459187222,"backward_stop"] , [OSM::Node,459221987,"backward_stop"] , [OSM::Node,459232349,"backward_stop"] , [OSM::Node,448913472,"backward_stop"] , [OSM::Node,483556399,"backward_stop"]], :id  => 19000, :version => 36, :visible => true, :changeset => 3552076, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,53621518,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,483556399,"forward_stop"] , [OSM::Node,448913473,"forward_stop"] , [OSM::Node,459231936,"forward_stop"] , [OSM::Node,459223907,"forward_stop"] , [OSM::Node,459190896,"forward_stop"] , [OSM::Node,459174241,"forward_stop"] , [OSM::Node,606354048,"forward_stop"] , [OSM::Node,538406886,"forward_stop"] , [OSM::Node,428147942,"forward_stop"] , [OSM::Node,499522445,"forward_stop"] , [OSM::Node,366186450,"forward_stop"] , [OSM::Node,366186452,"forward_stop"] , [OSM::Node,366186444,"forward_stop"] , [OSM::Node,261744526,"forward_stop"] , [OSM::Node,270737265,"forward_stop"] , [OSM::Node,270737268,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,271419843,"forward_stop"] , [OSM::Node,271419842,"forward_stop"] , [OSM::Node,271419838,"forward_stop"] , [OSM::Node,271977443,"forward_stop"] , [OSM::Node,271977445,"forward_stop"] , [OSM::Node,271977447,"forward_stop"] , [OSM::Node,271977449,"forward_stop"] , [OSM::Node,271977449,"backward_stop"] , [OSM::Node,271419839,"backward_stop"] , [OSM::Node,271419841,"backward_stop"] , [OSM::Node,271419844,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737270,"backward_stop"] , [OSM::Node,270737264,"backward_stop"] , [OSM::Node,261744064,"backward_stop"] , [OSM::Node,381312687,"backward_stop"] , [OSM::Node,366186445,"backward_stop"] , [OSM::Node,366186447,"backward_stop"] , [OSM::Node,606354047,"backward_stop"] , [OSM::Node,428147950,"backward_stop"] , [OSM::Node,538406887,"backward"] , [OSM::Node,418177639,"backward_stop"] , [OSM::Node,459173213,"backward_stop"] , [OSM::Node,459187222,"backward_stop"] , [OSM::Node,459221987,"backward_stop"] , [OSM::Node,459232349,"backward_stop"] , [OSM::Node,448913472,"backward_stop"] , [OSM::Node,483556399,"backward_stop"]], :id  => 19000, :version => 37, :visible => true, :changeset => 4263305, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,53621518,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,483556399,"forward_stop"] , [OSM::Node,448913473,"forward_stop"] , [OSM::Node,459231936,"forward_stop"] , [OSM::Node,459223907,"forward_stop"] , [OSM::Node,459190896,"forward_stop"] , [OSM::Node,459174241,"forward_stop"] , [OSM::Node,606354048,"forward_stop"] , [OSM::Node,538406886,"forward_stop"] , [OSM::Node,428147942,"forward_stop"] , [OSM::Node,499522445,"forward_stop"] , [OSM::Node,366186450,"forward_stop"] , [OSM::Node,366186452,"forward_stop"] , [OSM::Node,366186444,"forward_stop"] , [OSM::Node,261744526,"forward_stop"] , [OSM::Node,270737265,"forward_stop"] , [OSM::Node,270737268,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,271419843,"forward_stop"] , [OSM::Node,271419842,"forward_stop"] , [OSM::Node,271419838,"forward_stop"] , [OSM::Node,271977443,"forward_stop"] , [OSM::Node,271977445,"forward_stop"] , [OSM::Node,271977447,"forward_stop"] , [OSM::Node,271977449,"forward_stop"] , [OSM::Node,271977449,"backward_stop"] , [OSM::Node,271419839,"backward_stop"] , [OSM::Node,271419841,"backward_stop"] , [OSM::Node,271419844,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737270,"backward_stop"] , [OSM::Node,270737264,"backward_stop"] , [OSM::Node,261744064,"backward_stop"] , [OSM::Node,381312687,"backward_stop"] , [OSM::Node,366186445,"backward_stop"] , [OSM::Node,366186447,"backward_stop"] , [OSM::Node,606354047,"backward_stop"] , [OSM::Node,428147950,"backward_stop"] , [OSM::Node,538406887,"backward"] , [OSM::Node,418177639,"backward_stop"] , [OSM::Node,459173213,"backward_stop"] , [OSM::Node,459187222,"backward_stop"] , [OSM::Node,459221987,"backward_stop"] , [OSM::Node,459232349,"backward_stop"] , [OSM::Node,448913472,"backward_stop"] , [OSM::Node,483556399,"backward_stop"]], :id  => 19000, :version => 38, :visible => true, :changeset => 4549010, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,58536239] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,53621518,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,483556399,"forward_stop"] , [OSM::Node,448913473,"forward_stop"] , [OSM::Node,459231936,"forward_stop"] , [OSM::Node,459223907,"forward_stop"] , [OSM::Node,459190896,"forward_stop"] , [OSM::Node,459174241,"forward_stop"] , [OSM::Node,606354048,"forward_stop"] , [OSM::Node,538406886,"forward_stop"] , [OSM::Node,428147942,"forward_stop"] , [OSM::Node,499522445,"forward_stop"] , [OSM::Node,366186450,"forward_stop"] , [OSM::Node,366186452,"forward_stop"] , [OSM::Node,366186444,"forward_stop"] , [OSM::Node,261744526,"forward_stop"] , [OSM::Node,270737265,"forward_stop"] , [OSM::Node,270737268,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,271419843,"forward_stop"] , [OSM::Node,271419842,"forward_stop"] , [OSM::Node,271419838,"forward_stop"] , [OSM::Node,271977443,"forward_stop"] , [OSM::Node,271977445,"forward_stop"] , [OSM::Node,271977447,"forward_stop"] , [OSM::Node,271977449,"forward_stop"] , [OSM::Node,271977449,"backward_stop"] , [OSM::Node,271419839,"backward_stop"] , [OSM::Node,271419841,"backward_stop"] , [OSM::Node,271419844,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737270,"backward_stop"] , [OSM::Node,270737264,"backward_stop"] , [OSM::Node,261744064,"backward_stop"] , [OSM::Node,381312687,"backward_stop"] , [OSM::Node,366186445,"backward_stop"] , [OSM::Node,366186447,"backward_stop"] , [OSM::Node,606354047,"backward_stop"] , [OSM::Node,428147950,"backward_stop"] , [OSM::Node,538406887,"backward"] , [OSM::Node,418177639,"backward_stop"] , [OSM::Node,459173213,"backward_stop"] , [OSM::Node,459187222,"backward_stop"] , [OSM::Node,459221987,"backward_stop"] , [OSM::Node,459232349,"backward_stop"] , [OSM::Node,448913472,"backward_stop"] , [OSM::Node,483556399,"backward_stop"]], :id  => 19000, :version => 39, :visible => true, :changeset => 4633200, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,58536239] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,53621518,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,483556399,"forward_stop"] , [OSM::Node,448913473,"forward_stop"] , [OSM::Node,459231936,"forward_stop"] , [OSM::Node,459223907,"forward_stop"] , [OSM::Node,459190896,"forward_stop"] , [OSM::Node,459174241,"forward_stop"] , [OSM::Node,606354048,"forward_stop"] , [OSM::Node,538406886,"forward_stop"] , [OSM::Node,428147942,"forward_stop"] , [OSM::Node,499522445,"forward_stop"] , [OSM::Node,366186450,"forward_stop"] , [OSM::Node,366186452,"forward_stop"] , [OSM::Node,366186444,"forward_stop"] , [OSM::Node,261744526,"forward_stop"] , [OSM::Node,270737265,"forward_stop"] , [OSM::Node,270737268,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,271419843,"forward_stop"] , [OSM::Node,271419842,"forward_stop"] , [OSM::Node,271419838,"forward_stop"] , [OSM::Node,271977443,"forward_stop"] , [OSM::Node,271977445,"forward_stop"] , [OSM::Node,271977447,"forward_stop"] , [OSM::Node,271977449,"forward_stop"] , [OSM::Node,271977449,"backward_stop"] , [OSM::Node,271419839,"backward_stop"] , [OSM::Node,271419841,"backward_stop"] , [OSM::Node,271419844,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737270,"backward_stop"] , [OSM::Node,270737264,"backward_stop"] , [OSM::Node,261744064,"backward_stop"] , [OSM::Node,381312687,"backward_stop"] , [OSM::Node,366186445,"backward_stop"] , [OSM::Node,366186447,"backward_stop"] , [OSM::Node,606354047,"backward_stop"] , [OSM::Node,428147950,"backward_stop"] , [OSM::Node,538406887,"backward"] , [OSM::Node,418177639,"backward_stop"] , [OSM::Node,459173213,"backward_stop"] , [OSM::Node,459187222,"backward_stop"] , [OSM::Node,459221987,"backward_stop"] , [OSM::Node,459232349,"backward_stop"] , [OSM::Node,448913472,"backward_stop"] , [OSM::Node,483556399,"backward_stop"] , [OSM::Node,728713913]], :id  => 19000, :version => 40, :visible => true, :changeset => 4705519, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,58536239] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,53621518,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,483556399,"forward_stop"] , [OSM::Node,448913473,"forward_stop"] , [OSM::Node,459231936,"forward_stop"] , [OSM::Node,459223907,"forward_stop"] , [OSM::Node,459190896,"forward_stop"] , [OSM::Node,459174241,"forward_stop"] , [OSM::Node,606354048,"forward_stop"] , [OSM::Node,538406886,"forward_stop"] , [OSM::Node,428147942,"forward_stop"] , [OSM::Node,499522445,"forward_stop"] , [OSM::Node,366186450,"forward_stop"] , [OSM::Node,366186452,"forward_stop"] , [OSM::Node,366186444,"forward_stop"] , [OSM::Node,261744526,"forward_stop"] , [OSM::Node,270737265,"forward_stop"] , [OSM::Node,270737268,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,271419843,"forward_stop"] , [OSM::Node,271419842,"forward_stop"] , [OSM::Node,271419838,"forward_stop"] , [OSM::Node,271977443,"forward_stop"] , [OSM::Node,271977445,"forward_stop"] , [OSM::Node,271977447,"forward_stop"] , [OSM::Node,271977449,"forward_stop"] , [OSM::Node,271977449,"backward_stop"] , [OSM::Node,271419839,"backward_stop"] , [OSM::Node,271419841,"backward_stop"] , [OSM::Node,271419844,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737270,"backward_stop"] , [OSM::Node,270737264,"backward_stop"] , [OSM::Node,261744064,"backward_stop"] , [OSM::Node,381312687,"backward_stop"] , [OSM::Node,366186445,"backward_stop"] , [OSM::Node,366186447,"backward_stop"] , [OSM::Node,606354047,"backward_stop"] , [OSM::Node,428147950,"backward_stop"] , [OSM::Node,538406887,"backward"] , [OSM::Node,418177639,"backward_stop"] , [OSM::Node,459173213,"backward_stop"] , [OSM::Node,459187222,"backward_stop"] , [OSM::Node,459221987,"backward_stop"] , [OSM::Node,459232349,"backward_stop"] , [OSM::Node,448913472,"backward_stop"] , [OSM::Node,483556399,"backward_stop"] , [OSM::Node,728713913] , [OSM::Node,728713893]], :id  => 19000, :version => 41, :visible => true, :changeset => 4705519, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,58536239] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,53621518,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,483556399,"forward_stop"] , [OSM::Node,448913473,"forward_stop"] , [OSM::Node,459231936,"forward_stop"] , [OSM::Node,459223907,"forward_stop"] , [OSM::Node,459190896,"forward_stop"] , [OSM::Node,459174241,"forward_stop"] , [OSM::Node,606354048,"forward_stop"] , [OSM::Node,538406886,"forward_stop"] , [OSM::Node,428147942,"forward_stop"] , [OSM::Node,499522445,"forward_stop"] , [OSM::Node,366186450,"forward_stop"] , [OSM::Node,366186452,"forward_stop"] , [OSM::Node,366186444,"forward_stop"] , [OSM::Node,261744526,"forward_stop"] , [OSM::Node,270737265,"forward_stop"] , [OSM::Node,270737268,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,271419843,"forward_stop"] , [OSM::Node,271419842,"forward_stop"] , [OSM::Node,271419838,"forward_stop"] , [OSM::Node,271977443,"forward_stop"] , [OSM::Node,271977445,"forward_stop"] , [OSM::Node,271977447,"forward_stop"] , [OSM::Node,271977449,"forward_stop"] , [OSM::Node,271977449,"backward_stop"] , [OSM::Node,271419839,"backward_stop"] , [OSM::Node,271419841,"backward_stop"] , [OSM::Node,271419844,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737270,"backward_stop"] , [OSM::Node,270737264,"backward_stop"] , [OSM::Node,261744064,"backward_stop"] , [OSM::Node,381312687,"backward_stop"] , [OSM::Node,366186445,"backward_stop"] , [OSM::Node,366186447,"backward_stop"] , [OSM::Node,606354047,"backward_stop"] , [OSM::Node,428147950,"backward_stop"] , [OSM::Node,538406887,"backward"] , [OSM::Node,418177639,"backward_stop"] , [OSM::Node,459173213,"backward_stop"] , [OSM::Node,459187222,"backward_stop"] , [OSM::Node,459221987,"backward_stop"] , [OSM::Node,459232349,"backward_stop"] , [OSM::Node,448913472,"backward_stop"] , [OSM::Node,483556399,"backward_stop"] , [OSM::Node,728713913,"stop"] , [OSM::Node,728713893,"stop"]], :id  => 19000, :version => 42, :visible => true, :changeset => 4705519, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,58536239] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,53621518,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,448913473,"forward_stop"] , [OSM::Node,459231936,"forward_stop"] , [OSM::Node,459223907,"forward_stop"] , [OSM::Node,459190896,"forward_stop"] , [OSM::Node,459174241,"forward_stop"] , [OSM::Node,606354048,"forward_stop"] , [OSM::Node,538406886,"forward_stop"] , [OSM::Node,428147942,"forward_stop"] , [OSM::Node,499522445,"forward_stop"] , [OSM::Node,366186450,"forward_stop"] , [OSM::Node,366186452,"forward_stop"] , [OSM::Node,366186444,"forward_stop"] , [OSM::Node,261744526,"forward_stop"] , [OSM::Node,270737265,"forward_stop"] , [OSM::Node,270737268,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,271419843,"forward_stop"] , [OSM::Node,271419842,"forward_stop"] , [OSM::Node,271419838,"forward_stop"] , [OSM::Node,271977443,"forward_stop"] , [OSM::Node,271977445,"forward_stop"] , [OSM::Node,271977447,"forward_stop"] , [OSM::Node,271977449,"forward_stop"] , [OSM::Node,271977449,"backward_stop"] , [OSM::Node,271419839,"backward_stop"] , [OSM::Node,271419841,"backward_stop"] , [OSM::Node,271419844,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737270,"backward_stop"] , [OSM::Node,270737264,"backward_stop"] , [OSM::Node,261744064,"backward_stop"] , [OSM::Node,381312687,"backward_stop"] , [OSM::Node,366186445,"backward_stop"] , [OSM::Node,366186447,"backward_stop"] , [OSM::Node,606354047,"backward_stop"] , [OSM::Node,428147950,"backward_stop"] , [OSM::Node,538406887,"backward"] , [OSM::Node,418177639,"backward_stop"] , [OSM::Node,459173213,"backward_stop"] , [OSM::Node,459187222,"backward_stop"] , [OSM::Node,459221987,"backward_stop"] , [OSM::Node,459232349,"backward_stop"] , [OSM::Node,448913472,"backward_stop"] , [OSM::Node,728713913,"stop"] , [OSM::Node,728713893,"stop"]], :id  => 19000, :version => 43, :visible => true, :changeset => 5788832, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,58536239] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,53621518,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,448913473,"forward_stop"] , [OSM::Node,459231936,"forward_stop"] , [OSM::Node,459223907,"forward_stop"] , [OSM::Node,459190896,"forward_stop"] , [OSM::Node,459174241,"forward_stop"] , [OSM::Node,606354048,"forward_stop"] , [OSM::Node,538406886,"forward_stop"] , [OSM::Node,428147942,"forward_stop"] , [OSM::Node,499522445,"forward_stop"] , [OSM::Node,366186450,"forward_stop"] , [OSM::Node,366186452,"forward_stop"] , [OSM::Node,366186444,"forward_stop"] , [OSM::Node,261744526,"forward_stop"] , [OSM::Node,270737265,"forward_stop"] , [OSM::Node,270737268,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,271419843,"forward_stop"] , [OSM::Node,271419842,"forward_stop"] , [OSM::Node,271419838,"forward_stop"] , [OSM::Node,271977443,"forward_stop"] , [OSM::Node,271977445,"forward_stop"] , [OSM::Node,271977447,"forward_stop"] , [OSM::Node,271977449,"forward_stop"] , [OSM::Node,271977449,"backward_stop"] , [OSM::Node,271419839,"backward_stop"] , [OSM::Node,271419841,"backward_stop"] , [OSM::Node,271419844,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737270,"backward_stop"] , [OSM::Node,270737264,"backward_stop"] , [OSM::Node,261744064,"backward_stop"] , [OSM::Node,381312687,"backward_stop"] , [OSM::Node,366186445,"backward_stop"] , [OSM::Node,366186447,"backward_stop"] , [OSM::Node,606354047,"backward_stop"] , [OSM::Node,428147950,"backward_stop"] , [OSM::Node,538406887,"backward"] , [OSM::Node,418177639,"backward_stop"] , [OSM::Node,459173213,"backward_stop"] , [OSM::Node,459187222,"backward_stop"] , [OSM::Node,459221987,"backward_stop"] , [OSM::Node,459232349,"backward_stop"] , [OSM::Node,448913472,"backward_stop"] , [OSM::Node,728713913,"stop"] , [OSM::Node,728713893,"stop"]], :id  => 19000, :version => 44, :visible => true, :changeset => 6383921, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,58536239] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,53621518,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,448913473,"forward_stop"] , [OSM::Node,459231936,"forward_stop"] , [OSM::Node,459223907,"forward_stop"] , [OSM::Node,459190896,"forward_stop"] , [OSM::Node,459174241,"forward_stop"] , [OSM::Node,606354048,"forward_stop"] , [OSM::Node,538406886,"forward_stop"] , [OSM::Node,428147942,"forward_stop"] , [OSM::Node,499522445,"forward_stop"] , [OSM::Node,366186450,"forward_stop"] , [OSM::Node,366186452,"forward_stop"] , [OSM::Node,366186444,"forward_stop"] , [OSM::Node,261744526,"forward_stop"] , [OSM::Node,270737265,"forward_stop"] , [OSM::Node,270737268,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,271419843,"forward_stop"] , [OSM::Node,271419842,"forward_stop"] , [OSM::Node,271419838,"forward_stop"] , [OSM::Node,271977443,"forward_stop"] , [OSM::Node,271977445,"forward_stop"] , [OSM::Node,271977447,"forward_stop"] , [OSM::Node,271977449,"forward_stop"] , [OSM::Node,271977449,"backward_stop"] , [OSM::Node,271419839,"backward_stop"] , [OSM::Node,271419841,"backward_stop"] , [OSM::Node,271419844,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737270,"backward_stop"] , [OSM::Node,270737264,"backward_stop"] , [OSM::Node,261744064,"backward_stop"] , [OSM::Node,381312687,"backward_stop"] , [OSM::Node,366186445,"backward_stop"] , [OSM::Node,366186447,"backward_stop"] , [OSM::Node,606354047,"backward_stop"] , [OSM::Node,428147950,"backward_stop"] , [OSM::Node,538406887,"backward"] , [OSM::Node,418177639,"backward_stop"] , [OSM::Node,459173213,"backward_stop"] , [OSM::Node,459187222,"backward_stop"] , [OSM::Node,459221987,"backward_stop"] , [OSM::Node,459232349,"backward_stop"] , [OSM::Node,448913472,"backward_stop"] , [OSM::Node,728713913,"stop"] , [OSM::Node,728713893,"stop"]], :id  => 19000, :version => 45, :visible => true, :changeset => 6492590, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,110149633,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,58536239] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,53621518,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,448913473,"forward_stop"] , [OSM::Node,459231936,"forward_stop"] , [OSM::Node,459223907,"forward_stop"] , [OSM::Node,459190896,"forward_stop"] , [OSM::Node,459174241,"forward_stop"] , [OSM::Node,606354048,"forward_stop"] , [OSM::Node,538406886,"forward_stop"] , [OSM::Node,428147942,"forward_stop"] , [OSM::Node,499522445,"forward_stop"] , [OSM::Node,366186450,"forward_stop"] , [OSM::Node,366186452,"forward_stop"] , [OSM::Node,366186444,"forward_stop"] , [OSM::Node,261744526,"forward_stop"] , [OSM::Node,270737265,"forward_stop"] , [OSM::Node,270737268,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,271419843,"forward_stop"] , [OSM::Node,271419842,"forward_stop"] , [OSM::Node,271419838,"forward_stop"] , [OSM::Node,271977443,"forward_stop"] , [OSM::Node,271977445,"forward_stop"] , [OSM::Node,271977447,"forward_stop"] , [OSM::Node,271977449,"forward_stop"] , [OSM::Node,271977449,"backward_stop"] , [OSM::Node,271419839,"backward_stop"] , [OSM::Node,271419841,"backward_stop"] , [OSM::Node,271419844,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737270,"backward_stop"] , [OSM::Node,270737264,"backward_stop"] , [OSM::Node,261744064,"backward_stop"] , [OSM::Node,381312687,"backward_stop"] , [OSM::Node,366186445,"backward_stop"] , [OSM::Node,366186447,"backward_stop"] , [OSM::Node,606354047,"backward_stop"] , [OSM::Node,428147950,"backward_stop"] , [OSM::Node,538406887,"backward"] , [OSM::Node,418177639,"backward_stop"] , [OSM::Node,459173213,"backward_stop"] , [OSM::Node,459187222,"backward_stop"] , [OSM::Node,459221987,"backward_stop"] , [OSM::Node,459232349,"backward_stop"] , [OSM::Node,448913472,"backward_stop"] , [OSM::Node,728713913,"stop"] , [OSM::Node,728713893,"stop"]], :id  => 19000, :version => 46, :visible => true, :changeset => 7957495, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,110149633,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,58536239] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,111251390] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,53621518,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,448913473,"forward_stop"] , [OSM::Node,459231936,"forward_stop"] , [OSM::Node,459223907,"forward_stop"] , [OSM::Node,459190896,"forward_stop"] , [OSM::Node,459174241,"forward_stop"] , [OSM::Node,606354048,"forward_stop"] , [OSM::Node,538406886,"forward_stop"] , [OSM::Node,428147942,"forward_stop"] , [OSM::Node,499522445,"forward_stop"] , [OSM::Node,366186450,"forward_stop"] , [OSM::Node,366186452,"forward_stop"] , [OSM::Node,366186444,"forward_stop"] , [OSM::Node,261744526,"forward_stop"] , [OSM::Node,270737265,"forward_stop"] , [OSM::Node,270737268,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,271419843,"forward_stop"] , [OSM::Node,271419842,"forward_stop"] , [OSM::Node,271419838,"forward_stop"] , [OSM::Node,271977443,"forward_stop"] , [OSM::Node,271977445,"forward_stop"] , [OSM::Node,271977447,"forward_stop"] , [OSM::Node,271977449,"forward_stop"] , [OSM::Node,271977449,"backward_stop"] , [OSM::Node,271419839,"backward_stop"] , [OSM::Node,271419841,"backward_stop"] , [OSM::Node,271419844,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737270,"backward_stop"] , [OSM::Node,270737264,"backward_stop"] , [OSM::Node,261744064,"backward_stop"] , [OSM::Node,381312687,"backward_stop"] , [OSM::Node,366186445,"backward_stop"] , [OSM::Node,366186447,"backward_stop"] , [OSM::Node,606354047,"backward_stop"] , [OSM::Node,428147950,"backward_stop"] , [OSM::Node,538406887,"backward"] , [OSM::Node,418177639,"backward_stop"] , [OSM::Node,459173213,"backward_stop"] , [OSM::Node,459187222,"backward_stop"] , [OSM::Node,459221987,"backward_stop"] , [OSM::Node,459232349,"backward_stop"] , [OSM::Node,448913472,"backward_stop"] , [OSM::Node,728713913,"stop"] , [OSM::Node,728713893,"stop"]], :id  => 19000, :version => 47, :visible => true, :changeset => 8015241, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,110149633,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,58536239] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,111251390] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,53621518,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,119201855,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,119201849,"forward"] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,448913473,"forward_stop"] , [OSM::Node,459231936,"forward_stop"] , [OSM::Node,459223907,"forward_stop"] , [OSM::Node,459190896,"forward_stop"] , [OSM::Node,459174241,"forward_stop"] , [OSM::Node,606354048,"forward_stop"] , [OSM::Node,538406886,"forward_stop"] , [OSM::Node,428147942,"forward_stop"] , [OSM::Node,499522445,"forward_stop"] , [OSM::Node,366186450,"forward_stop"] , [OSM::Node,366186452,"forward_stop"] , [OSM::Node,366186444,"forward_stop"] , [OSM::Node,261744526,"forward_stop"] , [OSM::Node,270737265,"forward_stop"] , [OSM::Node,270737268,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,271419843,"forward_stop"] , [OSM::Node,271419842,"forward_stop"] , [OSM::Node,271419838,"forward_stop"] , [OSM::Node,271977443,"forward_stop"] , [OSM::Node,271977445,"forward_stop"] , [OSM::Node,271977447,"forward_stop"] , [OSM::Node,271977449,"forward_stop"] , [OSM::Node,271977449,"backward_stop"] , [OSM::Node,271419839,"backward_stop"] , [OSM::Node,271419841,"backward_stop"] , [OSM::Node,271419844,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737270,"backward_stop"] , [OSM::Node,270737264,"backward_stop"] , [OSM::Node,261744064,"backward_stop"] , [OSM::Node,381312687,"backward_stop"] , [OSM::Node,366186445,"backward_stop"] , [OSM::Node,366186447,"backward_stop"] , [OSM::Node,606354047,"backward_stop"] , [OSM::Node,428147950,"backward_stop"] , [OSM::Node,538406887,"backward"] , [OSM::Node,418177639,"backward_stop"] , [OSM::Node,459173213,"backward_stop"] , [OSM::Node,459187222,"backward_stop"] , [OSM::Node,459221987,"backward_stop"] , [OSM::Node,459232349,"backward_stop"] , [OSM::Node,448913472,"backward_stop"] , [OSM::Node,728713913,"stop"] , [OSM::Node,728713893,"stop"]], :id  => 19000, :version => 48, :visible => true, :changeset => 8553335, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,110149633,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,58536239] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,111251390] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,53621518,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,119201855,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,119201849,"forward"] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,448913473,"forward_stop"] , [OSM::Node,459231936,"forward_stop"] , [OSM::Node,459223907,"forward_stop"] , [OSM::Node,459190896,"forward_stop"] , [OSM::Node,459174241,"forward_stop"] , [OSM::Node,606354048,"forward_stop"] , [OSM::Node,538406886,"forward_stop"] , [OSM::Node,428147942,"forward_stop"] , [OSM::Node,499522445,"forward_stop"] , [OSM::Node,366186450,"forward_stop"] , [OSM::Node,366186452,"forward_stop"] , [OSM::Node,366186444,"forward_stop"] , [OSM::Node,261744526,"forward_stop"] , [OSM::Node,270737265,"forward_stop"] , [OSM::Node,270737268,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,271419843,"forward_stop"] , [OSM::Node,271419842,"forward_stop"] , [OSM::Node,271419838,"forward_stop"] , [OSM::Node,271977443,"forward_stop"] , [OSM::Node,271977445,"forward_stop"] , [OSM::Node,271977447,"forward_stop"] , [OSM::Node,271977449,"forward_stop"] , [OSM::Node,271977449,"backward_stop"] , [OSM::Node,271419839,"backward_stop"] , [OSM::Node,271419841,"backward_stop"] , [OSM::Node,271419844,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737270,"backward_stop"] , [OSM::Node,270737264,"backward_stop"] , [OSM::Node,261744064,"backward_stop"] , [OSM::Node,381312687,"backward_stop"] , [OSM::Node,366186445,"backward_stop"] , [OSM::Node,366186447,"backward_stop"] , [OSM::Node,606354047,"backward_stop"] , [OSM::Node,428147950,"backward_stop"] , [OSM::Node,538406887,"backward"] , [OSM::Node,418177639,"backward_stop"] , [OSM::Node,459173213,"backward_stop"] , [OSM::Node,459187222,"backward_stop"] , [OSM::Node,459221987,"backward_stop"] , [OSM::Node,459232349,"backward_stop"] , [OSM::Node,448913472,"backward_stop"] , [OSM::Node,728713913,"stop"] , [OSM::Node,728713893,"stop"]], :id  => 19000, :version => 49, :visible => true, :changeset => 8644789, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,110149633,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,58536239] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,111251390] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,53621518,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,119201855,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,119201849,"forward"] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,448913473,"forward_stop"] , [OSM::Node,459231936,"forward_stop"] , [OSM::Node,459223907,"forward_stop"] , [OSM::Node,459190896,"forward_stop"] , [OSM::Node,459174241,"forward_stop"] , [OSM::Node,606354048,"forward_stop"] , [OSM::Node,538406886,"forward_stop"] , [OSM::Node,428147942,"forward_stop"] , [OSM::Node,499522445,"forward_stop"] , [OSM::Node,366186450,"forward_stop"] , [OSM::Node,366186452,"forward_stop"] , [OSM::Node,366186444,"forward_stop"] , [OSM::Node,261744526,"forward_stop"] , [OSM::Node,270737265,"forward_stop"] , [OSM::Node,270737268,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,271419843,"forward_stop"] , [OSM::Node,271419842,"forward_stop"] , [OSM::Node,271419838,"forward_stop"] , [OSM::Node,271977443,"forward_stop"] , [OSM::Node,271977445,"forward_stop"] , [OSM::Node,271977447,"forward_stop"] , [OSM::Node,271977449,"forward_stop"] , [OSM::Node,271977449,"backward_stop"] , [OSM::Node,271419839,"backward_stop"] , [OSM::Node,271419841,"backward_stop"] , [OSM::Node,271419844,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737270,"backward_stop"] , [OSM::Node,270737264,"backward_stop"] , [OSM::Node,261744064,"backward_stop"] , [OSM::Node,381312687,"backward_stop"] , [OSM::Node,366186445,"backward_stop"] , [OSM::Node,366186447,"backward_stop"] , [OSM::Node,606354047,"backward_stop"] , [OSM::Node,428147950,"backward_stop"] , [OSM::Node,538406887,"backward"] , [OSM::Node,418177639,"backward_stop"] , [OSM::Node,459173213,"backward_stop"] , [OSM::Node,459187222,"backward_stop"] , [OSM::Node,459221987,"backward_stop"] , [OSM::Node,459232349,"backward_stop"] , [OSM::Node,448913472,"backward_stop"] , [OSM::Node,728713913,"stop"] , [OSM::Node,728713893,"stop"]], :id  => 19000, :version => 50, :visible => true, :changeset => 9747178, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,110149633,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,58536239] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,111251390] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,53621518,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,119201855,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,35867461] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,140336722,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,119201849,"forward"] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,448913473,"forward_stop"] , [OSM::Node,459231936,"forward_stop"] , [OSM::Node,459223907,"forward_stop"] , [OSM::Node,459190896,"forward_stop"] , [OSM::Node,459174241,"forward_stop"] , [OSM::Node,606354048,"forward_stop"] , [OSM::Node,538406886,"forward_stop"] , [OSM::Node,428147942,"forward_stop"] , [OSM::Node,499522445,"forward_stop"] , [OSM::Node,366186450,"forward_stop"] , [OSM::Node,366186452,"forward_stop"] , [OSM::Node,366186444,"forward_stop"] , [OSM::Node,261744526,"forward_stop"] , [OSM::Node,270737265,"forward_stop"] , [OSM::Node,270737268,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,271419843,"forward_stop"] , [OSM::Node,271419842,"forward_stop"] , [OSM::Node,271419838,"forward_stop"] , [OSM::Node,271977443,"forward_stop"] , [OSM::Node,271977445,"forward_stop"] , [OSM::Node,271977447,"forward_stop"] , [OSM::Node,271977449,"forward_stop"] , [OSM::Node,271977449,"backward_stop"] , [OSM::Node,271419839,"backward_stop"] , [OSM::Node,271419841,"backward_stop"] , [OSM::Node,271419844,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737270,"backward_stop"] , [OSM::Node,270737264,"backward_stop"] , [OSM::Node,261744064,"backward_stop"] , [OSM::Node,381312687,"backward_stop"] , [OSM::Node,366186445,"backward_stop"] , [OSM::Node,366186447,"backward_stop"] , [OSM::Node,606354047,"backward_stop"] , [OSM::Node,428147950,"backward_stop"] , [OSM::Node,538406887,"backward"] , [OSM::Node,418177639,"backward_stop"] , [OSM::Node,459173213,"backward_stop"] , [OSM::Node,459187222,"backward_stop"] , [OSM::Node,459221987,"backward_stop"] , [OSM::Node,459232349,"backward_stop"] , [OSM::Node,448913472,"backward_stop"] , [OSM::Node,728713913,"stop"] , [OSM::Node,728713893,"stop"]], :id  => 19000, :version => 51, :visible => true, :changeset => 10070008, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,25219767,"forward"] , [OSM::Way,4471990,"forward"] , [OSM::Way,4471991,"forward"] , [OSM::Way,38523780,"forward"] , [OSM::Way,4471993,"forward"] , [OSM::Way,25219775,"forward"] , [OSM::Way,110149633,"forward"] , [OSM::Way,4403898,"forward"] , [OSM::Way,4403874,"forward"] , [OSM::Way,4763947,"forward"] , [OSM::Way,25219765,"forward"] , [OSM::Way,25219769,"forward"] , [OSM::Way,19183059,"backward"] , [OSM::Way,4475675,"forward"] , [OSM::Way,36844648,"forward"] , [OSM::Way,4410459,"forward"] , [OSM::Way,27717047,"forward"] , [OSM::Way,27717037,"forward"] , [OSM::Way,23720975] , [OSM::Way,4469837] , [OSM::Way,25219763] , [OSM::Way,25219764] , [OSM::Way,4469836] , [OSM::Way,25219761] , [OSM::Way,38279334] , [OSM::Way,4763465] , [OSM::Way,24916008] , [OSM::Way,4410473,"forward"] , [OSM::Way,25199403,"forward"] , [OSM::Way,28497110] , [OSM::Way,4424794,"forward"] , [OSM::Way,42104627,"forward"] , [OSM::Way,25219757,"forward"] , [OSM::Way,4397388,"forward"] , [OSM::Way,4954198,"forward"] , [OSM::Way,25219759] , [OSM::Way,58536239] , [OSM::Way,4677615] , [OSM::Way,4677616] , [OSM::Way,4592573] , [OSM::Way,42103710] , [OSM::Way,111251390] , [OSM::Way,4677645] , [OSM::Way,25216571] , [OSM::Way,4403591] , [OSM::Way,42103711] , [OSM::Way,23735656] , [OSM::Way,53621518,"forward"] , [OSM::Way,4402657,"forward"] , [OSM::Way,25217952,"forward"] , [OSM::Way,24700556,"forward"] , [OSM::Way,25500557,"forward"] , [OSM::Way,25500605,"forward"] , [OSM::Way,24700555,"forward"] , [OSM::Way,4543925,"forward"] , [OSM::Way,8007733,"forward"] , [OSM::Way,4555090,"forward"] , [OSM::Way,4544070,"forward"] , [OSM::Way,119201855,"forward"] , [OSM::Way,4632780,"forward"] , [OSM::Way,25500703] , [OSM::Way,25500702] , [OSM::Way,4632866] , [OSM::Way,23984384] , [OSM::Way,23984383] , [OSM::Way,4632868] , [OSM::Way,4637741] , [OSM::Way,25500705] , [OSM::Way,4776148] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,4677615] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,25219758,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,24916010,"forward"] , [OSM::Way,4410310,"forward"] , [OSM::Way,25199401,"forward"] , [OSM::Way,30195541,"forward"] , [OSM::Way,4410061,"forward"] , [OSM::Way,140336722,"forward"] , [OSM::Way,4675817,"forward"] , [OSM::Way,4600236,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,4402643,"forward"] , [OSM::Way,53621519,"forward"] , [OSM::Way,25217538,"forward"] , [OSM::Way,25217543,"forward"] , [OSM::Way,25781742,"forward"] , [OSM::Way,42732309,"forward"] , [OSM::Way,4543924,"forward"] , [OSM::Way,24700557,"forward"] , [OSM::Way,25500556,"forward"] , [OSM::Way,24700558,"forward"] , [OSM::Way,8007732,"forward"] , [OSM::Way,4555089,"forward"] , [OSM::Way,4544075,"forward"] , [OSM::Way,4632777,"forward"] , [OSM::Way,119201849,"forward"] , [OSM::Way,25781481,"forward"] , [OSM::Way,42732303,"forward"] , [OSM::Way,42732305,"forward"] , [OSM::Node,448913473,"forward_stop"] , [OSM::Node,459231936,"forward_stop"] , [OSM::Node,459223907,"forward_stop"] , [OSM::Node,459190896,"forward_stop"] , [OSM::Node,459174241,"forward_stop"] , [OSM::Node,606354048,"forward_stop"] , [OSM::Node,538406886,"forward_stop"] , [OSM::Node,428147942,"forward_stop"] , [OSM::Node,499522445,"forward_stop"] , [OSM::Node,366186450,"forward_stop"] , [OSM::Node,366186452,"forward_stop"] , [OSM::Node,366186444,"forward_stop"] , [OSM::Node,261744526,"forward_stop"] , [OSM::Node,270737265,"forward_stop"] , [OSM::Node,270737268,"forward_stop"] , [OSM::Node,270737272,"forward_stop"] , [OSM::Node,271419843,"forward_stop"] , [OSM::Node,271419842,"forward_stop"] , [OSM::Node,271419838,"forward_stop"] , [OSM::Node,271977443,"forward_stop"] , [OSM::Node,271977445,"forward_stop"] , [OSM::Node,271977447,"forward_stop"] , [OSM::Node,271977449,"forward_stop"] , [OSM::Node,271977449,"backward_stop"] , [OSM::Node,271419839,"backward_stop"] , [OSM::Node,271419841,"backward_stop"] , [OSM::Node,271419844,"backward_stop"] , [OSM::Node,270737274,"backward_stop"] , [OSM::Node,270737270,"backward_stop"] , [OSM::Node,270737264,"backward_stop"] , [OSM::Node,261744064,"backward_stop"] , [OSM::Node,381312687,"backward_stop"] , [OSM::Node,366186445,"backward_stop"] , [OSM::Node,366186447,"backward_stop"] , [OSM::Node,606354047,"backward_stop"] , [OSM::Node,428147950,"backward_stop"] , [OSM::Node,538406887,"backward"] , [OSM::Node,418177639,"backward_stop"] , [OSM::Node,459173213,"backward_stop"] , [OSM::Node,459187222,"backward_stop"] , [OSM::Node,459221987,"backward_stop"] , [OSM::Node,459232349,"backward_stop"] , [OSM::Node,448913472,"backward_stop"] , [OSM::Node,728713913,"stop"] , [OSM::Node,728713893,"stop"] , [OSM::Way,144962817]], :id  => 19000, :version => 52, :visible => true, :changeset => 10349326, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route" => "bus", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Relation,2092474] , [OSM::Relation,2092475]], :id  => 19000, :version => 57, :visible => true, :changeset => 11044350, "name" => "Buslinie M27", "network" => "VBB", "operator" => "BVG", "ref" => "M27", "route_master" => "bus", "type" => "route_master"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([
                  Redact[OSM::Relation, 19000, 16, :hidden],
                  Redact[OSM::Relation, 19000, 17, :hidden],
                  Redact[OSM::Relation, 19000, 18, :hidden],
                  Redact[OSM::Relation, 19000, 19, :hidden],
                  Redact[OSM::Relation, 19000, 20, :hidden],
                  Redact[OSM::Relation, 19000, 21, :hidden],
                  Redact[OSM::Relation, 19000, 22, :hidden],
                  Redact[OSM::Relation, 19000, 23, :hidden],
                  Redact[OSM::Relation, 19000, 24, :hidden],
                  Redact[OSM::Relation, 19000, 25, :hidden],
                  Redact[OSM::Relation, 19000, 26, :hidden],
                  Redact[OSM::Relation, 19000, 27, :hidden],
                  Redact[OSM::Relation, 19000, 28, :hidden],
                  Redact[OSM::Relation, 19000, 29, :hidden],
                  Redact[OSM::Relation, 19000, 30, :hidden],
                  Redact[OSM::Relation, 19000, 31, :visible],
                  Redact[OSM::Relation, 19000, 32, :visible],
                  Redact[OSM::Relation, 19000, 33, :visible],
                  Redact[OSM::Relation, 19000, 34, :visible],
                  Redact[OSM::Relation, 19000, 35, :visible],
                  Redact[OSM::Relation, 19000, 36, :visible],
                  Redact[OSM::Relation, 19000, 37, :visible],
                  Redact[OSM::Relation, 19000, 38, :visible],
                  Redact[OSM::Relation, 19000, 39, :visible],
                  Redact[OSM::Relation, 19000, 40, :visible],
                  Redact[OSM::Relation, 19000, 41, :visible],
                  Redact[OSM::Relation, 19000, 42, :visible],
                  Redact[OSM::Relation, 19000, 43, :visible],
                  Redact[OSM::Relation, 19000, 44, :visible],
                  Redact[OSM::Relation, 19000, 45, :visible],
                  Redact[OSM::Relation, 19000, 46, :visible],
                  Redact[OSM::Relation, 19000, 47, :visible],
                  Redact[OSM::Relation, 19000, 48, :visible],
                  Redact[OSM::Relation, 19000, 49, :visible],
                  Redact[OSM::Relation, 19000, 50, :visible],
                  Redact[OSM::Relation, 19000, 51, :visible],
                  Redact[OSM::Relation, 19000, 52, :visible],
                  Redact[OSM::Relation, 19000, 53, :visible],
                  Redact[OSM::Relation, 19000, 54, :visible],
                  Redact[OSM::Relation, 19000, 55, :visible],
                  Redact[OSM::Relation, 19000, 56, :visible]
                 ], actions)
  end


  # auto-generated test for relation 28000
  # http://wtfe.gryph.de/report/relation/28000
  # http://osm.mapki.com/history/relation.php?id=28000
  def test_automatic_relation28000
    history = [OSM::Relation[[[OSM::Way,26358107]], :id  => 28000, :version => 1, :visible => true, :changeset => 296806, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,26358107] , [OSM::Way,26358234]], :id  => 28000, :version => 2, :visible => true, :changeset => 296806, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,23842623] , [OSM::Way,26358107] , [OSM::Way,26358234]], :id  => 28000, :version => 3, :visible => true, :changeset => 296806, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,26358107] , [OSM::Way,26358234]], :id  => 28000, :version => 4, :visible => true, :changeset => 296806, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,8321058] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,26358107] , [OSM::Way,26358234]], :id  => 28000, :version => 5, :visible => true, :changeset => 296806, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,8321058] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,26358107] , [OSM::Way,26358234] , [OSM::Way,26359887]], :id  => 28000, :version => 6, :visible => true, :changeset => 291123, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,8321058] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887]], :id  => 28000, :version => 7, :visible => true, :changeset => 291123, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,8321058] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,26013847] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887]], :id  => 28000, :version => 8, :visible => true, :changeset => 291123, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,8321058] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,26013847] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26370827]], :id  => 28000, :version => 9, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,8321058] , [OSM::Way,23150194] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,26013847] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26370827]], :id  => 28000, :version => 10, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,8321058] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,26013847] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887]], :id  => 28000, :version => 11, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,285708878] , [OSM::Way,8321058] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,26013847] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887]], :id  => 28000, :version => 12, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,26013847] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887]], :id  => 28000, :version => 13, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,253872378] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,26013847] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887]], :id  => 28000, :version => 14, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,253872378] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887]], :id  => 28000, :version => 15, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,253872378] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887]], :id  => 28000, :version => 16, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887]], :id  => 28000, :version => 17, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887]], :id  => 28000, :version => 18, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887]], :id  => 28000, :version => 19, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887]], :id  => 28000, :version => 20, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462]], :id  => 28000, :version => 21, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462]], :id  => 28000, :version => 22, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,23150194] , [OSM::Way,23435582] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462]], :id  => 28000, :version => 23, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23435582] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462]], :id  => 28000, :version => 24, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462]], :id  => 28000, :version => 25, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462]], :id  => 28000, :version => 26, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372998]], :id  => 28000, :version => 27, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462]], :id  => 28000, :version => 28, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462]], :id  => 28000, :version => 29, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462]], :id  => 28000, :version => 30, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462]], :id  => 28000, :version => 31, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462]], :id  => 28000, :version => 32, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 33, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389] , [OSM::Way,26373565]], :id  => 28000, :version => 34, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 35, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 36, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 37, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 38, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013900] , [OSM::Way,26130630] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 39, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013900] , [OSM::Way,26130630] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 40, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013900] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 41, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 42, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 43, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 44, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26014025] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 45, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "name" => "708", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013954] , [OSM::Way,26014025] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 46, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "name" => "708", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013954] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 47, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "name" => "708", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 48, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "name" => "708", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 49, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "name" => "708", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 50, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "name" => "708", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 51, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "name" => "708", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 52, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "name" => "708", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 53, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "name" => "708", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 54, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "name" => "708", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389]], :id  => 28000, :version => 55, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "name" => "708", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389] , [OSM::Way,26375429]], :id  => 28000, :version => 56, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "name" => "708", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26373389] , [OSM::Way,26375429]], :id  => 28000, :version => 57, :visible => true, :changeset => 306023, "created_by" => "Potlatch 0.10b", "name" => "708", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429]], :id  => 28000, :version => 58, :visible => true, :changeset => 383842, "created_by" => "Potlatch 0.10b", "name" => "708", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485]], :id  => 28000, :version => 59, :visible => true, :changeset => 454581, "created_by" => "Potlatch 0.10b", "name" => "708", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485]], :id  => 28000, :version => 60, :visible => true, :changeset => 87275, "created_by" => "Potlatch 0.10c", "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,28304013]], :id  => 28000, :version => 61, :visible => true, :changeset => 724796, "created_by" => "Potlatch 0.10c", "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26150821] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,28304013]], :id  => 28000, :version => 62, :visible => true, :changeset => 253996, "created_by" => "Potlatch 0.10f", "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26150821] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,28304013]], :id  => 28000, :version => 63, :visible => true, :changeset => 253996, "created_by" => "Potlatch 0.10f", "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,28304013]], :id  => 28000, :version => 64, :visible => true, :changeset => 253996, "created_by" => "Potlatch 0.10f", "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,296937455] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,28304013]], :id  => 28000, :version => 65, :visible => true, :changeset => 648254, "created_by" => "Potlatch 0.10f", "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,28304013]], :id  => 28000, :version => 66, :visible => true, :changeset => 648254, "created_by" => "Potlatch 0.10f", "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,28304013]], :id  => 28000, :version => 67, :visible => true, :changeset => 648254, "created_by" => "Potlatch 0.10f", "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,292629869,"708"] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,28304013]], :id  => 28000, :version => 68, :visible => true, :changeset => 648254, "created_by" => "Potlatch 0.10f", "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,292629869,"708"] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Node,332784349] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,28304013] , [OSM::Way,30198312] , [OSM::Way,30198313]], :id  => 28000, :version => 69, :visible => true, :changeset => 807875, "created_by" => "Potlatch 0.10f", "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,292629869,"708"] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Node,332784349] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,28304013] , [OSM::Way,30198312] , [OSM::Way,30198313] , [OSM::Way,30283183]], :id  => 28000, :version => 70, :visible => true, :changeset => 813005, "created_by" => "Potlatch 0.10f", "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,292022122] , [OSM::Node,292022123] , [OSM::Node,292629869,"708"] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Node,332784349] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,28304013] , [OSM::Way,30198312] , [OSM::Way,30198313] , [OSM::Way,30283183]], :id  => 28000, :version => 71, :visible => true, :changeset => 6150, "created_by" => "Potlatch 0.10f", "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,81296249] , [OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,292022122] , [OSM::Node,292022123] , [OSM::Node,292629869,"708"] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Node,332784349] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,28304013] , [OSM::Way,30198312] , [OSM::Way,30198313] , [OSM::Way,30283183] , [OSM::Way,32523327]], :id  => 28000, :version => 72, :visible => true, :changeset => 858449, "created_by" => "Potlatch 0.10f", "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,292022122] , [OSM::Node,292022123] , [OSM::Node,292629869,"708"] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Node,332784349] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Node,392653481] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,28304013] , [OSM::Way,30198312] , [OSM::Way,30198313] , [OSM::Way,30283183] , [OSM::Way,32523327]], :id  => 28000, :version => 73, :visible => true, :changeset => 1126268, "created_by" => "Potlatch 0.10f", "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,292022122] , [OSM::Node,292022123] , [OSM::Node,292629869,"708"] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Node,332784349] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Node,392653481] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Way,28304013] , [OSM::Way,30198312] , [OSM::Way,30198313] , [OSM::Way,30283183] , [OSM::Way,32523327]], :id  => 28000, :version => 74, :visible => true, :changeset => 2175643, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,292022122] , [OSM::Node,292022123] , [OSM::Node,292629869,"708"] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Node,332784349] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623,"forward"] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Node,392653481] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234,"forward"] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Way,28304013] , [OSM::Way,30198312] , [OSM::Way,30198313] , [OSM::Way,30283183] , [OSM::Way,32523327]], :id  => 28000, :version => 75, :visible => true, :changeset => 2351395, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,292022122] , [OSM::Node,292022123] , [OSM::Node,292629869,"708"] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Node,332784349] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623,"forward"] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Node,392653481] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234,"forward"] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Way,28304013] , [OSM::Way,30198312] , [OSM::Way,30198313] , [OSM::Way,30283183] , [OSM::Way,32523327]], :id  => 28000, :version => 76, :visible => true, :changeset => 2351395, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,292022122] , [OSM::Node,292022123] , [OSM::Node,292629869,"708"] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Node,332784349] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623,"forward"] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Node,392653481] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234,"forward"] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Way,28304013] , [OSM::Way,30198312,"forward"] , [OSM::Way,30198313] , [OSM::Way,30283183] , [OSM::Way,32523327]], :id  => 28000, :version => 77, :visible => true, :changeset => 2351696, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,292022122] , [OSM::Node,292022123] , [OSM::Node,292629869,"708"] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Node,332784349] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623,"forward"] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Node,392653481] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234,"forward"] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Way,28304013] , [OSM::Way,30198312,"forward"] , [OSM::Way,30198313] , [OSM::Way,30283183] , [OSM::Way,32523327] , [OSM::Way,40348109]], :id  => 28000, :version => 78, :visible => true, :changeset => 2399570, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,292022122] , [OSM::Node,292022123] , [OSM::Node,292629869,"708"] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Node,332784349] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,40427288] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623,"forward"] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Node,392653481] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234,"forward"] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Way,28304013] , [OSM::Way,30198312,"forward"] , [OSM::Way,30198313] , [OSM::Way,30283183] , [OSM::Way,32523327] , [OSM::Way,40348109]], :id  => 28000, :version => 79, :visible => true, :changeset => 2411673, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,292022122] , [OSM::Node,292022123] , [OSM::Node,292629869,"708"] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Node,332784349] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,40427288] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623,"forward"] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Node,392653481] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234,"forward"] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Way,28304013] , [OSM::Way,40428972] , [OSM::Way,30198312,"forward"] , [OSM::Way,30198313] , [OSM::Way,30283183] , [OSM::Way,32523327] , [OSM::Way,40348109]], :id  => 28000, :version => 80, :visible => true, :changeset => 2412015, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,292022122] , [OSM::Node,292022123] , [OSM::Node,292629869,"708"] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Node,332784349] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,40583417] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,40427288] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623,"forward"] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Node,392653481] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,26358195] , [OSM::Way,26358234,"forward"] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Way,28304013] , [OSM::Way,40428972] , [OSM::Way,30198312,"forward"] , [OSM::Way,30198313] , [OSM::Way,30283183] , [OSM::Way,32523327] , [OSM::Way,40348109]], :id  => 28000, :version => 81, :visible => true, :changeset => 2438687, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,292022122] , [OSM::Node,292022123] , [OSM::Node,292629869,"708"] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Node,332784349] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,40583417] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,40427288] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623,"forward"] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Node,392653481] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,40609952] , [OSM::Way,40609951] , [OSM::Way,26358195] , [OSM::Way,26358234,"forward"] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Way,28304013] , [OSM::Way,40428972] , [OSM::Way,30198312,"forward"] , [OSM::Way,30198313] , [OSM::Way,30283183] , [OSM::Way,32523327] , [OSM::Way,40348109]], :id  => 28000, :version => 82, :visible => true, :changeset => 2443788, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,292022122] , [OSM::Node,292022123] , [OSM::Node,292629869,"708"] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Node,332784349] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,40583417] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,40427288] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623,"forward"] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Node,392653481] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,40609952] , [OSM::Way,40609951] , [OSM::Way,26358195] , [OSM::Way,26358234,"forward"] , [OSM::Way,40613714,"forward"] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Way,28304013] , [OSM::Way,40428972] , [OSM::Way,30198312,"forward"] , [OSM::Way,30198313] , [OSM::Way,30283183] , [OSM::Way,32523327] , [OSM::Way,40348109]], :id  => 28000, :version => 83, :visible => true, :changeset => 2444514, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,241429066] , [OSM::Node,247922828] , [OSM::Node,247923057] , [OSM::Node,253872378] , [OSM::Node,253872389] , [OSM::Node,269991282] , [OSM::Node,285708878] , [OSM::Node,285708917] , [OSM::Node,288939982] , [OSM::Node,288957552] , [OSM::Node,292022122] , [OSM::Node,292022123] , [OSM::Node,292629869,"708"] , [OSM::Node,296937454] , [OSM::Node,296937455] , [OSM::Node,332784349] , [OSM::Way,5888048] , [OSM::Way,8321058] , [OSM::Way,40583417] , [OSM::Way,14021056] , [OSM::Way,14028628] , [OSM::Way,40686617] , [OSM::Way,22560498] , [OSM::Way,22561789] , [OSM::Way,40427288] , [OSM::Way,22996694] , [OSM::Way,23150194] , [OSM::Way,23388254] , [OSM::Way,23436438] , [OSM::Way,23442307] , [OSM::Way,23842623,"forward"] , [OSM::Way,24452137] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Way,24850302] , [OSM::Way,40686626] , [OSM::Way,25790002] , [OSM::Way,25816351] , [OSM::Way,26013847] , [OSM::Way,26013863] , [OSM::Node,392653481] , [OSM::Way,26013900] , [OSM::Way,26013951] , [OSM::Way,26013954] , [OSM::Way,26014017] , [OSM::Way,26014025] , [OSM::Way,26014036] , [OSM::Way,26014062] , [OSM::Way,26014095] , [OSM::Way,26014183] , [OSM::Way,26014253] , [OSM::Way,26130630] , [OSM::Way,26174083] , [OSM::Way,26174085] , [OSM::Way,26358107] , [OSM::Way,40609952] , [OSM::Way,40609951] , [OSM::Way,26358195] , [OSM::Way,26358234,"forward"] , [OSM::Way,40613714,"forward"] , [OSM::Way,26359445,"708"] , [OSM::Way,26359887] , [OSM::Way,26372462] , [OSM::Way,26372930] , [OSM::Way,26373389] , [OSM::Way,40686616] , [OSM::Way,26375429] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Way,40686619] , [OSM::Way,28304013] , [OSM::Way,40428972] , [OSM::Way,30198312,"forward"] , [OSM::Way,30198313] , [OSM::Way,30283183] , [OSM::Way,32523327] , [OSM::Way,40348109]], :id  => 28000, :version => 84, :visible => true, :changeset => 2458120, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,288957552,"stop"] , [OSM::Way,26375429] , [OSM::Way,26014253] , [OSM::Way,40698977,"backward_loop_Heinrichstraße"] , [OSM::Way,26014183,"backward_loop_Heinrichstraße"] , [OSM::Way,26359445] , [OSM::Node,292629869,"stop"] , [OSM::Way,40698978] , [OSM::Node,292629871,"stop"] , [OSM::Way,40698979] , [OSM::Way,5888048] , [OSM::Way,40699015] , [OSM::Way,26014095] , [OSM::Way,26014025] , [OSM::Node,296937454,"forward_stop"] , [OSM::Way,40698980] , [OSM::Way,26013954] , [OSM::Way,26014036] , [OSM::Way,26014062,"backward_bifurcation_Brehmplatz"] , [OSM::Way,40698981,"backward_bifurcation_Brehmplatz"] , [OSM::Node,296937455,"backward_stop"] , [OSM::Way,40698982,"backward_bifurcation_Brehmplatz"] , [OSM::Node,332064512,"backward_stop"] , [OSM::Way,26014017,"backward_bifurcation_Brehmplatz"] , [OSM::Way,26013951] , [OSM::Node,332064513,"forward_stop"] , [OSM::Way,40698984] , [OSM::Way,23388254] , [OSM::Node,494329141,"forward_stop"] , [OSM::Way,40698989] , [OSM::Way,22560498] , [OSM::Node,494329140,"backward_stop"] , [OSM::Way,40698986] , [OSM::Way,26013900] , [OSM::Node,392653481,"forward_stop"] , [OSM::Way,40698991] , [OSM::Way,40698993] , [OSM::Node,392653480,"backward_stop"] , [OSM::Way,26174085] , [OSM::Way,26174083] , [OSM::Way,26013863] , [OSM::Way,40427288] , [OSM::Way,22561789] , [OSM::Way,40428972] , [OSM::Way,28304013] , [OSM::Way,26013847] , [OSM::Way,30198313] , [OSM::Way,26359887] , [OSM::Way,32523327] , [OSM::Node,241792670,"forward_stop"] , [OSM::Way,40698995] , [OSM::Way,40698997,"backward_bifurcation_Worringer_Platz"] , [OSM::Node,332784349,"backward_stop"] , [OSM::Way,30198312,"backward_bifurcation_Worringer_Platz"] , [OSM::Way,26358195] , [OSM::Way,26358107] , [OSM::Way,40609952] , [OSM::Way,40609951] , [OSM::Node,493177719,"forward_stop"] , [OSM::Way,40686613] , [OSM::Way,30283183] , [OSM::Way,40613714,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Node,493177721,"backward_stop"] , [OSM::Way,26358234,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,23842623,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,24452137] , [OSM::Way,8321058] , [OSM::Way,40583417] , [OSM::Way,26373389] , [OSM::Node,288939982,"stop"] , [OSM::Way,40686616] , [OSM::Way,40686617] , [OSM::Node,241429066,"stop"] , [OSM::Way,14028628] , [OSM::Way,40686626] , [OSM::Node,269991282,"stop"] , [OSM::Way,24850302] , [OSM::Way,26372930] , [OSM::Way,25790002] , [OSM::Node,269991281,"stop"] , [OSM::Way,14021056] , [OSM::Way,23150194] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Node,285708917,"stop"] , [OSM::Way,40686619] , [OSM::Way,40699000] , [OSM::Node,285708878,"stop"] , [OSM::Way,40699016] , [OSM::Node,494329142,"forward_stop"] , [OSM::Way,40699017] , [OSM::Node,494329143,"backward_stop"] , [OSM::Way,40699002] , [OSM::Node,253872378,"stop"] , [OSM::Way,23436438] , [OSM::Way,26130630] , [OSM::Way,23442307] , [OSM::Node,494329144,"forward_stop"] , [OSM::Way,40699018] , [OSM::Node,494329145,"backward_stop"] , [OSM::Way,40699019] , [OSM::Way,40348109] , [OSM::Node,253872389,"stop"] , [OSM::Way,40699005] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Node,247923057,"stop"] , [OSM::Way,40699012] , [OSM::Node,247922828,"stop"] , [OSM::Way,22996694,"q"] , [OSM::Way,25816351,"q"] , [OSM::Node,288934972,"stop"] , [OSM::Way,40699014,"turnaround_Hamm"] , [OSM::Way,40699021,"turnaround_Hamm"] , [OSM::Way,40699022,"turnaround_Hamm"] , [OSM::Way,26372462,"turnaround_Hamm"] , [OSM::Way,40699020,"turnaround_Hamm"] , [OSM::Way,40699024,"turnaround_Hamm"] , [OSM::Way,40699023,"turnaround_Hamm"]], :id  => 28000, :version => 85, :visible => true, :changeset => 2460498, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,288957552,"stop"] , [OSM::Way,26375429] , [OSM::Way,26014253] , [OSM::Way,40698977,"backward_loop_Heinrichstraße"] , [OSM::Way,26014183,"backward_loop_Heinrichstraße"] , [OSM::Way,26359445] , [OSM::Node,292629869,"stop"] , [OSM::Way,40698978] , [OSM::Node,292629871,"stop"] , [OSM::Way,40698979] , [OSM::Way,5888048] , [OSM::Way,40699015] , [OSM::Way,26014095] , [OSM::Way,26014025] , [OSM::Node,296937454,"forward_stop"] , [OSM::Way,40698980] , [OSM::Way,26013954] , [OSM::Way,26014036] , [OSM::Way,26014062,"backward_bifurcation_Brehmplatz"] , [OSM::Way,40698981,"backward_bifurcation_Brehmplatz"] , [OSM::Node,296937455,"backward_stop"] , [OSM::Way,40698982,"backward_bifurcation_Brehmplatz"] , [OSM::Node,332064512,"backward_stop"] , [OSM::Way,26014017,"backward_bifurcation_Brehmplatz"] , [OSM::Way,26013951] , [OSM::Node,332064513,"forward_stop"] , [OSM::Way,40698984] , [OSM::Way,23388254] , [OSM::Node,494329141,"forward_stop"] , [OSM::Way,40698989] , [OSM::Way,22560498] , [OSM::Node,494329140,"backward_stop"] , [OSM::Way,40698986] , [OSM::Way,26013900] , [OSM::Node,392653481,"forward_stop"] , [OSM::Way,40698991] , [OSM::Way,40698993] , [OSM::Node,392653480,"backward_stop"] , [OSM::Way,26174085] , [OSM::Way,26174083] , [OSM::Way,26013863] , [OSM::Way,40427288] , [OSM::Way,22561789] , [OSM::Way,40428972] , [OSM::Way,28304013] , [OSM::Way,26013847] , [OSM::Way,30198313] , [OSM::Way,26359887] , [OSM::Way,32523327] , [OSM::Node,241792670,"forward_stop"] , [OSM::Way,40698995] , [OSM::Way,40698997,"backward_bifurcation_Worringer_Platz"] , [OSM::Node,332784349,"backward_stop"] , [OSM::Way,30198312,"backward_bifurcation_Worringer_Platz"] , [OSM::Way,26358195] , [OSM::Way,26358107] , [OSM::Way,40609952] , [OSM::Way,40609951] , [OSM::Node,493177719,"forward_stop"] , [OSM::Way,40686613] , [OSM::Way,30283183] , [OSM::Way,40613714,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Node,493177721,"backward_stop"] , [OSM::Way,26358234,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,23842623,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,24452137] , [OSM::Way,8321058] , [OSM::Way,40583417] , [OSM::Way,26373389] , [OSM::Node,288939982,"stop"] , [OSM::Way,40686616] , [OSM::Way,40686617] , [OSM::Node,241429066,"stop"] , [OSM::Way,14028628] , [OSM::Way,40686626] , [OSM::Node,269991282,"stop"] , [OSM::Way,24850302] , [OSM::Way,26372930] , [OSM::Way,25790002] , [OSM::Node,269991281,"stop"] , [OSM::Way,14021056] , [OSM::Way,23150194] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Node,285708917,"stop"] , [OSM::Way,40686619] , [OSM::Way,40699000] , [OSM::Node,285708878,"stop"] , [OSM::Way,40699016] , [OSM::Node,494329142,"forward_stop"] , [OSM::Way,40699017] , [OSM::Node,494329143,"backward_stop"] , [OSM::Way,40699002] , [OSM::Node,253872378,"stop"] , [OSM::Way,23436438] , [OSM::Way,26130630] , [OSM::Way,23442307] , [OSM::Node,494329144,"forward_stop"] , [OSM::Way,40699018] , [OSM::Node,494329145,"backward_stop"] , [OSM::Way,40699019] , [OSM::Way,40348109] , [OSM::Node,253872389,"stop"] , [OSM::Way,40699005] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Node,247923057,"stop"] , [OSM::Way,40699012] , [OSM::Node,247922828,"stop"] , [OSM::Way,22996694,"q"] , [OSM::Way,25816351,"q"] , [OSM::Node,288934972,"stop"] , [OSM::Way,40699014,"turnaround_1_Hamm"] , [OSM::Way,40699021,"turnaround_1_Hamm"] , [OSM::Way,40699022,"turnaround_1_Hamm"] , [OSM::Way,26372462,"turnaround_2_Hamm"] , [OSM::Way,40699020,"turnaround_2_Hamm"] , [OSM::Way,40699024,"turnaround_2_Hamm"] , [OSM::Way,40699023,"turnaround_3_Hamm"]], :id  => 28000, :version => 86, :visible => true, :changeset => 2460584, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,288957552,"stop"] , [OSM::Way,26375429] , [OSM::Way,26014253] , [OSM::Way,40698977,"backward_loop_Heinrichstraße"] , [OSM::Way,26014183,"backward_loop_Heinrichstraße"] , [OSM::Way,26359445] , [OSM::Node,292629869,"stop"] , [OSM::Way,40698978] , [OSM::Node,292629871,"stop"] , [OSM::Way,40698979] , [OSM::Way,5888048] , [OSM::Way,40699015] , [OSM::Way,26014095] , [OSM::Way,26014025] , [OSM::Node,296937454,"forward_stop"] , [OSM::Way,40698980] , [OSM::Way,26013954] , [OSM::Way,26014036] , [OSM::Way,26014062,"backward_bifurcation_Brehmplatz"] , [OSM::Way,40698981,"backward_bifurcation_Brehmplatz"] , [OSM::Node,296937455,"backward_stop"] , [OSM::Way,40698982,"backward_bifurcation_Brehmplatz"] , [OSM::Node,332064512,"backward_stop"] , [OSM::Way,26014017,"backward_bifurcation_Brehmplatz"] , [OSM::Way,26013951] , [OSM::Node,332064513,"forward_stop"] , [OSM::Way,40698984] , [OSM::Way,23388254] , [OSM::Node,494329141,"forward_stop"] , [OSM::Way,40698989] , [OSM::Way,22560498] , [OSM::Node,494329140,"backward_stop"] , [OSM::Way,40698986] , [OSM::Way,26013900] , [OSM::Node,392653481,"forward_stop"] , [OSM::Way,40698991] , [OSM::Way,40698993] , [OSM::Node,392653480,"backward_stop"] , [OSM::Way,26174085] , [OSM::Way,26174083] , [OSM::Way,26013863] , [OSM::Way,40427288] , [OSM::Way,22561789] , [OSM::Way,40428972] , [OSM::Way,28304013] , [OSM::Way,26013847] , [OSM::Way,30198313] , [OSM::Way,26359887] , [OSM::Way,32523327] , [OSM::Node,241792670,"forward_stop"] , [OSM::Way,40698995] , [OSM::Way,40698997,"backward_bifurcation_Worringer_Platz"] , [OSM::Node,332784349,"backward_stop"] , [OSM::Way,30198312,"backward_bifurcation_Worringer_Platz"] , [OSM::Way,26358195] , [OSM::Way,26358107] , [OSM::Way,40609952] , [OSM::Way,40609951] , [OSM::Node,493177719,"forward_stop"] , [OSM::Way,40686613] , [OSM::Way,30283183] , [OSM::Way,40613714,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Node,493177721,"backward_stop"] , [OSM::Way,26358234,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,23842623,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,24452137] , [OSM::Way,8321058] , [OSM::Way,40583417] , [OSM::Way,26373389] , [OSM::Node,288939982,"stop"] , [OSM::Way,40686616] , [OSM::Way,40686617] , [OSM::Node,241429066,"stop"] , [OSM::Way,14028628] , [OSM::Way,40686626] , [OSM::Node,269991282,"stop"] , [OSM::Way,24850302] , [OSM::Way,26372930] , [OSM::Way,25790002] , [OSM::Node,269991281,"stop"] , [OSM::Way,14021056] , [OSM::Way,23150194] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Node,285708917,"stop"] , [OSM::Way,40686619] , [OSM::Way,40699000] , [OSM::Node,285708878,"stop"] , [OSM::Way,40699016] , [OSM::Node,494329142,"forward_stop"] , [OSM::Way,40699017] , [OSM::Node,494329143,"backward_stop"] , [OSM::Way,40699002] , [OSM::Node,253872378,"stop"] , [OSM::Way,23436438] , [OSM::Way,26130630] , [OSM::Way,23442307] , [OSM::Node,494329144,"forward_stop"] , [OSM::Way,40699018] , [OSM::Node,494329145,"backward_stop"] , [OSM::Way,40699019] , [OSM::Way,40348109] , [OSM::Node,253872389,"stop"] , [OSM::Way,40699005] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Node,247923057,"stop"] , [OSM::Way,40699012] , [OSM::Node,247922828,"stop"] , [OSM::Way,22996694] , [OSM::Way,25816351] , [OSM::Node,288934972,"stop"] , [OSM::Way,40699014,"turnaround_1_Hamm"] , [OSM::Way,40699021,"turnaround_1_Hamm"] , [OSM::Way,40699022,"turnaround_1_Hamm"] , [OSM::Way,26372462,"turnaround_2_Hamm"] , [OSM::Way,40699020,"turnaround_2_Hamm"] , [OSM::Way,40699024,"turnaround_2_Hamm"] , [OSM::Way,40699023,"turnaround_3_Hamm"]], :id  => 28000, :version => 87, :visible => true, :changeset => 2460594, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,288957552,"stop"] , [OSM::Way,26375429] , [OSM::Way,26014253] , [OSM::Way,40698977,"backward_loop_Heinrichstraße"] , [OSM::Way,26014183,"backward_loop_Heinrichstraße"] , [OSM::Way,26359445] , [OSM::Node,292629869,"stop"] , [OSM::Way,40698978] , [OSM::Node,292629871,"stop"] , [OSM::Way,40698979] , [OSM::Way,5888048] , [OSM::Way,40699015] , [OSM::Way,26014095] , [OSM::Way,26014025] , [OSM::Node,296937454,"forward_stop"] , [OSM::Way,40698980] , [OSM::Way,26013954] , [OSM::Way,26014036] , [OSM::Way,26014062,"backward_bifurcation_Brehmplatz"] , [OSM::Way,40698981,"backward_bifurcation_Brehmplatz"] , [OSM::Node,296937455,"backward_stop"] , [OSM::Way,40698982,"backward_bifurcation_Brehmplatz"] , [OSM::Node,332064512,"backward_stop"] , [OSM::Way,26014017,"backward_bifurcation_Brehmplatz"] , [OSM::Way,26013951] , [OSM::Node,332064513,"forward_stop"] , [OSM::Way,40698984] , [OSM::Way,23388254] , [OSM::Node,494329141,"forward_stop"] , [OSM::Way,40698989] , [OSM::Way,22560498] , [OSM::Node,494329140,"backward_stop"] , [OSM::Way,40698986] , [OSM::Way,26013900] , [OSM::Node,392653481,"forward_stop"] , [OSM::Way,40698991] , [OSM::Way,40698993] , [OSM::Node,392653480,"backward_stop"] , [OSM::Way,26174085] , [OSM::Way,26174083] , [OSM::Way,26013863] , [OSM::Way,41081297] , [OSM::Way,40427288] , [OSM::Way,22561789] , [OSM::Way,40428972] , [OSM::Way,28304013] , [OSM::Way,26013847] , [OSM::Way,30198313] , [OSM::Way,26359887] , [OSM::Way,32523327] , [OSM::Node,241792670,"forward_stop"] , [OSM::Way,40698995] , [OSM::Way,40698997,"backward_bifurcation_Worringer_Platz"] , [OSM::Node,332784349,"backward_stop"] , [OSM::Way,30198312,"backward_bifurcation_Worringer_Platz"] , [OSM::Way,26358195] , [OSM::Way,26358107] , [OSM::Way,40609952] , [OSM::Way,40609951] , [OSM::Node,493177719,"forward_stop"] , [OSM::Way,40686613] , [OSM::Way,30283183] , [OSM::Way,40613714,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Node,493177721,"backward_stop"] , [OSM::Way,26358234,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,23842623,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,24452137] , [OSM::Way,8321058] , [OSM::Way,40583417] , [OSM::Way,26373389] , [OSM::Node,288939982,"stop"] , [OSM::Way,40686616] , [OSM::Way,40686617] , [OSM::Node,241429066,"stop"] , [OSM::Way,14028628] , [OSM::Way,40686626] , [OSM::Node,269991282,"stop"] , [OSM::Way,24850302] , [OSM::Way,26372930] , [OSM::Way,25790002] , [OSM::Node,269991281,"stop"] , [OSM::Way,14021056] , [OSM::Way,23150194] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Node,285708917,"stop"] , [OSM::Way,40686619] , [OSM::Way,40699000] , [OSM::Node,285708878,"stop"] , [OSM::Way,40699016] , [OSM::Node,494329142,"forward_stop"] , [OSM::Way,40699017] , [OSM::Node,494329143,"backward_stop"] , [OSM::Way,40699002] , [OSM::Node,253872378,"stop"] , [OSM::Way,23436438] , [OSM::Way,26130630] , [OSM::Way,23442307] , [OSM::Node,494329144,"forward_stop"] , [OSM::Way,40699018] , [OSM::Node,494329145,"backward_stop"] , [OSM::Way,40699019] , [OSM::Way,40348109] , [OSM::Node,253872389,"stop"] , [OSM::Way,40699005] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Node,247923057,"stop"] , [OSM::Way,40699012] , [OSM::Node,247922828,"stop"] , [OSM::Way,22996694] , [OSM::Way,25816351] , [OSM::Node,288934972,"stop"] , [OSM::Way,40699014,"turnaround_1_Hamm"] , [OSM::Way,40699021,"turnaround_1_Hamm"] , [OSM::Way,40699022,"turnaround_1_Hamm"] , [OSM::Way,26372462,"turnaround_2_Hamm"] , [OSM::Way,40699020,"turnaround_2_Hamm"] , [OSM::Way,40699024,"turnaround_2_Hamm"] , [OSM::Way,40699023,"turnaround_3_Hamm"]], :id  => 28000, :version => 88, :visible => true, :changeset => 2527922, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,288957552] , [OSM::Way,26375429] , [OSM::Way,26014253] , [OSM::Way,40698977,"backward_loop_Heinrichstraße"] , [OSM::Way,26014183,"backward_loop_Heinrichstraße"] , [OSM::Way,26359445] , [OSM::Node,292629869,"stop"] , [OSM::Way,40698978] , [OSM::Node,292629871,"stop"] , [OSM::Way,40698979] , [OSM::Way,5888048] , [OSM::Way,40699015] , [OSM::Way,26014095] , [OSM::Way,26014025] , [OSM::Node,296937454,"forward_stop"] , [OSM::Way,40698980] , [OSM::Way,26013954] , [OSM::Way,26014036] , [OSM::Way,26014062,"backward_bifurcation_Brehmplatz"] , [OSM::Way,40698981,"backward_bifurcation_Brehmplatz"] , [OSM::Node,296937455,"backward_stop"] , [OSM::Way,40698982,"backward_bifurcation_Brehmplatz"] , [OSM::Node,332064512,"backward_stop"] , [OSM::Way,26014017,"backward_bifurcation_Brehmplatz"] , [OSM::Way,26013951] , [OSM::Node,332064513,"forward_stop"] , [OSM::Way,40698984] , [OSM::Way,23388254] , [OSM::Node,494329141,"forward_stop"] , [OSM::Way,40698989] , [OSM::Way,22560498] , [OSM::Node,494329140,"backward_stop"] , [OSM::Way,40698986] , [OSM::Way,26013900] , [OSM::Node,392653481,"forward_stop"] , [OSM::Way,40698991] , [OSM::Way,40698993] , [OSM::Node,392653480,"backward_stop"] , [OSM::Way,26174085] , [OSM::Way,26174083] , [OSM::Way,26013863] , [OSM::Way,41081297] , [OSM::Way,40427288] , [OSM::Way,22561789] , [OSM::Way,40428972] , [OSM::Way,28304013] , [OSM::Way,26013847] , [OSM::Way,30198313] , [OSM::Way,26359887] , [OSM::Way,32523327] , [OSM::Node,241792670,"forward_stop"] , [OSM::Way,40698995] , [OSM::Way,40698997,"backward_bifurcation_Worringer_Platz"] , [OSM::Node,332784349,"backward_stop"] , [OSM::Way,30198312,"backward_bifurcation_Worringer_Platz"] , [OSM::Way,26358195] , [OSM::Way,26358107] , [OSM::Way,40609952] , [OSM::Way,40609951] , [OSM::Node,493177719,"forward_stop"] , [OSM::Way,40686613] , [OSM::Way,30283183] , [OSM::Way,40613714,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Node,493177721,"backward_stop"] , [OSM::Way,26358234,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,23842623,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,24452137] , [OSM::Way,8321058] , [OSM::Way,40583417] , [OSM::Way,26373389] , [OSM::Node,288939982,"stop"] , [OSM::Way,40686616] , [OSM::Way,40686617] , [OSM::Node,241429066,"stop"] , [OSM::Way,14028628] , [OSM::Way,40686626] , [OSM::Node,269991282,"stop"] , [OSM::Way,24850302] , [OSM::Way,26372930] , [OSM::Way,25790002] , [OSM::Node,269991281,"stop"] , [OSM::Way,14021056] , [OSM::Way,23150194] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Node,285708917,"stop"] , [OSM::Way,40686619] , [OSM::Way,40699000] , [OSM::Node,285708878,"stop"] , [OSM::Way,40699016] , [OSM::Node,494329142,"forward_stop"] , [OSM::Way,40699017] , [OSM::Node,494329143,"backward_stop"] , [OSM::Way,40699002] , [OSM::Node,253872378,"stop"] , [OSM::Way,23436438] , [OSM::Way,26130630] , [OSM::Way,23442307] , [OSM::Node,494329144,"forward_stop"] , [OSM::Way,40699018] , [OSM::Node,494329145,"backward_stop"] , [OSM::Way,40699019] , [OSM::Way,40348109] , [OSM::Node,253872389,"stop"] , [OSM::Way,40699005] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Node,247923057,"stop"] , [OSM::Way,40699012] , [OSM::Node,247922828,"stop"] , [OSM::Way,22996694] , [OSM::Way,25816351] , [OSM::Node,288934972,"stop"] , [OSM::Way,40699014,"turnaround_1_Hamm"] , [OSM::Way,40699021,"turnaround_1_Hamm"] , [OSM::Way,40699022,"turnaround_1_Hamm"] , [OSM::Way,26372462,"turnaround_2_Hamm"] , [OSM::Way,40699020,"turnaround_2_Hamm"] , [OSM::Way,40699024,"turnaround_2_Hamm"] , [OSM::Way,40699023,"turnaround_3_Hamm"]], :id  => 28000, :version => 89, :visible => true, :changeset => 3100646, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,288957552] , [OSM::Way,26375429] , [OSM::Way,26014253] , [OSM::Way,40698977,"backward_loop_Heinrichstraße"] , [OSM::Way,26014183,"backward_loop_Heinrichstraße"] , [OSM::Way,26359445] , [OSM::Node,292629869,"stop"] , [OSM::Way,40698978] , [OSM::Node,292629871,"stop"] , [OSM::Way,40698979] , [OSM::Way,5888048] , [OSM::Way,40699015] , [OSM::Way,26014095] , [OSM::Way,26014025] , [OSM::Node,296937454,"forward_stop"] , [OSM::Way,40698980] , [OSM::Way,26013954] , [OSM::Way,26014036] , [OSM::Way,26014062,"backward_bifurcation_Brehmplatz"] , [OSM::Way,40698981,"backward_bifurcation_Brehmplatz"] , [OSM::Node,296937455,"backward_stop"] , [OSM::Way,40698982,"backward_bifurcation_Brehmplatz"] , [OSM::Node,332064512,"backward_stop"] , [OSM::Way,26014017,"backward_bifurcation_Brehmplatz"] , [OSM::Way,26013951] , [OSM::Node,332064513,"forward_stop"] , [OSM::Way,40698984] , [OSM::Way,23388254] , [OSM::Node,494329141,"forward_stop"] , [OSM::Way,40698989] , [OSM::Way,22560498] , [OSM::Node,494329140,"backward_stop"] , [OSM::Way,40698986] , [OSM::Way,26013900] , [OSM::Node,392653481,"forward_stop"] , [OSM::Way,40698991] , [OSM::Way,40698993] , [OSM::Node,392653480,"backward_stop"] , [OSM::Way,26174085] , [OSM::Way,26174083] , [OSM::Way,26013863] , [OSM::Way,41081297] , [OSM::Way,40427288] , [OSM::Way,22561789] , [OSM::Way,40428972] , [OSM::Way,28304013] , [OSM::Way,26013847] , [OSM::Way,30198313] , [OSM::Way,26359887] , [OSM::Way,32523327] , [OSM::Node,241792670,"forward_stop"] , [OSM::Way,40698995] , [OSM::Way,40698997,"backward_bifurcation_Worringer_Platz"] , [OSM::Node,332784349,"backward_stop"] , [OSM::Way,30198312,"backward_bifurcation_Worringer_Platz"] , [OSM::Way,26358195] , [OSM::Way,26358107] , [OSM::Way,40609952] , [OSM::Way,40609951] , [OSM::Node,493177719,"forward_stop"] , [OSM::Way,40686613] , [OSM::Way,30283183] , [OSM::Way,40613714,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Node,493177721,"backward_stop"] , [OSM::Way,26358234,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,23842623,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,24452137] , [OSM::Way,8321058] , [OSM::Way,40583417] , [OSM::Way,26373389] , [OSM::Node,288939982,"stop"] , [OSM::Way,40686616] , [OSM::Way,40686617] , [OSM::Node,241429066,"stop"] , [OSM::Way,14028628] , [OSM::Way,40686626] , [OSM::Node,269991282,"stop"] , [OSM::Way,24850302] , [OSM::Way,26372930] , [OSM::Way,25790002] , [OSM::Node,269991281,"stop"] , [OSM::Way,14021056] , [OSM::Way,23150194] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Node,285708917,"stop"] , [OSM::Way,40686619] , [OSM::Way,40699000] , [OSM::Node,285708878,"stop"] , [OSM::Way,40699016] , [OSM::Node,494329142,"forward_stop"] , [OSM::Way,40699017] , [OSM::Node,494329143,"backward_stop"] , [OSM::Way,40699002] , [OSM::Node,253872378,"stop"] , [OSM::Way,23436438] , [OSM::Way,26130630] , [OSM::Way,23442307] , [OSM::Node,494329144,"forward_stop"] , [OSM::Way,40699018] , [OSM::Node,494329145,"backward_stop"] , [OSM::Way,40699019] , [OSM::Way,40348109] , [OSM::Node,253872389,"stop"] , [OSM::Way,40699005] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Node,247923057,"stop"] , [OSM::Way,40699012] , [OSM::Node,247922828,"stop"] , [OSM::Way,22996694] , [OSM::Way,25816351] , [OSM::Node,288934972,"stop"] , [OSM::Way,40699014,"turnaround_1_Hamm"] , [OSM::Way,40699021,"turnaround_1_Hamm"] , [OSM::Way,40699022,"turnaround_1_Hamm"] , [OSM::Way,26372462,"turnaround_2_Hamm"] , [OSM::Way,40699020,"turnaround_2_Hamm"] , [OSM::Way,40699024,"turnaround_2_Hamm"] , [OSM::Way,40699023,"turnaround_3_Hamm"] , [OSM::Way,46088616]], :id  => 28000, :version => 90, :visible => true, :changeset => 3353660, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,288957552] , [OSM::Way,26375429] , [OSM::Way,26014253] , [OSM::Way,40698977,"backward_loop_Heinrichstraße"] , [OSM::Way,26014183,"backward_loop_Heinrichstraße"] , [OSM::Way,26359445] , [OSM::Node,292629869,"stop"] , [OSM::Way,40698978] , [OSM::Node,292629871,"stop"] , [OSM::Way,40698979] , [OSM::Way,5888048] , [OSM::Way,40699015] , [OSM::Way,26014095] , [OSM::Way,26014025] , [OSM::Node,296937454,"forward_stop"] , [OSM::Way,40698980] , [OSM::Way,26013954] , [OSM::Way,26014036] , [OSM::Way,26014062,"backward_bifurcation_Brehmplatz"] , [OSM::Way,40698981,"backward_bifurcation_Brehmplatz"] , [OSM::Node,296937455,"backward_stop"] , [OSM::Way,40698982,"backward_bifurcation_Brehmplatz"] , [OSM::Node,332064512,"backward_stop"] , [OSM::Way,26014017,"backward_bifurcation_Brehmplatz"] , [OSM::Way,26013951] , [OSM::Node,332064513,"forward_stop"] , [OSM::Way,40698984] , [OSM::Way,23388254] , [OSM::Node,494329141,"forward_stop"] , [OSM::Way,40698989] , [OSM::Way,22560498] , [OSM::Node,494329140,"backward_stop"] , [OSM::Way,40698986] , [OSM::Way,26013900] , [OSM::Node,392653481,"forward_stop"] , [OSM::Way,40698991] , [OSM::Way,40698993] , [OSM::Node,392653480,"backward_stop"] , [OSM::Way,26174085] , [OSM::Way,26174083] , [OSM::Way,26013863] , [OSM::Way,41081297] , [OSM::Way,40427288] , [OSM::Way,22561789] , [OSM::Way,40428972] , [OSM::Way,28304013] , [OSM::Way,26013847] , [OSM::Way,30198313] , [OSM::Way,26359887] , [OSM::Way,32523327] , [OSM::Node,241792670,"forward_stop"] , [OSM::Way,40698995] , [OSM::Way,40698997,"backward_bifurcation_Worringer_Platz"] , [OSM::Node,332784349,"backward_stop"] , [OSM::Way,30198312,"backward_bifurcation_Worringer_Platz"] , [OSM::Way,26358195] , [OSM::Way,26358107] , [OSM::Way,40609952] , [OSM::Way,40609951] , [OSM::Node,493177719,"forward_stop"] , [OSM::Way,40686613] , [OSM::Way,30283183] , [OSM::Way,40613714,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Node,493177721,"backward_stop"] , [OSM::Way,26358234,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,23842623,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,24452137] , [OSM::Way,8321058] , [OSM::Way,40583417] , [OSM::Way,26373389] , [OSM::Node,288939982,"stop"] , [OSM::Way,40686616] , [OSM::Way,40686617] , [OSM::Node,241429066,"stop"] , [OSM::Way,40686626] , [OSM::Node,269991282,"stop"] , [OSM::Way,24850302] , [OSM::Way,26372930] , [OSM::Way,25790002] , [OSM::Node,269991281,"stop"] , [OSM::Way,14021056] , [OSM::Way,23150194] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Node,285708917,"stop"] , [OSM::Way,40686619] , [OSM::Way,40699000] , [OSM::Node,285708878,"stop"] , [OSM::Way,40699016] , [OSM::Node,494329142,"forward_stop"] , [OSM::Way,40699017] , [OSM::Node,494329143,"backward_stop"] , [OSM::Way,40699002] , [OSM::Node,253872378,"stop"] , [OSM::Way,23436438] , [OSM::Way,26130630] , [OSM::Way,23442307] , [OSM::Node,494329144,"forward_stop"] , [OSM::Way,40699018] , [OSM::Node,494329145,"backward_stop"] , [OSM::Way,40699019] , [OSM::Way,40348109] , [OSM::Node,253872389,"stop"] , [OSM::Way,40699005] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Node,247923057,"stop"] , [OSM::Way,40699012] , [OSM::Node,247922828,"stop"] , [OSM::Way,22996694] , [OSM::Way,25816351] , [OSM::Node,288934972,"stop"] , [OSM::Way,40699014,"turnaround_1_Hamm"] , [OSM::Way,40699021,"turnaround_1_Hamm"] , [OSM::Way,40699022,"turnaround_1_Hamm"] , [OSM::Way,26372462,"turnaround_2_Hamm"] , [OSM::Way,40699020,"turnaround_2_Hamm"] , [OSM::Way,40699024,"turnaround_2_Hamm"] , [OSM::Way,40699023,"turnaround_3_Hamm"] , [OSM::Way,46088616]], :id  => 28000, :version => 91, :visible => true, :changeset => 5326154, "name" => "708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,288957552] , [OSM::Way,26375429] , [OSM::Way,26014253] , [OSM::Way,40698977,"backward_loop_Heinrichstraße"] , [OSM::Way,26014183,"backward_loop_Heinrichstraße"] , [OSM::Way,26359445] , [OSM::Node,292629869,"stop"] , [OSM::Way,40698978] , [OSM::Node,292629871,"stop"] , [OSM::Way,40698979] , [OSM::Way,5888048] , [OSM::Way,40699015] , [OSM::Way,26014095] , [OSM::Way,26014025] , [OSM::Node,296937454,"forward_stop"] , [OSM::Way,40698980] , [OSM::Way,26013954] , [OSM::Way,26014036] , [OSM::Way,26014062,"backward_bifurcation_Brehmplatz"] , [OSM::Way,40698981,"backward_bifurcation_Brehmplatz"] , [OSM::Node,296937455,"backward_stop"] , [OSM::Way,40698982,"backward_bifurcation_Brehmplatz"] , [OSM::Node,332064512,"backward_stop"] , [OSM::Way,26014017,"backward_bifurcation_Brehmplatz"] , [OSM::Way,26013951] , [OSM::Node,332064513,"forward_stop"] , [OSM::Way,40698984] , [OSM::Way,23388254] , [OSM::Node,494329141,"forward_stop"] , [OSM::Way,40698989] , [OSM::Way,22560498] , [OSM::Node,494329140,"backward_stop"] , [OSM::Way,40698986] , [OSM::Way,26013900] , [OSM::Node,392653481,"forward_stop"] , [OSM::Way,40698991] , [OSM::Way,40698993] , [OSM::Node,392653480,"backward_stop"] , [OSM::Way,26174085] , [OSM::Way,26174083] , [OSM::Way,26013863] , [OSM::Way,41081297] , [OSM::Way,40427288] , [OSM::Way,22561789] , [OSM::Way,40428972] , [OSM::Way,28304013] , [OSM::Way,26013847] , [OSM::Way,30198313] , [OSM::Way,26359887] , [OSM::Way,32523327] , [OSM::Node,241792670,"forward_stop"] , [OSM::Way,40698995] , [OSM::Way,40698997,"backward_bifurcation_Worringer_Platz"] , [OSM::Node,332784349,"backward_stop"] , [OSM::Way,30198312,"backward_bifurcation_Worringer_Platz"] , [OSM::Way,26358195] , [OSM::Way,26358107] , [OSM::Way,40609952] , [OSM::Way,40609951] , [OSM::Node,493177719,"forward_stop"] , [OSM::Way,40686613] , [OSM::Way,30283183] , [OSM::Way,40613714,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Node,493177721,"backward_stop"] , [OSM::Way,26358234,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,23842623,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,24452137] , [OSM::Way,8321058] , [OSM::Way,40583417] , [OSM::Way,26373389] , [OSM::Node,288939982,"stop"] , [OSM::Way,40686616] , [OSM::Way,40686617] , [OSM::Node,241429066,"stop"] , [OSM::Way,40686626] , [OSM::Node,269991282,"stop"] , [OSM::Way,24850302] , [OSM::Way,26372930] , [OSM::Way,25790002] , [OSM::Node,269991281,"stop"] , [OSM::Way,14021056] , [OSM::Way,23150194] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Node,285708917,"stop"] , [OSM::Way,40686619] , [OSM::Way,40699000] , [OSM::Node,285708878,"stop"] , [OSM::Way,40699016] , [OSM::Node,494329142,"forward_stop"] , [OSM::Way,40699017] , [OSM::Node,494329143,"backward_stop"] , [OSM::Way,40699002] , [OSM::Node,253872378,"stop"] , [OSM::Way,23436438] , [OSM::Way,26130630] , [OSM::Way,23442307] , [OSM::Node,494329144,"forward_stop"] , [OSM::Way,40699018] , [OSM::Node,494329145,"backward_stop"] , [OSM::Way,40699019] , [OSM::Way,40348109] , [OSM::Node,253872389,"stop"] , [OSM::Way,40699005] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Node,247923057,"stop"] , [OSM::Way,40699012] , [OSM::Node,247922828,"stop"] , [OSM::Way,22996694] , [OSM::Way,25816351] , [OSM::Node,288934972,"stop"] , [OSM::Way,40699014,"turnaround_1_Hamm"] , [OSM::Way,40699021,"turnaround_1_Hamm"] , [OSM::Way,40699022,"turnaround_1_Hamm"] , [OSM::Way,26372462,"turnaround_2_Hamm"] , [OSM::Way,40699020,"turnaround_2_Hamm"] , [OSM::Way,40699024,"turnaround_2_Hamm"] , [OSM::Way,40699023,"turnaround_3_Hamm"] , [OSM::Way,46088616]], :id  => 28000, :version => 92, :visible => true, :changeset => 7069644, "name" => "Tram 708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,288957552] , [OSM::Way,26375429] , [OSM::Way,26014253] , [OSM::Way,40698977,"backward_loop_Heinrichstraße"] , [OSM::Way,26014183,"backward_loop_Heinrichstraße"] , [OSM::Way,26359445] , [OSM::Node,292629869,"stop"] , [OSM::Way,40698978] , [OSM::Node,292629871,"stop"] , [OSM::Way,40698979] , [OSM::Way,5888048] , [OSM::Way,40699015] , [OSM::Way,26014095] , [OSM::Way,26014025] , [OSM::Node,296937454,"forward_stop"] , [OSM::Way,40698980] , [OSM::Way,26013954] , [OSM::Way,26014036] , [OSM::Way,26014062,"backward_bifurcation_Brehmplatz"] , [OSM::Way,40698981,"backward_bifurcation_Brehmplatz"] , [OSM::Node,296937455,"backward_stop"] , [OSM::Way,40698982,"backward_bifurcation_Brehmplatz"] , [OSM::Node,332064512,"backward_stop"] , [OSM::Way,26014017,"backward_bifurcation_Brehmplatz"] , [OSM::Way,26013951] , [OSM::Node,332064513,"forward_stop"] , [OSM::Way,40698984] , [OSM::Way,23388254] , [OSM::Node,494329141,"forward_stop"] , [OSM::Way,40698989] , [OSM::Way,22560498] , [OSM::Node,494329140,"backward_stop"] , [OSM::Way,40698986] , [OSM::Way,26013900] , [OSM::Node,392653481,"forward_stop"] , [OSM::Way,40698991] , [OSM::Way,40698993] , [OSM::Node,392653480,"backward_stop"] , [OSM::Way,26174085] , [OSM::Way,26174083] , [OSM::Way,26013863] , [OSM::Way,41081297] , [OSM::Way,40427288] , [OSM::Way,22561789] , [OSM::Way,40428972] , [OSM::Way,28304013] , [OSM::Way,26013847] , [OSM::Way,30198313] , [OSM::Way,26359887] , [OSM::Way,32523327] , [OSM::Node,241792670,"forward_stop"] , [OSM::Way,40698995] , [OSM::Way,40698997,"backward_bifurcation_Worringer_Platz"] , [OSM::Node,332784349,"backward_stop"] , [OSM::Way,30198312,"backward_bifurcation_Worringer_Platz"] , [OSM::Way,26358195] , [OSM::Way,26358107] , [OSM::Way,40609952] , [OSM::Way,40609951] , [OSM::Node,493177719,"forward_stop"] , [OSM::Way,40686613] , [OSM::Way,30283183] , [OSM::Way,40613714,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Node,493177721,"backward_stop"] , [OSM::Way,26358234,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,23842623,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,24452137] , [OSM::Way,8321058] , [OSM::Way,40583417] , [OSM::Way,26373389] , [OSM::Node,288939982,"stop"] , [OSM::Way,40686616] , [OSM::Way,40686617] , [OSM::Node,241429066,"stop"] , [OSM::Way,40686626] , [OSM::Node,269991282,"stop"] , [OSM::Way,24850302] , [OSM::Way,26372930] , [OSM::Way,25790002] , [OSM::Node,269991281,"stop"] , [OSM::Way,14021056] , [OSM::Way,23150194] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Node,285708917,"stop"] , [OSM::Way,40686619] , [OSM::Way,40699000] , [OSM::Node,285708878,"stop"] , [OSM::Way,40699016] , [OSM::Node,494329142,"forward_stop"] , [OSM::Way,40699017] , [OSM::Node,1225011277,"backward_stop"] , [OSM::Way,40699002] , [OSM::Node,253872378,"stop"] , [OSM::Way,23436438] , [OSM::Way,26130630] , [OSM::Way,23442307] , [OSM::Node,494329144,"forward_stop"] , [OSM::Way,40699018] , [OSM::Node,494329145,"backward_stop"] , [OSM::Way,40699019] , [OSM::Way,40348109] , [OSM::Node,253872389,"stop"] , [OSM::Way,40699005] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Node,247923057,"stop"] , [OSM::Way,40699012] , [OSM::Node,247922828,"stop"] , [OSM::Way,22996694] , [OSM::Way,25816351] , [OSM::Node,288934972,"stop"] , [OSM::Way,40699014,"turnaround_1_Hamm"] , [OSM::Way,40699021,"turnaround_1_Hamm"] , [OSM::Way,40699022,"turnaround_1_Hamm"] , [OSM::Way,26372462,"turnaround_2_Hamm"] , [OSM::Way,40699020,"turnaround_2_Hamm"] , [OSM::Way,40699024,"turnaround_2_Hamm"] , [OSM::Way,40699023,"turnaround_3_Hamm"] , [OSM::Way,46088616]], :id  => 28000, :version => 93, :visible => true, :changeset => 7714158, "name" => "Tram 708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,288957552] , [OSM::Way,26375429] , [OSM::Way,26014253] , [OSM::Way,40698977,"backward_loop_Heinrichstraße"] , [OSM::Way,26014183,"backward_loop_Heinrichstraße"] , [OSM::Way,26359445] , [OSM::Node,292629869,"stop"] , [OSM::Way,40698978] , [OSM::Node,292629871,"stop"] , [OSM::Way,40698979] , [OSM::Way,5888048] , [OSM::Way,116413146] , [OSM::Way,40699015] , [OSM::Way,26014095] , [OSM::Way,26014025] , [OSM::Node,296937454,"forward_stop"] , [OSM::Way,40698980] , [OSM::Way,26013954] , [OSM::Way,26014036] , [OSM::Way,26014062,"backward_bifurcation_Brehmplatz"] , [OSM::Way,40698981,"backward_bifurcation_Brehmplatz"] , [OSM::Node,296937455,"backward_stop"] , [OSM::Way,40698982,"backward_bifurcation_Brehmplatz"] , [OSM::Node,332064512,"backward_stop"] , [OSM::Way,26014017,"backward_bifurcation_Brehmplatz"] , [OSM::Way,26013951] , [OSM::Node,332064513,"forward_stop"] , [OSM::Way,40698984] , [OSM::Way,23388254] , [OSM::Node,494329141,"forward_stop"] , [OSM::Way,40698989] , [OSM::Way,22560498] , [OSM::Node,494329140,"backward_stop"] , [OSM::Way,40698986] , [OSM::Way,26013900] , [OSM::Node,392653481,"forward_stop"] , [OSM::Way,40698991] , [OSM::Way,40698993] , [OSM::Node,392653480,"backward_stop"] , [OSM::Way,26174085] , [OSM::Way,26174083] , [OSM::Way,26013863] , [OSM::Way,41081297] , [OSM::Way,40427288] , [OSM::Way,22561789] , [OSM::Way,40428972] , [OSM::Way,28304013] , [OSM::Way,26013847] , [OSM::Way,30198313] , [OSM::Way,26359887] , [OSM::Way,32523327] , [OSM::Node,241792670,"forward_stop"] , [OSM::Way,40698995] , [OSM::Way,40698997,"backward_bifurcation_Worringer_Platz"] , [OSM::Node,332784349,"backward_stop"] , [OSM::Way,30198312,"backward_bifurcation_Worringer_Platz"] , [OSM::Way,26358195] , [OSM::Way,26358107] , [OSM::Way,40609952] , [OSM::Way,40609951] , [OSM::Node,493177719,"forward_stop"] , [OSM::Way,40686613] , [OSM::Way,30283183] , [OSM::Way,40613714,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Node,493177721,"backward_stop"] , [OSM::Way,26358234,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,23842623,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,24452137] , [OSM::Way,8321058] , [OSM::Way,40583417] , [OSM::Way,26373389] , [OSM::Node,288939982,"stop"] , [OSM::Way,40686616] , [OSM::Way,40686617] , [OSM::Node,241429066,"stop"] , [OSM::Way,40686626] , [OSM::Node,269991282,"stop"] , [OSM::Way,24850302] , [OSM::Way,26372930] , [OSM::Way,25790002] , [OSM::Node,269991281,"stop"] , [OSM::Way,14021056] , [OSM::Way,23150194] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Node,285708917,"stop"] , [OSM::Way,40686619] , [OSM::Way,40699000] , [OSM::Node,285708878,"stop"] , [OSM::Way,40699016] , [OSM::Node,494329142,"forward_stop"] , [OSM::Way,40699017] , [OSM::Node,1225011277,"backward_stop"] , [OSM::Way,40699002] , [OSM::Node,253872378,"stop"] , [OSM::Way,23436438] , [OSM::Way,26130630] , [OSM::Way,23442307] , [OSM::Node,494329144,"forward_stop"] , [OSM::Way,40699018] , [OSM::Node,494329145,"backward_stop"] , [OSM::Way,40699019] , [OSM::Way,40348109] , [OSM::Node,253872389,"stop"] , [OSM::Way,40699005] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Node,247923057,"stop"] , [OSM::Way,40699012] , [OSM::Node,247922828,"stop"] , [OSM::Way,22996694] , [OSM::Way,25816351] , [OSM::Node,288934972,"stop"] , [OSM::Way,40699014,"turnaround_1_Hamm"] , [OSM::Way,40699021,"turnaround_1_Hamm"] , [OSM::Way,40699022,"turnaround_1_Hamm"] , [OSM::Way,26372462,"turnaround_2_Hamm"] , [OSM::Way,40699020,"turnaround_2_Hamm"] , [OSM::Way,40699024,"turnaround_2_Hamm"] , [OSM::Way,40699023,"turnaround_3_Hamm"] , [OSM::Way,46088616]], :id  => 28000, :version => 94, :visible => true, :changeset => 8344035, "name" => "Tram 708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Node,288957552] , [OSM::Way,26375429] , [OSM::Way,26014253] , [OSM::Way,40698977,"backward_loop_Heinrichstraße"] , [OSM::Way,26014183,"backward_loop_Heinrichstraße"] , [OSM::Way,26359445] , [OSM::Node,292629869,"stop"] , [OSM::Way,40698978] , [OSM::Node,292629871,"stop"] , [OSM::Way,40698979] , [OSM::Way,5888048] , [OSM::Way,116413146] , [OSM::Way,40699015] , [OSM::Way,26014095] , [OSM::Way,26014025] , [OSM::Node,296937454,"forward_stop"] , [OSM::Way,40698980] , [OSM::Way,26013954] , [OSM::Way,26014036] , [OSM::Way,26014062,"backward_bifurcation_Brehmplatz"] , [OSM::Way,40698981,"backward_bifurcation_Brehmplatz"] , [OSM::Node,296937455,"backward_stop"] , [OSM::Way,40698982,"backward_bifurcation_Brehmplatz"] , [OSM::Node,332064512,"backward_stop"] , [OSM::Way,26014017,"backward_bifurcation_Brehmplatz"] , [OSM::Way,26013951] , [OSM::Node,332064513,"forward_stop"] , [OSM::Way,40698984] , [OSM::Way,23388254] , [OSM::Node,494329141,"forward_stop"] , [OSM::Way,40698989] , [OSM::Way,22560498] , [OSM::Node,494329140,"backward_stop"] , [OSM::Way,40698986] , [OSM::Way,26013900] , [OSM::Node,392653481,"forward_stop"] , [OSM::Way,40698991] , [OSM::Way,40698993] , [OSM::Node,392653480,"backward_stop"] , [OSM::Way,26174085] , [OSM::Way,26174083] , [OSM::Way,26013863] , [OSM::Way,41081297] , [OSM::Way,40427288] , [OSM::Way,22561789] , [OSM::Way,40428972] , [OSM::Way,28304013] , [OSM::Way,26013847] , [OSM::Way,30198313] , [OSM::Way,26359887] , [OSM::Way,32523327] , [OSM::Node,241792670,"forward_stop"] , [OSM::Way,40698995] , [OSM::Way,40698997,"backward_bifurcation_Worringer_Platz"] , [OSM::Node,332784349,"backward_stop"] , [OSM::Way,30198312,"backward_bifurcation_Worringer_Platz"] , [OSM::Way,26358195] , [OSM::Way,26358107] , [OSM::Way,40609952] , [OSM::Way,40609951] , [OSM::Node,493177719,"forward_stop"] , [OSM::Way,40686613] , [OSM::Way,30283183] , [OSM::Way,40613714,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Node,493177721,"backward_stop"] , [OSM::Way,26358234,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,23842623,"backward_bifurcation_Düsseldorf_Hauptbahnhof"] , [OSM::Way,24452137] , [OSM::Way,8321058] , [OSM::Way,40583417] , [OSM::Way,26373389] , [OSM::Node,288939982,"stop"] , [OSM::Way,40686616] , [OSM::Way,124430751] , [OSM::Way,40686617] , [OSM::Node,241429066,"stop"] , [OSM::Way,40686626] , [OSM::Node,269991282,"stop"] , [OSM::Way,24850302] , [OSM::Way,26372930] , [OSM::Way,25790002] , [OSM::Node,269991281,"stop"] , [OSM::Way,14021056] , [OSM::Way,23150194] , [OSM::Way,26633485] , [OSM::Way,39212277] , [OSM::Node,285708917,"stop"] , [OSM::Way,40686619] , [OSM::Way,40699000] , [OSM::Node,285708878,"stop"] , [OSM::Way,40699016] , [OSM::Node,494329142,"forward_stop"] , [OSM::Way,40699017] , [OSM::Node,1225011277,"backward_stop"] , [OSM::Way,40699002] , [OSM::Node,253872378,"stop"] , [OSM::Way,23436438] , [OSM::Way,26130630] , [OSM::Way,23442307] , [OSM::Node,494329144,"forward_stop"] , [OSM::Way,40699018] , [OSM::Node,494329145,"backward_stop"] , [OSM::Way,40699019] , [OSM::Way,40348109] , [OSM::Node,253872389,"stop"] , [OSM::Way,40699005] , [OSM::Way,24849086] , [OSM::Way,24849377] , [OSM::Node,247923057,"stop"] , [OSM::Way,40699012] , [OSM::Node,247922828,"stop"] , [OSM::Way,22996694] , [OSM::Way,25816351] , [OSM::Node,288934972,"stop"] , [OSM::Way,40699014,"turnaround_1_Hamm"] , [OSM::Way,40699021,"turnaround_1_Hamm"] , [OSM::Way,40699022,"turnaround_1_Hamm"] , [OSM::Way,26372462,"turnaround_2_Hamm"] , [OSM::Way,40699020,"turnaround_2_Hamm"] , [OSM::Way,40699024,"turnaround_2_Hamm"] , [OSM::Way,40699023,"turnaround_3_Hamm"] , [OSM::Way,46088616]], :id  => 28000, :version => 95, :visible => true, :changeset => 8913252, "name" => "Tram 708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route" => "tram", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Relation,1715616] , [OSM::Relation,1715615]], :id  => 28000, :version => 96, :visible => true, :changeset => 9054497, "name" => "Tram 708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route_master" => "tram", "type" => "route_master"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Relation[[[OSM::Relation,1715616] , [OSM::Relation,1715615]], :id  => 28000, :version => 96, :visible => true, :changeset => -1, "name" => "Tram 708", "network" => "VRR", "operator" => "Rheinbahn", "ref" => "708", "route_master" => "tram", "type" => "route_master"]],
                  Delete[OSM::Relation, 28000],
                  Redact[OSM::Relation, 28000, 62, :hidden],
                  Redact[OSM::Relation, 28000, 63, :hidden],
                  Redact[OSM::Relation, 28000, 64, :hidden],
                  Redact[OSM::Relation, 28000, 65, :hidden],
                  Redact[OSM::Relation, 28000, 66, :hidden],
                  Redact[OSM::Relation, 28000, 67, :hidden],
                  Redact[OSM::Relation, 28000, 68, :hidden],
                  Redact[OSM::Relation, 28000, 68, :visible],
                  Redact[OSM::Relation, 28000, 69, :visible],
                  Redact[OSM::Relation, 28000, 70, :visible],
                  Redact[OSM::Relation, 28000, 71, :visible],
                  Redact[OSM::Relation, 28000, 72, :visible],
                  Redact[OSM::Relation, 28000, 73, :visible],
                  Redact[OSM::Relation, 28000, 74, :visible],
                  Redact[OSM::Relation, 28000, 75, :visible],
                  Redact[OSM::Relation, 28000, 76, :visible],
                  Redact[OSM::Relation, 28000, 77, :visible],
                  Redact[OSM::Relation, 28000, 78, :visible],
                  Redact[OSM::Relation, 28000, 79, :visible],
                  Redact[OSM::Relation, 28000, 80, :visible],
                  Redact[OSM::Relation, 28000, 81, :visible],
                  Redact[OSM::Relation, 28000, 82, :visible],
                  Redact[OSM::Relation, 28000, 83, :visible],
                  Redact[OSM::Relation, 28000, 84, :visible],
                  Redact[OSM::Relation, 28000, 85, :visible],
                  Redact[OSM::Relation, 28000, 86, :visible],
                  Redact[OSM::Relation, 28000, 87, :visible],
                  Redact[OSM::Relation, 28000, 88, :visible],
                  Redact[OSM::Relation, 28000, 89, :visible],
                  Redact[OSM::Relation, 28000, 90, :visible],
                  Redact[OSM::Relation, 28000, 91, :visible],
                  Redact[OSM::Relation, 28000, 92, :visible],
                  Redact[OSM::Relation, 28000, 93, :visible],
                  Redact[OSM::Relation, 28000, 94, :visible],
                  Redact[OSM::Relation, 28000, 95, :visible]
                 ], actions)
  end

  # auto-generated test for relation 33000
  # http://wtfe.gryph.de/report/relation/33000
  # http://osm.mapki.com/history/relation.php?id=33000
  def test_automatic_relation33000
    history = [OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,25092558] , [OSM::Way,27137525]], :id  => 33000, :version => 1, :visible => true, :changeset => 654618, "created_by" => "JOSM", "network" => "lcn", "ref" => "3", "route" => "bicycle", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137701] , [OSM::Way,27137702]], :id  => 33000, :version => 2, :visible => true, :changeset => 654618, "created_by" => "JOSM", "network" => "lcn", "ref" => "3", "route" => "bicycle", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,7474170] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476880] , [OSM::Way,7476887] , [OSM::Way,7476888] , [OSM::Way,7476889] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476902] , [OSM::Way,7476906] , [OSM::Way,7476962] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7493799] , [OSM::Way,7493909] , [OSM::Way,7493911] , [OSM::Way,7493917] , [OSM::Way,7493920] , [OSM::Way,7493930] , [OSM::Way,7493933] , [OSM::Way,7493947] , [OSM::Way,7493977] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494629] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494687] , [OSM::Way,7494716] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,8035189] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137701] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138641] , [OSM::Way,27138646] , [OSM::Way,27138647]], :id  => 33000, :version => 3, :visible => true, :changeset => 654618, "created_by" => "JOSM", "network" => "lcn", "ref" => "3", "route" => "bicycle", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,7474170] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476880] , [OSM::Way,7476887] , [OSM::Way,7476888] , [OSM::Way,7476889] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476902] , [OSM::Way,7476906] , [OSM::Way,7476962] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491752] , [OSM::Way,7491758] , [OSM::Way,7491768] , [OSM::Way,7491771] , [OSM::Way,7493799] , [OSM::Way,7493909] , [OSM::Way,7493911] , [OSM::Way,7493917] , [OSM::Way,7493920] , [OSM::Way,7493930] , [OSM::Way,7493933] , [OSM::Way,7493947] , [OSM::Way,7493977] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494629] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494687] , [OSM::Way,7494716] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,7496303] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496726] , [OSM::Way,7496732] , [OSM::Way,7496734] , [OSM::Way,7496735] , [OSM::Way,7496737] , [OSM::Way,7496751] , [OSM::Way,7496752] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7496768] , [OSM::Way,7496775] , [OSM::Way,7496776] , [OSM::Way,7497889] , [OSM::Way,7497893] , [OSM::Way,7497898] , [OSM::Way,7497901] , [OSM::Way,7497909] , [OSM::Way,7497910] , [OSM::Way,7497913] , [OSM::Way,7499596] , [OSM::Way,7499653] , [OSM::Way,7499687] , [OSM::Way,7499726] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500037] , [OSM::Way,7500041] , [OSM::Way,7500045] , [OSM::Way,7500072] , [OSM::Way,7500243] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500305] , [OSM::Way,7500346] , [OSM::Way,7500410] , [OSM::Way,7500431] , [OSM::Way,7500442] , [OSM::Way,7500464] , [OSM::Way,8035189] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137701] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138641] , [OSM::Way,27138646] , [OSM::Way,27138647]], :id  => 33000, :version => 4, :visible => true, :changeset => 654618, "created_by" => "JOSM", "network" => "lcn", "ref" => "3", "route" => "bicycle", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,7474170] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476880] , [OSM::Way,7476887] , [OSM::Way,7476888] , [OSM::Way,7476889] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476902] , [OSM::Way,7476906] , [OSM::Way,7476962] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491752] , [OSM::Way,7491758] , [OSM::Way,7491768] , [OSM::Way,7491771] , [OSM::Way,7493799] , [OSM::Way,7493909] , [OSM::Way,7493911] , [OSM::Way,7493917] , [OSM::Way,7493920] , [OSM::Way,7493930] , [OSM::Way,7493933] , [OSM::Way,7493947] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494629] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494687] , [OSM::Way,7494716] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,7496303] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496726] , [OSM::Way,7496732] , [OSM::Way,7496734] , [OSM::Way,7496735] , [OSM::Way,7496737] , [OSM::Way,7496751] , [OSM::Way,7496752] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7496768] , [OSM::Way,7496775] , [OSM::Way,7496776] , [OSM::Way,7497889] , [OSM::Way,7497893] , [OSM::Way,7497898] , [OSM::Way,7497901] , [OSM::Way,7497909] , [OSM::Way,7497910] , [OSM::Way,7497913] , [OSM::Way,7499596] , [OSM::Way,7499653] , [OSM::Way,7499687] , [OSM::Way,7499726] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500037] , [OSM::Way,7500041] , [OSM::Way,7500045] , [OSM::Way,7500072] , [OSM::Way,7500243] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500305] , [OSM::Way,7500346] , [OSM::Way,7500410] , [OSM::Way,7500431] , [OSM::Way,7500442] , [OSM::Way,7500464] , [OSM::Way,8035189] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137701] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138641] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829]], :id  => 33000, :version => 5, :visible => true, :changeset => 680711, "created_by" => "JOSM", "network" => "lcn", "ref" => "3", "route" => "bicycle", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,7474170] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476880] , [OSM::Way,7476887] , [OSM::Way,7476888] , [OSM::Way,7476889] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476902] , [OSM::Way,7476906] , [OSM::Way,7476962] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491752] , [OSM::Way,7491758] , [OSM::Way,7491768] , [OSM::Way,7491771] , [OSM::Way,7493799] , [OSM::Way,7493909] , [OSM::Way,7493911] , [OSM::Way,7493917] , [OSM::Way,7493920] , [OSM::Way,7493930] , [OSM::Way,7493933] , [OSM::Way,7493947] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494629] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494687] , [OSM::Way,7494716] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,7496303] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496726] , [OSM::Way,7496732] , [OSM::Way,7496734] , [OSM::Way,7496735] , [OSM::Way,7496737] , [OSM::Way,7496751] , [OSM::Way,7496752] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7496768] , [OSM::Way,7496775] , [OSM::Way,7496776] , [OSM::Way,7497889] , [OSM::Way,7497893] , [OSM::Way,7497898] , [OSM::Way,7497901] , [OSM::Way,7497909] , [OSM::Way,7497910] , [OSM::Way,7497913] , [OSM::Way,7499596] , [OSM::Way,7499653] , [OSM::Way,7499687] , [OSM::Way,7499726] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500037] , [OSM::Way,7500041] , [OSM::Way,7500045] , [OSM::Way,7500072] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035189] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137701] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138641] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829]], :id  => 33000, :version => 6, :visible => true, :changeset => 833764, "created_by" => "JOSM", "network" => "lcn", "ref" => "3", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,7474170] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476880] , [OSM::Way,7476887] , [OSM::Way,7476888] , [OSM::Way,7476889] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476902] , [OSM::Way,7476906] , [OSM::Way,7476962] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491752] , [OSM::Way,7491758] , [OSM::Way,7491768] , [OSM::Way,7491771] , [OSM::Way,7493799] , [OSM::Way,7493909] , [OSM::Way,7493911] , [OSM::Way,7493917] , [OSM::Way,7493920] , [OSM::Way,7493930] , [OSM::Way,7493933] , [OSM::Way,7493947] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494629] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494687] , [OSM::Way,7494716] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,7496303] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496726] , [OSM::Way,7496732] , [OSM::Way,7496734] , [OSM::Way,7496735] , [OSM::Way,7496737] , [OSM::Way,7496751] , [OSM::Way,7496752] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7496768] , [OSM::Way,7496775] , [OSM::Way,7496776] , [OSM::Way,7497889] , [OSM::Way,7497893] , [OSM::Way,7497898] , [OSM::Way,7497901] , [OSM::Way,7497909] , [OSM::Way,7497910] , [OSM::Way,7497913] , [OSM::Way,7499596] , [OSM::Way,7499653] , [OSM::Way,7499687] , [OSM::Way,7499726] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500037] , [OSM::Way,7500041] , [OSM::Way,7500045] , [OSM::Way,7500072] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035189] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137701] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138641] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829]], :id  => 33000, :version => 7, :visible => true, :changeset => 836068, "created_by" => "JOSM", "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,7474170] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476880] , [OSM::Way,7476887] , [OSM::Way,7476888] , [OSM::Way,7476889] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476902] , [OSM::Way,7476906] , [OSM::Way,7476962] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491752] , [OSM::Way,7491758] , [OSM::Way,7491768] , [OSM::Way,7491771] , [OSM::Way,7493799] , [OSM::Way,7493909] , [OSM::Way,7493911] , [OSM::Way,7493917] , [OSM::Way,7493920] , [OSM::Way,7493930] , [OSM::Way,7493933] , [OSM::Way,7493947] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,7496303] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496726] , [OSM::Way,7496732] , [OSM::Way,7496734] , [OSM::Way,7496735] , [OSM::Way,7496737] , [OSM::Way,7496751] , [OSM::Way,7496752] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7496768] , [OSM::Way,7496775] , [OSM::Way,7496776] , [OSM::Way,7497889] , [OSM::Way,7497893] , [OSM::Way,7497898] , [OSM::Way,7497901] , [OSM::Way,7497909] , [OSM::Way,7497910] , [OSM::Way,7497913] , [OSM::Way,7499596] , [OSM::Way,7499653] , [OSM::Way,7499687] , [OSM::Way,7499726] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500037] , [OSM::Way,7500041] , [OSM::Way,7500045] , [OSM::Way,7500072] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035189] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137701] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138641] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829]], :id  => 33000, :version => 8, :visible => true, :changeset => 805984, "created_by" => "JOSM", "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,7474170] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476880] , [OSM::Way,7476887] , [OSM::Way,7476888] , [OSM::Way,7476889] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476902] , [OSM::Way,7476906] , [OSM::Way,7476962] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493909] , [OSM::Way,7493911] , [OSM::Way,7493917] , [OSM::Way,7493920] , [OSM::Way,7493930] , [OSM::Way,7493933] , [OSM::Way,7493947] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,7496303] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496726] , [OSM::Way,7496732] , [OSM::Way,7496734] , [OSM::Way,7496735] , [OSM::Way,7496737] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7496768] , [OSM::Way,7496775] , [OSM::Way,7497889] , [OSM::Way,7497893] , [OSM::Way,7497898] , [OSM::Way,7497901] , [OSM::Way,7497909] , [OSM::Way,7497910] , [OSM::Way,7499596] , [OSM::Way,7499653] , [OSM::Way,7499687] , [OSM::Way,7499726] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500037] , [OSM::Way,7500041] , [OSM::Way,7500045] , [OSM::Way,7500072] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035189] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137701] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138641] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829]], :id  => 33000, :version => 9, :visible => true, :changeset => 440414, "created_by" => "JOSM", "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,7474170] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476880] , [OSM::Way,7476887] , [OSM::Way,7476888] , [OSM::Way,7476889] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476902] , [OSM::Way,7476906] , [OSM::Way,7476962] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493909] , [OSM::Way,7493911] , [OSM::Way,7493917] , [OSM::Way,7493920] , [OSM::Way,7493930] , [OSM::Way,7493933] , [OSM::Way,7493947] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499653] , [OSM::Way,7499687] , [OSM::Way,7499726] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500037] , [OSM::Way,7500041] , [OSM::Way,7500045] , [OSM::Way,7500072] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035189] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137701] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138641] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829]], :id  => 33000, :version => 10, :visible => true, :changeset => 440414, "created_by" => "JOSM", "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,7474170] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476880] , [OSM::Way,7476887] , [OSM::Way,7476888] , [OSM::Way,7476889] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476902] , [OSM::Way,7476906] , [OSM::Way,7476962] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493909] , [OSM::Way,7493911] , [OSM::Way,7493917] , [OSM::Way,7493920] , [OSM::Way,7493930] , [OSM::Way,7493933] , [OSM::Way,7493947] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499653] , [OSM::Way,7499687] , [OSM::Way,7499726] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500037] , [OSM::Way,7500041] , [OSM::Way,7500045] , [OSM::Way,7500072] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035189] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138641] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694]], :id  => 33000, :version => 11, :visible => true, :changeset => 2093818, "created_by" => "JOSM", "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,7474170] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476880] , [OSM::Way,7476887] , [OSM::Way,7476888] , [OSM::Way,7476889] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476902] , [OSM::Way,7476906] , [OSM::Way,7476962] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493909] , [OSM::Way,7493911] , [OSM::Way,7493917] , [OSM::Way,7493920] , [OSM::Way,7493930] , [OSM::Way,7493933] , [OSM::Way,7493947] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499653] , [OSM::Way,7499687] , [OSM::Way,7499726] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500037] , [OSM::Way,7500041] , [OSM::Way,7500045] , [OSM::Way,7500072] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035189] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138641] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685]], :id  => 33000, :version => 12, :visible => true, :changeset => 2105710, "created_by" => "JOSM", "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,7474170] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476880] , [OSM::Way,7476887] , [OSM::Way,7476888] , [OSM::Way,7476889] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476902] , [OSM::Way,7476906] , [OSM::Way,7476962] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493909] , [OSM::Way,7493911] , [OSM::Way,7493917] , [OSM::Way,7493920] , [OSM::Way,7493930] , [OSM::Way,7493933] , [OSM::Way,7493947] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499653] , [OSM::Way,7499687] , [OSM::Way,7499726] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500037] , [OSM::Way,7500041] , [OSM::Way,7500045] , [OSM::Way,7500072] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035189] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138641] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481]], :id  => 33000, :version => 13, :visible => true, :changeset => 2118233, "created_by" => "JOSM", "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,7474170] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476880] , [OSM::Way,7476887] , [OSM::Way,7476888] , [OSM::Way,7476889] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476902] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499653] , [OSM::Way,7499687] , [OSM::Way,7499726] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500037] , [OSM::Way,7500041] , [OSM::Way,7500045] , [OSM::Way,7500072] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,7493947] , [OSM::Way,7493917] , [OSM::Way,7493930]], :id  => 33000, :version => 14, :visible => true, :changeset => 3172525, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476888] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499653] , [OSM::Way,7499687] , [OSM::Way,7499726] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500037] , [OSM::Way,7500041] , [OSM::Way,7500045] , [OSM::Way,7500072] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,7493947] , [OSM::Way,7493930]], :id  => 33000, :version => 15, :visible => true, :changeset => 5137225, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476888] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499653] , [OSM::Way,7499687] , [OSM::Way,7499726] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500037] , [OSM::Way,7500041] , [OSM::Way,7500045] , [OSM::Way,7500072] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,7493947] , [OSM::Way,7493930]], :id  => 33000, :version => 16, :visible => true, :changeset => 5137225, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476888] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499653] , [OSM::Way,7499687] , [OSM::Way,7499726] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500037] , [OSM::Way,7500041] , [OSM::Way,7500045] , [OSM::Way,7500072] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,7493947] , [OSM::Way,7493930] , [OSM::Way,65764351]], :id  => 33000, :version => 17, :visible => true, :changeset => 5137225, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476888] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499653] , [OSM::Way,7499687] , [OSM::Way,7499726] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500037] , [OSM::Way,7500041] , [OSM::Way,7500045] , [OSM::Way,7500072] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,7493947] , [OSM::Way,7493930] , [OSM::Way,65764351]], :id  => 33000, :version => 18, :visible => true, :changeset => 5137225, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7471278] , [OSM::Way,7471288] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476888] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499726] , [OSM::Way,66758379] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,7493947] , [OSM::Way,7493930] , [OSM::Way,65764351]], :id  => 33000, :version => 19, :visible => true, :changeset => 5169235, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476888] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494725] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494779] , [OSM::Way,7494794] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499726] , [OSM::Way,66758379] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,7493947] , [OSM::Way,7493930] , [OSM::Way,65764351]], :id  => 33000, :version => 20, :visible => true, :changeset => 5683015, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476888] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494297] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7494649] , [OSM::Way,7494655] , [OSM::Way,7494751] , [OSM::Way,7494764] , [OSM::Way,7494794] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499726] , [OSM::Way,66758379] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,7493947] , [OSM::Way,7493930] , [OSM::Way,65764351]], :id  => 33000, :version => 21, :visible => true, :changeset => 5684935, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476888] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499726] , [OSM::Way,66758379] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,7493947] , [OSM::Way,7493930] , [OSM::Way,65764351]], :id  => 33000, :version => 22, :visible => true, :changeset => 6508365, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476888] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,95998226] , [OSM::Way,95998220] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499726] , [OSM::Way,66758379] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,7493947] , [OSM::Way,7493930] , [OSM::Way,65764351]], :id  => 33000, :version => 23, :visible => true, :changeset => 7035138, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476888] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,95998226] , [OSM::Way,95998220] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499726] , [OSM::Way,66758379] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,7493947] , [OSM::Way,7493930] , [OSM::Way,100707581] , [OSM::Way,100707590] , [OSM::Way,65764351]], :id  => 33000, :version => 24, :visible => true, :changeset => 7346511, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476888] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,95998226] , [OSM::Way,95998220] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,7494300] , [OSM::Way,7494320] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499726] , [OSM::Way,66758379] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,8035191] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,7493947] , [OSM::Way,100871999] , [OSM::Way,100707581] , [OSM::Way,100872029] , [OSM::Way,100707590] , [OSM::Way,65764351]], :id  => 33000, :version => 25, :visible => true, :changeset => 7357961, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476888] , [OSM::Way,7476891] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,95998226] , [OSM::Way,95998220] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,100876522] , [OSM::Way,100876537] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499726] , [OSM::Way,66758379] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,100876512] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,100876531] , [OSM::Way,100871999] , [OSM::Way,100707581] , [OSM::Way,100872029] , [OSM::Way,100707590] , [OSM::Way,65764351]], :id  => 33000, :version => 26, :visible => true, :changeset => 7357961, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476888] , [OSM::Way,7476891] , [OSM::Way,122563397] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,95998226] , [OSM::Way,95998220] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,100876522] , [OSM::Way,100876537] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499726] , [OSM::Way,66758379] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500257] , [OSM::Way,7500295] , [OSM::Way,7500346] , [OSM::Way,7500431] , [OSM::Way,7500464] , [OSM::Way,100876512] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,100876531] , [OSM::Way,100871999] , [OSM::Way,100707581] , [OSM::Way,100872029] , [OSM::Way,100707590] , [OSM::Way,65764351]], :id  => 33000, :version => 27, :visible => true, :changeset => 8790793, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,123520061] , [OSM::Way,123520073] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,7476888] , [OSM::Way,7476891] , [OSM::Way,122563397] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,95998226] , [OSM::Way,95998220] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,100876522] , [OSM::Way,100876537] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,7494568] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499726] , [OSM::Way,66758379] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500431] , [OSM::Way,100876512] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,100876531] , [OSM::Way,100871999] , [OSM::Way,100707581] , [OSM::Way,100872029] , [OSM::Way,100707590] , [OSM::Way,65764351]], :id  => 33000, :version => 28, :visible => true, :changeset => 8858736, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,123520061] , [OSM::Way,123520073] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,122563397] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,95998226] , [OSM::Way,95998220] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,100876522] , [OSM::Way,100876537] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,129481693] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499726] , [OSM::Way,66758379] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500431] , [OSM::Way,100876512] , [OSM::Way,23082407] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27137702] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,27256829] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,100876531] , [OSM::Way,100871999] , [OSM::Way,100707581] , [OSM::Way,100872029] , [OSM::Way,100707590] , [OSM::Way,65764351]], :id  => 33000, :version => 29, :visible => true, :changeset => 9259095, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,130801132] , [OSM::Way,123520061] , [OSM::Way,123520073] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,122563397] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,95998226] , [OSM::Way,95998220] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,100876522] , [OSM::Way,100876537] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,129481693] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499726] , [OSM::Way,66758379] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500431] , [OSM::Way,100876512] , [OSM::Way,130801136] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,38805694] , [OSM::Way,7501096] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,100876531] , [OSM::Way,100871999] , [OSM::Way,100707581] , [OSM::Way,100872029] , [OSM::Way,100707590] , [OSM::Way,65764351]], :id  => 33000, :version => 30, :visible => true, :changeset => 9364515, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,130801132] , [OSM::Way,123520061] , [OSM::Way,123520073] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,122563397] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,95998226] , [OSM::Way,95998220] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,100876522] , [OSM::Way,100876537] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,129481693] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499726] , [OSM::Way,66758379] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500431] , [OSM::Way,100876512] , [OSM::Way,130801136] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,38805694] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,100876531] , [OSM::Way,100871999] , [OSM::Way,100707581] , [OSM::Way,100872029] , [OSM::Way,100707590] , [OSM::Way,65764351]], :id  => 33000, :version => 31, :visible => true, :changeset => 9464565, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,130801132] , [OSM::Way,123520061] , [OSM::Way,123520073] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,122563397] , [OSM::Way,133399291] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,95998226] , [OSM::Way,95998220] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,100876522] , [OSM::Way,100876537] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,129481693] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499726] , [OSM::Way,66758379] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500431] , [OSM::Way,100876512] , [OSM::Way,130801136] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,38805694] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,100876531] , [OSM::Way,100871999] , [OSM::Way,100707581] , [OSM::Way,100872029] , [OSM::Way,100707590] , [OSM::Way,65764351]], :id  => 33000, :version => 32, :visible => true, :changeset => 9565882, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,130801132] , [OSM::Way,123520061] , [OSM::Way,123520073] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,122563397] , [OSM::Way,133399291] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,95998226] , [OSM::Way,95998220] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,100876522] , [OSM::Way,100876537] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,129481693] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499726] , [OSM::Way,66758379] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500431] , [OSM::Way,100876512] , [OSM::Way,130801136] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,38805694] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,100876531] , [OSM::Way,100871999] , [OSM::Way,100707581] , [OSM::Way,100872029] , [OSM::Way,100707590] , [OSM::Way,65764351]], :id  => 33000, :version => 33, :visible => true, :changeset => 9987374, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,130801132] , [OSM::Way,123520061] , [OSM::Way,123520073] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,122563397] , [OSM::Way,133399291] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,95998226] , [OSM::Way,95998220] , [OSM::Way,140763319] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,100876522] , [OSM::Way,100876537] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,129481693] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499726] , [OSM::Way,66758379] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500431] , [OSM::Way,100876512] , [OSM::Way,130801136] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,38805694] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,100876531] , [OSM::Way,100871999] , [OSM::Way,100707581] , [OSM::Way,100872029] , [OSM::Way,100707590] , [OSM::Way,65764351]], :id  => 33000, :version => 34, :visible => true, :changeset => 10093629, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,130801132] , [OSM::Way,123520061] , [OSM::Way,123520073] , [OSM::Way,7474331] , [OSM::Way,7474420] , [OSM::Way,7474421] , [OSM::Way,7476639] , [OSM::Way,122563397] , [OSM::Way,133399291] , [OSM::Way,7476892] , [OSM::Way,7476894] , [OSM::Way,7476906] , [OSM::Way,7477121] , [OSM::Way,7477176] , [OSM::Way,7477239] , [OSM::Way,7491352] , [OSM::Way,7491768] , [OSM::Way,7493799] , [OSM::Way,7493977] , [OSM::Way,95998226] , [OSM::Way,95998220] , [OSM::Way,140763319] , [OSM::Way,7494097] , [OSM::Way,7494271] , [OSM::Way,7494276] , [OSM::Way,100876522] , [OSM::Way,100876537] , [OSM::Way,7494368] , [OSM::Way,7494567] , [OSM::Way,129481693] , [OSM::Way,7496333] , [OSM::Way,7496572] , [OSM::Way,7496732] , [OSM::Way,7496751] , [OSM::Way,144078431] , [OSM::Way,144078433] , [OSM::Way,7496760] , [OSM::Way,7496767] , [OSM::Way,7497898] , [OSM::Way,7497909] , [OSM::Way,7499596] , [OSM::Way,7499726] , [OSM::Way,66758379] , [OSM::Way,7499743] , [OSM::Way,7499763] , [OSM::Way,7499799] , [OSM::Way,7499855] , [OSM::Way,7499859] , [OSM::Way,7500431] , [OSM::Way,100876512] , [OSM::Way,130801136] , [OSM::Way,25092558] , [OSM::Way,27137525] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,38805694] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,100876531] , [OSM::Way,100871999] , [OSM::Way,100707581] , [OSM::Way,100872029] , [OSM::Way,100707590] , [OSM::Way,65764351]], :id  => 33000, :version => 35, :visible => true, :changeset => 10290318, "lcn" => "yes", "lcn_ref" => "3", "network" => "lcn", "route" => "bicycle", "type" => "route"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Relation[[[OSM::Way,123520061] , [OSM::Way,123520073] , [OSM::Way,122563397] , [OSM::Way,133399291] , [OSM::Way,95998226] , [OSM::Way,95998220] , [OSM::Way,140763319] , [OSM::Way,100876522] , [OSM::Way,100876537] , [OSM::Way,129481693] , [OSM::Way,144078431] , [OSM::Way,144078433] , [OSM::Way,66758379] , [OSM::Way,100876512] , [OSM::Way,130801136] , [OSM::Way,27138639] , [OSM::Way,27138646] , [OSM::Way,27138647] , [OSM::Way,38805694] , [OSM::Way,38863685] , [OSM::Way,38911480] , [OSM::Way,38911481] , [OSM::Way,100876531] , [OSM::Way,100871999] , [OSM::Way,100707581] , [OSM::Way,100872029] , [OSM::Way,100707590] , [OSM::Way,65764351]], :id  => 33000, :version => 35, :visible => true, :changeset => -1, "lcn" => "yes", "lcn_ref" => "3", "type" => "route"]],
                  Redact[OSM::Relation, 33000, 1, :hidden],
                  Redact[OSM::Relation, 33000, 2, :hidden],
                  Redact[OSM::Relation, 33000, 3, :hidden],
                  Redact[OSM::Relation, 33000, 4, :hidden],
                  Redact[OSM::Relation, 33000, 5, :hidden],
                  Redact[OSM::Relation, 33000, 6, :visible],
                  Redact[OSM::Relation, 33000, 7, :visible],
                  Redact[OSM::Relation, 33000, 8, :visible],
                  Redact[OSM::Relation, 33000, 9, :visible],
                  Redact[OSM::Relation, 33000, 10, :visible],
                  Redact[OSM::Relation, 33000, 11, :visible],
                  Redact[OSM::Relation, 33000, 12, :visible],
                  Redact[OSM::Relation, 33000, 13, :visible],
                  Redact[OSM::Relation, 33000, 14, :visible],
                  Redact[OSM::Relation, 33000, 15, :visible],
                  Redact[OSM::Relation, 33000, 16, :visible],
                  Redact[OSM::Relation, 33000, 17, :visible],
                  Redact[OSM::Relation, 33000, 18, :visible],
                  Redact[OSM::Relation, 33000, 19, :visible],
                  Redact[OSM::Relation, 33000, 20, :visible],
                  Redact[OSM::Relation, 33000, 21, :visible],
                  Redact[OSM::Relation, 33000, 22, :visible],
                  Redact[OSM::Relation, 33000, 23, :visible],
                  Redact[OSM::Relation, 33000, 24, :visible],
                  Redact[OSM::Relation, 33000, 25, :visible],
                  Redact[OSM::Relation, 33000, 26, :visible],
                  Redact[OSM::Relation, 33000, 27, :visible],
                  Redact[OSM::Relation, 33000, 28, :visible],
                  Redact[OSM::Relation, 33000, 29, :visible],
                  Redact[OSM::Relation, 33000, 30, :visible],
                  Redact[OSM::Relation, 33000, 31, :visible],
                  Redact[OSM::Relation, 33000, 32, :visible],
                  Redact[OSM::Relation, 33000, 33, :visible],
                  Redact[OSM::Relation, 33000, 34, :visible]
                 ], actions)
  end

  # auto-generated test for relation 37000
  # http://wtfe.gryph.de/report/relation/37000
  # http://osm.mapki.com/history/relation.php?id=37000
  def test_automatic_relation37000
    history = [OSM::Relation[[[OSM::Node,303226673]], :id  => 37000, :version => 1, :visible => true, :changeset => 266929, "created_by" => "Potlatch 0.10d", "type" => "Stationary speed meter"],    # agreed,
               OSM::Relation[[[OSM::Node,303226673] , [OSM::Node,303226812]], :id  => 37000, :version => 2, :visible => true, :changeset => 266929, "created_by" => "Potlatch 0.10d", "type" => "Stationary speed meter"],    # agreed,
               OSM::Relation[[[OSM::Node,303226673] , [OSM::Node,303226812] , [OSM::Way,28741375]], :id  => 37000, :version => 3, :visible => true, :changeset => 7074, "created_by" => "Potlatch 0.10f", "type" => "Stationary speed meter"],    # not agreed,
               OSM::Relation[[[OSM::Node,303226673] , [OSM::Node,303226812]], :id  => 37000, :version => 4, :visible => true, :changeset => 7074, "created_by" => "Potlatch 0.10f", "type" => "Stationary speed meter"],    # not agreed,
               OSM::Relation[[[OSM::Node,303226673] , [OSM::Node,303226812]], :id  => 37000, :version => 5, :visible => true, :changeset => 550248, "created_by" => "Potlatch 0.10f", "type" => "Stationary speed meter"],    # agreed,
               OSM::Relation[[[OSM::Node,303226673,"device"]], :id  => 37000, :version => 6, :visible => true, :changeset => 3921640, "FIXME" => "incomplete relation", "enforcement" => "maxspeed", "maxspeed" => "50", "type" => "enforcement"],    # agreed,
               OSM::Relation[[[OSM::Node,303226673,"device"] , [OSM::Node,32328002,"to"] , [OSM::Node,43238131,"from"]], :id  => 37000, :version => 7, :visible => true, :changeset => 6017845, "enforcement" => "maxspeed", "maxspeed" => "50", "type" => "enforcement"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([
                  Redact[OSM::Relation, 37000, 3, :hidden],
                 ], actions) # decliner undid his own edit
  end

  # auto-generated test for relation 51000
  # http://wtfe.gryph.de/report/relation/51000
  # http://osm.mapki.com/history/relation.php?id=51000
  def test_automatic_relation51000
    history = [OSM::Relation[[[OSM::Node,36159957,"via"] , [OSM::Way,5184781,"from"] , [OSM::Way,28362650,"to"]], :id  => 51000, :version => 1, :visible => true, :changeset => 738025, "restriction" => "no_left_turn", "type" => "restriction"],    # agreed,
               OSM::Relation[[[OSM::Node,36159957,"via"] , [OSM::Way,28362650,"to"]], :id  => 51000, :version => 2, :visible => true, :changeset => 3624661, "restriction" => "no_left_turn", "type" => "restriction"],    # agreed,
               OSM::Relation[[[OSM::Node,36159957,"via"] , [OSM::Way,28362650,"to"] , [OSM::Way,5184781,"from"]], :id  => 51000, :version => 3, :visible => true, :changeset => 3624661, "restriction" => "no_left_turn", "type" => "restriction"],    # agreed,
               OSM::Relation[[[OSM::Node,36159957,"via"] , [OSM::Way,5184781,"from"] , [OSM::Way,28362652,"to"]], :id  => 51000, :version => 4, :visible => true, :changeset => 3650434, "restriction" => "only_right_turn", "type" => "restriction"],    # agreed,
               OSM::Relation[[[OSM::Node,36159957,"via"]], :id  => 51000, :version => 5, :visible => true, :changeset => 4489624, "restriction" => "only_right_turn", "type" => "restriction"],    # not agreed,
               OSM::Relation[[[OSM::Node,36159957,"via"] , [OSM::Way,5184781,"from"] , [OSM::Way,28362652,"to"]], :id  => 51000, :version => 6, :visible => true, :changeset => 4490951, "restriction" => "only_right_turn", "type" => "restriction"],    # agreed,
               OSM::Relation[[[OSM::Node,36159957,"via"] , [OSM::Way,28362652,"to"]], :id  => 51000, :version => 7, :visible => true, :changeset => 4501958, "restriction" => "only_right_turn", "type" => "restriction"],    # not agreed,
               OSM::Relation[[[OSM::Node,36159957,"via"]], :id  => 51000, :version => 8, :visible => true, :changeset => 4501958, "restriction" => "only_right_turn", "type" => "restriction"],    # not agreed,
               OSM::Relation[[], :id  => 51000, :version => 9, :visible => true, :changeset => 4501958],    # not agreed,
               OSM::Relation[[[OSM::Node,36159957,"via"] , [OSM::Way,5184781,"from"] , [OSM::Way,28362652,"to"]], :id  => 51000, :version => 10, :visible => true, :changeset => 4502478, "restriction" => "only_right_turn", "type" => "restriction"],    # agreed,
               OSM::Relation[[[OSM::Node,36159957,"via"] , [OSM::Way,5184781,"from"]], :id  => 51000, :version => 11, :visible => true, :changeset => 4527004, "restriction" => "only_right_turn", "type" => "restriction"],    # not agreed,
               OSM::Relation[[[OSM::Node,36159957,"via"] , [OSM::Way,5184781,"from"]], :id  => 51000, :version => 12, :visible => true, :changeset => 4527004, "restriction" => "only_right_turn", "type" => "restriction"],    # not agreed,
               OSM::Relation[[[OSM::Node,36159957,"via"] , [OSM::Way,5184781,"from"] , [OSM::Way,28362652,"to"]], :id  => 51000, :version => 13, :visible => true, :changeset => 4529837, "restriction" => "only_right_turn", "type" => "restriction"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([ ], actions) # decliner only ever deleted stuff
  end

  # auto-generated test for relation 62000
  # http://wtfe.gryph.de/report/relation/62000
  # http://osm.mapki.com/history/relation.php?id=62000
  def test_automatic_relation62000
    history = [OSM::Relation[[[OSM::Way,29336166]], :id  => 62000, :version => 1, :visible => true, :changeset => 672011, "admin_level" => "6", "boundary" => "administrative", "created_by" => "Potlatch 0.10f", "name" => "Grand Isle County", "type" => "boundary"],    # agreed,
               OSM::Relation[[[OSM::Way,29336166] , [OSM::Way,29377987]], :id  => 62000, :version => 2, :visible => true, :changeset => 672011, "admin_level" => "6", "boundary" => "administrative", "created_by" => "Potlatch 0.10f", "name" => "Grand Isle County", "type" => "boundary"],    # agreed,
               OSM::Relation[[[OSM::Way,9650915] , [OSM::Way,29336166] , [OSM::Way,29377987]], :id  => 62000, :version => 3, :visible => true, :changeset => 672011, "admin_level" => "6", "boundary" => "administrative", "created_by" => "Potlatch 0.10f", "name" => "Grand Isle County", "type" => "boundary"],    # agreed,
               OSM::Relation[[[OSM::Way,9650915] , [OSM::Way,29336166] , [OSM::Way,29377987] , [OSM::Way,29335519]], :id  => 62000, :version => 4, :visible => true, :changeset => 2540828, "admin_level" => "6", "boundary" => "administrative", "created_by" => "Potlatch 0.10f", "name" => "Grand Isle County", "type" => "boundary"],    # not agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Relation[[[OSM::Way,9650915] , [OSM::Way,29336166] , [OSM::Way,29377987]], :id  => 62000, :version => 4, :visible => true, :changeset => -1, "admin_level" => "6", "boundary" => "administrative", "created_by" => "Potlatch 0.10f", "name" => "Grand Isle County", "type" => "boundary"]],
                  Redact[OSM::Relation, 62000, 4, :hidden]
                 ], actions)
  end

  # auto-generated test for relation 78000
  # http://wtfe.gryph.de/report/relation/78000
  # http://osm.mapki.com/history/relation.php?id=78000
  def test_automatic_relation78000
    history = [OSM::Relation[[[OSM::Way,30888625] , [OSM::Way,30889339] , [OSM::Way,31097743] , [OSM::Way,31097757]], :id  => 78000, :version => 1, :visible => true, :changeset => 448744, "admin_level" => "8", "boundary" => "administrative", "name" => "Torcy", "type" => "boundary"],    # not agreed,
               OSM::Relation[[[OSM::Way,30888625] , [OSM::Way,30889339] , [OSM::Way,31097743] , [OSM::Way,31097757]], :id  => 78000, :version => 2, :visible => true, :changeset => 2862516, "addr:postcode" => "71210", "addr:postcode_source" => "source of postcode is from osm nodes", "admin_level" => "8", "boundary" => "administrative", "name" => "Torcy", "ref" => "71540", "ref_source" => "source of ref is from osm nodes", "type" => "boundary"],    # agreed,
               OSM::Relation[[[OSM::Way,30888625] , [OSM::Way,30889339] , [OSM::Way,31097743] , [OSM::Way,31097757]], :id  => 78000, :version => 3, :visible => true, :changeset => 2982068, "addr:postcode" => "71210", "admin_level" => "8", "boundary" => "administrative", "name" => "Torcy", "ref:INSEE" => "71540", "source:addr:postcode" => "source of postcode is from osm nodes", "source:ref:INSEE" => "source of ref is from osm nodes", "type" => "boundary"],    # agreed,
               OSM::Relation[[[OSM::Way,30888625] , [OSM::Way,52172407] , [OSM::Way,30889339] , [OSM::Way,31097757] , [OSM::Way,31097743]], :id  => 78000, :version => 4, :visible => true, :changeset => 4107952, "addr:postcode" => "71210", "admin_level" => "8", "boundary" => "administrative", "name" => "Torcy", "ref:INSEE" => "71540", "source:addr:postcode" => "source of postcode is from osm nodes", "source:ref:INSEE" => "source of ref is from osm nodes", "type" => "boundary"],    # agreed,
               OSM::Relation[[[OSM::Way,30888625] , [OSM::Way,52172407] , [OSM::Way,30889339] , [OSM::Way,31097757] , [OSM::Way,52458764] , [OSM::Way,31097743]], :id  => 78000, :version => 5, :visible => true, :changeset => 4135649, "addr:postcode" => "71210", "admin_level" => "8", "boundary" => "administrative", "name" => "Torcy", "ref:INSEE" => "71540", "source:addr:postcode" => "source of postcode is from osm nodes", "source:ref:INSEE" => "source of ref is from osm nodes", "type" => "boundary"],    # agreed,
               OSM::Relation[[[OSM::Way,30888625] , [OSM::Way,52172407] , [OSM::Way,30889339] , [OSM::Way,31097757] , [OSM::Way,52507250] , [OSM::Way,52458764] , [OSM::Way,31097743]], :id  => 78000, :version => 6, :visible => true, :changeset => 4143104, "addr:postcode" => "71210", "admin_level" => "8", "boundary" => "administrative", "name" => "Torcy", "ref:INSEE" => "71540", "source:addr:postcode" => "source of postcode is from osm nodes", "source:ref:INSEE" => "source of ref is from osm nodes", "type" => "boundary"],    # agreed,
               OSM::Relation[[[OSM::Way,154906591] , [OSM::Way,31097757] , [OSM::Way,52507250] , [OSM::Way,52458764] , [OSM::Way,31097743] , [OSM::Way,30888625] , [OSM::Way,52172407]], :id  => 78000, :version => 7, :visible => true, :changeset => 10969613, "addr:postcode" => "71210", "admin_level" => "8", "boundary" => "administrative", "name" => "Torcy", "ref:INSEE" => "71540", "source:addr:postcode" => "source of postcode is from osm nodes", "source:ref:INSEE" => "source of ref is from osm nodes", "type" => "boundary"],    # agreed,
               OSM::Relation[[[OSM::Way,155406698] , [OSM::Way,155406701] , [OSM::Way,155406686] , [OSM::Way,155406681] , [OSM::Way,155406694] , [OSM::Way,155406691] , [OSM::Way,155406689] , [OSM::Node,26695629,"admin_centre"]], :id  => 78000, :version => 8, :visible => true, :changeset => 11005565, "addr:postcode" => "71210", "admin_level" => "8", "boundary" => "administrative", "name" => "Torcy", "ref:INSEE" => "71540", "source:addr:postcode" => "source of postcode is from osm nodes", "source:ref:INSEE" => "source of ref is from osm nodes", "type" => "boundary"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Edit[OSM::Relation[[[OSM::Way,155406698] , [OSM::Way,155406701] , [OSM::Way,155406686] , [OSM::Way,155406681] , [OSM::Way,155406694] , [OSM::Way,155406691] , [OSM::Way,155406689] , [OSM::Node,26695629,"admin_centre"]], :id  => 78000, :version => 8, :visible => true, :changeset => -1, "addr:postcode" => "71210", "ref:INSEE" => "71540", "source:addr:postcode" => "source of postcode is from osm nodes", "source:ref:INSEE" => "source of ref is from osm nodes", "type" => "boundary"]],
                  Delete[OSM::Relation, 78000],
                  Redact[OSM::Relation, 78000, 1, :hidden],
                  Redact[OSM::Relation, 78000, 2, :visible],
                  Redact[OSM::Relation, 78000, 3, :visible],
                  Redact[OSM::Relation, 78000, 4, :visible],
                  Redact[OSM::Relation, 78000, 5, :visible],
                  Redact[OSM::Relation, 78000, 6, :visible],
                  Redact[OSM::Relation, 78000, 7, :visible],
                  Redact[OSM::Relation, 78000, 8, :visible]
                 ], actions)
  end

  # auto-generated test for relation 99000
  # http://wtfe.gryph.de/report/relation/99000
  # http://osm.mapki.com/history/relation.php?id=99000
  def test_automatic_relation99000
    history = [OSM::Relation[[[OSM::Way,31711914,"outer"] , [OSM::Way,31773312,"outer"] , [OSM::Way,31971667,"outer"] , [OSM::Way,32249943,"outer"] , [OSM::Way,32289794,"outer"] , [OSM::Way,32294688,"outer"] , [OSM::Way,32294692,"outer"] , [OSM::Way,32294694,"outer"] , [OSM::Way,32294695,"outer"] , [OSM::Way,32294697,"outer"] , [OSM::Way,32294698,"outer"] , [OSM::Way,32294700,"outer"]], :id  => 99000, :version => 1, :visible => true, :changeset => 830628, "admin_level" => "10", "attribution" => "Based on Australian Bureau of Statistics data", "au.gov.abs:NAME_2006" => "Barron (Cairns City)", "au.gov.abs:SSC_2006" => "35187", "au.gov.abs:STATE_2006" => "3", "au.gov.abs:reviewed" => "no", "boundary" => "administrative", "is_in" => "Queensland, Australia", "name" => "Barron", "old_name" => "Cairns City", "source" => "ABS_2006", "type" => "multipolygon"],    # not agreed,
               OSM::Relation[[[OSM::Way,31711914,"outer"] , [OSM::Way,31773312,"outer"] , [OSM::Way,31971667,"outer"] , [OSM::Way,32249943,"outer"] , [OSM::Way,32289794,"outer"] , [OSM::Way,41663801,"outer"] , [OSM::Way,32294688,"outer"] , [OSM::Way,32294692,"outer"] , [OSM::Way,32294694,"outer"] , [OSM::Way,32294695,"outer"] , [OSM::Way,32294697,"outer"] , [OSM::Way,32294698,"outer"] , [OSM::Way,32294700,"outer"]], :id  => 99000, :version => 2, :visible => true, :changeset => 2662767, "admin_level" => "10", "attribution" => "Based on Australian Bureau of Statistics data", "au.gov.abs:NAME_2006" => "Barron (Cairns City)", "au.gov.abs:SSC_2006" => "35187", "au.gov.abs:STATE_2006" => "3", "au.gov.abs:reviewed" => "no", "boundary" => "administrative", "is_in" => "Queensland, Australia", "name" => "Barron", "old_name" => "Cairns City", "source" => "ABS_2006", "type" => "multipolygon"],    # not agreed,
               OSM::Relation[[[OSM::Way,31711914,"outer"] , [OSM::Way,31773312,"outer"] , [OSM::Way,31971667,"outer"] , [OSM::Way,46655780,"outer"] , [OSM::Way,32249943,"outer"] , [OSM::Way,32289794,"outer"] , [OSM::Way,46655782,"outer"] , [OSM::Way,41663801,"outer"] , [OSM::Way,32294688,"outer"] , [OSM::Way,32294692,"outer"] , [OSM::Way,32294694,"outer"] , [OSM::Way,32294695,"outer"] , [OSM::Way,32294697,"outer"] , [OSM::Way,32294698,"outer"] , [OSM::Way,32294700,"outer"]], :id  => 99000, :version => 3, :visible => true, :changeset => 3406870, "admin_level" => "10", "attribution" => "Based on Australian Bureau of Statistics data", "au.gov.abs:NAME_2006" => "Barron (Cairns City)", "au.gov.abs:SSC_2006" => "35187", "au.gov.abs:STATE_2006" => "3", "au.gov.abs:reviewed" => "no", "boundary" => "administrative", "is_in" => "Queensland, Australia", "name" => "Barron", "old_name" => "Cairns City", "source" => "ABS_2006", "type" => "multipolygon"],    # not agreed,
               OSM::Relation[[[OSM::Way,31711914,"outer"] , [OSM::Way,31971667,"outer"] , [OSM::Way,46655780,"outer"] , [OSM::Way,32249943,"outer"] , [OSM::Way,32289794,"outer"] , [OSM::Way,46655782,"outer"] , [OSM::Way,41663801,"outer"] , [OSM::Way,32294688,"outer"] , [OSM::Way,32294692,"outer"] , [OSM::Way,32294694,"outer"] , [OSM::Way,32294695,"outer"] , [OSM::Way,32294697,"outer"] , [OSM::Way,32294698,"outer"] , [OSM::Way,32294700,"outer"]], :id  => 99000, :version => 4, :visible => true, :changeset => 10580540, "admin_level" => "10", "attribution" => "Based on Australian Bureau of Statistics data", "au.gov.abs:NAME_2006" => "Barron (Cairns City)", "au.gov.abs:SSC_2006" => "35187", "au.gov.abs:STATE_2006" => "3", "au.gov.abs:reviewed" => "no", "boundary" => "administrative", "is_in" => "Queensland, Australia", "name" => "Barron", "old_name" => "Cairns City", "source" => "ABS_2006", "type" => "multipolygon"],    # agreed,
               OSM::Relation[[[OSM::Way,31711914,"outer"] , [OSM::Way,31971667,"outer"] , [OSM::Way,46655780,"outer"] , [OSM::Way,32289794,"outer"] , [OSM::Way,46655782,"outer"] , [OSM::Way,41663801,"outer"] , [OSM::Way,32294688,"outer"] , [OSM::Way,32294692,"outer"] , [OSM::Way,32294694,"outer"] , [OSM::Way,32294695,"outer"] , [OSM::Way,32294697,"outer"] , [OSM::Way,32294698,"outer"] , [OSM::Way,32294700,"outer"]], :id  => 99000, :version => 5, :visible => true, :changeset => 10599407, "admin_level" => "10", "attribution" => "Based on Australian Bureau of Statistics data", "au.gov.abs:NAME_2006" => "Barron (Cairns City)", "au.gov.abs:SSC_2006" => "35187", "au.gov.abs:STATE_2006" => "3", "au.gov.abs:reviewed" => "no", "boundary" => "administrative", "is_in" => "Queensland, Australia", "name" => "Barron", "old_name" => "Cairns City", "source" => "ABS_2006", "type" => "multipolygon"],    # agreed,
               OSM::Relation[[[OSM::Way,31711914,"outer"] , [OSM::Way,31971667,"outer"] , [OSM::Way,46655780,"outer"] , [OSM::Way,32289794,"outer"] , [OSM::Way,46655782,"outer"] , [OSM::Way,41663801,"outer"] , [OSM::Way,32294688,"outer"] , [OSM::Way,32294692,"outer"] , [OSM::Way,32294695,"outer"] , [OSM::Way,32294697,"outer"] , [OSM::Way,32294698,"outer"] , [OSM::Way,32294700,"outer"]], :id  => 99000, :version => 6, :visible => true, :changeset => 10612888, "admin_level" => "10", "attribution" => "Based on Australian Bureau of Statistics data", "au.gov.abs:NAME_2006" => "Barron (Cairns City)", "au.gov.abs:SSC_2006" => "35187", "au.gov.abs:STATE_2006" => "3", "au.gov.abs:reviewed" => "no", "boundary" => "administrative", "is_in" => "Queensland, Australia", "name" => "Barron", "old_name" => "Cairns City", "source" => "ABS_2006", "type" => "multipolygon"],    # agreed,
               OSM::Relation[[[OSM::Way,31711914,"outer"] , [OSM::Way,31971667,"outer"] , [OSM::Way,46655780,"outer"] , [OSM::Way,32289794,"outer"] , [OSM::Way,46655782,"outer"] , [OSM::Way,41663801,"outer"] , [OSM::Way,32294688,"outer"] , [OSM::Way,32294692,"outer"] , [OSM::Way,32294697,"outer"] , [OSM::Way,32294698,"outer"] , [OSM::Way,32294700,"outer"]], :id  => 99000, :version => 7, :visible => true, :changeset => 10612888, "admin_level" => "10", "attribution" => "Based on Australian Bureau of Statistics data", "au.gov.abs:NAME_2006" => "Barron (Cairns City)", "au.gov.abs:SSC_2006" => "35187", "au.gov.abs:STATE_2006" => "3", "au.gov.abs:reviewed" => "no", "boundary" => "administrative", "is_in" => "Queensland, Australia", "name" => "Barron", "old_name" => "Cairns City", "source" => "ABS_2006", "type" => "multipolygon"],    # agreed,
               OSM::Relation[[[OSM::Way,31711914,"outer"] , [OSM::Way,31971667,"outer"] , [OSM::Way,46655780,"outer"] , [OSM::Way,32289794,"outer"] , [OSM::Way,46655782,"outer"] , [OSM::Way,41663801,"outer"] , [OSM::Way,32294688,"outer"] , [OSM::Way,32294692,"outer"] , [OSM::Way,32294698,"outer"] , [OSM::Way,32294700,"outer"]], :id  => 99000, :version => 8, :visible => true, :changeset => 10612888, "admin_level" => "10", "attribution" => "Based on Australian Bureau of Statistics data", "au.gov.abs:NAME_2006" => "Barron (Cairns City)", "au.gov.abs:SSC_2006" => "35187", "au.gov.abs:STATE_2006" => "3", "au.gov.abs:reviewed" => "no", "boundary" => "administrative", "is_in" => "Queensland, Australia", "name" => "Barron", "old_name" => "Cairns City", "source" => "ABS_2006", "type" => "multipolygon"],    # agreed,
               OSM::Relation[[[OSM::Way,31711914,"outer"] , [OSM::Way,31971667,"outer"] , [OSM::Way,46655780,"outer"] , [OSM::Way,32289794,"outer"] , [OSM::Way,46655782,"outer"] , [OSM::Way,41663801,"outer"] , [OSM::Way,32294688,"outer"] , [OSM::Way,32294692,"outer"] , [OSM::Way,32294700,"outer"]], :id  => 99000, :version => 9, :visible => true, :changeset => 10612888, "admin_level" => "10", "attribution" => "Based on Australian Bureau of Statistics data", "au.gov.abs:NAME_2006" => "Barron (Cairns City)", "au.gov.abs:SSC_2006" => "35187", "au.gov.abs:STATE_2006" => "3", "au.gov.abs:reviewed" => "no", "boundary" => "administrative", "is_in" => "Queensland, Australia", "name" => "Barron", "old_name" => "Cairns City", "source" => "ABS_2006", "type" => "multipolygon"],    # agreed,
               OSM::Relation[[[OSM::Way,31711914,"outer"] , [OSM::Way,31971667,"outer"] , [OSM::Way,46655780,"outer"] , [OSM::Way,32289794,"outer"] , [OSM::Way,46655782,"outer"] , [OSM::Way,41663801,"outer"] , [OSM::Way,32294688,"outer"] , [OSM::Way,32294692,"outer"]], :id  => 99000, :version => 10, :visible => true, :changeset => 10612888, "admin_level" => "10", "attribution" => "Based on Australian Bureau of Statistics data", "au.gov.abs:NAME_2006" => "Barron (Cairns City)", "au.gov.abs:SSC_2006" => "35187", "au.gov.abs:STATE_2006" => "3", "au.gov.abs:reviewed" => "no", "boundary" => "administrative", "is_in" => "Queensland, Australia", "name" => "Barron", "old_name" => "Cairns City", "source" => "ABS_2006", "type" => "multipolygon"],    # agreed,
               OSM::Relation[[[OSM::Way,31711914,"outer"] , [OSM::Way,31971667,"outer"] , [OSM::Way,46655780,"outer"] , [OSM::Way,32289794,"outer"] , [OSM::Way,41663801,"outer"] , [OSM::Way,32294688,"outer"] , [OSM::Way,32294692,"outer"]], :id  => 99000, :version => 11, :visible => true, :changeset => 10962722, "admin_level" => "10", "attribution" => "Based on Australian Bureau of Statistics data", "au.gov.abs:NAME_2006" => "Barron (Cairns City)", "au.gov.abs:SSC_2006" => "35187", "au.gov.abs:STATE_2006" => "3", "au.gov.abs:reviewed" => "no", "boundary" => "administrative", "is_in" => "Queensland, Australia", "name" => "Barron", "old_name" => "Cairns City", "source" => "ABS_2006", "type" => "multipolygon"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([Delete[OSM::Relation, 99000],
                  Redact[OSM::Relation, 99000, 1, :hidden],
                  Redact[OSM::Relation, 99000, 2, :hidden],
                  Redact[OSM::Relation, 99000, 3, :hidden],
                  Redact[OSM::Relation, 99000, 4, :visible],
                  Redact[OSM::Relation, 99000, 5, :visible],
                  Redact[OSM::Relation, 99000, 6, :visible],
                  Redact[OSM::Relation, 99000, 7, :visible],
                  Redact[OSM::Relation, 99000, 8, :visible],
                  Redact[OSM::Relation, 99000, 9, :visible],
                  Redact[OSM::Relation, 99000, 10, :visible],
                  Redact[OSM::Relation, 99000, 11, :visible]
                 ], actions)
  end

  # auto-generated test for relation 129000
  # http://wtfe.gryph.de/report/relation/129000
  # http://osm.mapki.com/history/relation.php?id=129000
  def test_automatic_relation129000
    history = [OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,4728007] , [OSM::Way,4728018] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,4890656] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,31754149] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361]], :id  => 129000, :version => 1, :visible => true, :changeset => 1093373, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,4728007] , [OSM::Way,4728018] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,4890656] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,31754149] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,34124500] , [OSM::Way,4848166]], :id  => 129000, :version => 2, :visible => true, :changeset => 1093404, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,4728007] , [OSM::Way,4728018] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,4890656] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,31754149] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,34124500] , [OSM::Way,4848166] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161]], :id  => 129000, :version => 3, :visible => true, :changeset => 1093500, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,4728007] , [OSM::Way,4728018] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,4890656] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,31754149] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,34124500] , [OSM::Way,4848166] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471]], :id  => 129000, :version => 4, :visible => true, :changeset => 1093558, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,4728007] , [OSM::Way,4728018] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,4890656] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,31754149] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471]], :id  => 129000, :version => 5, :visible => true, :changeset => 4410348, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # not agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,4728007] , [OSM::Way,4728018] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,4890656] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,31754149] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471] , [OSM::Way,61349148]], :id  => 129000, :version => 6, :visible => true, :changeset => 4924009, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,4728007] , [OSM::Way,4728018] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,4890656] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,31754149] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471]], :id  => 129000, :version => 7, :visible => true, :changeset => 6142529, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,4728007] , [OSM::Way,4728018] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,4890656] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,31754149] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471]], :id  => 129000, :version => 8, :visible => true, :changeset => 7481344, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,4728007] , [OSM::Way,4728018] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,4890656] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,31754149] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,105082944] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471]], :id  => 129000, :version => 9, :visible => true, :changeset => 7623545, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,4728007] , [OSM::Way,4728018] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,4890656] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,31754149] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,114220350] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,105082944] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471]], :id  => 129000, :version => 10, :visible => true, :changeset => 8203850, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,4728007] , [OSM::Way,4728018] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,4890656] , [OSM::Way,114220730] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,31754149] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,114220350] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,105082944] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471]], :id  => 129000, :version => 11, :visible => true, :changeset => 8203944, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,114648704] , [OSM::Way,4728007] , [OSM::Way,114648685] , [OSM::Way,4728018] , [OSM::Way,114648692] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,114648691] , [OSM::Way,4890656] , [OSM::Way,114220730] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,31754149] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,114220350] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,105082944] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471]], :id  => 129000, :version => 12, :visible => true, :changeset => 8232391, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,114648704] , [OSM::Way,4728007] , [OSM::Way,114648685] , [OSM::Way,4728018] , [OSM::Way,114648692] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,114648691] , [OSM::Way,4890656] , [OSM::Way,114220730] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,31754149] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,114220350] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,105082944] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,114770284] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471]], :id  => 129000, :version => 13, :visible => true, :changeset => 8241593, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,114648704] , [OSM::Way,4728007] , [OSM::Way,114648685] , [OSM::Way,4728018] , [OSM::Way,114648692] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,114648691] , [OSM::Way,4890656] , [OSM::Way,114220730] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,31754149] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,114220350] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,116421891] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,116421901] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,105082944] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,114770284] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471]], :id  => 129000, :version => 14, :visible => true, :changeset => 8344622, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,114648704] , [OSM::Way,4728007] , [OSM::Way,114648685] , [OSM::Way,4728018] , [OSM::Way,114648692] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,114648691] , [OSM::Way,4890656] , [OSM::Way,120106042] , [OSM::Way,114220730] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,31754149] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,114220350] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,116421891] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,116421901] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,105082944] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,114770284] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471]], :id  => 129000, :version => 15, :visible => true, :changeset => 8614128, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,114648704] , [OSM::Way,4728007] , [OSM::Way,114648685] , [OSM::Way,4728018] , [OSM::Way,114648692] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,114648691] , [OSM::Way,4890656] , [OSM::Way,120106042] , [OSM::Way,114220730] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,31754149] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,114220350] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,116421891] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,116421901] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,105082944] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,120109226] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,114770284] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471]], :id  => 129000, :version => 16, :visible => true, :changeset => 8614426, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,114648704] , [OSM::Way,4728007] , [OSM::Way,114648685] , [OSM::Way,4728018] , [OSM::Way,114648692] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,114648691] , [OSM::Way,4890656] , [OSM::Way,120106042] , [OSM::Way,114220730] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,31754149] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,114220350] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,116421891] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,116421901] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,105082944] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,120109226] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,114770284] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471] , [OSM::Way,120110354]], :id  => 129000, :version => 17, :visible => true, :changeset => 8614568, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,114648704] , [OSM::Way,4728007] , [OSM::Way,114648685] , [OSM::Way,4728018] , [OSM::Way,114648692] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,114648691] , [OSM::Way,4890656] , [OSM::Way,120106042] , [OSM::Way,114220730] , [OSM::Way,120110660] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,120110661] , [OSM::Way,31754149] , [OSM::Way,120110657] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,114220350] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,116421891] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,116421901] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,105082944] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,120109226] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,114770284] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471] , [OSM::Way,120110354]], :id  => 129000, :version => 18, :visible => true, :changeset => 8614620, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,114648704] , [OSM::Way,4728007] , [OSM::Way,114648685] , [OSM::Way,4728018] , [OSM::Way,114648692] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,114648691] , [OSM::Way,4890656] , [OSM::Way,120106042] , [OSM::Way,114220730] , [OSM::Way,120110660] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,120110661] , [OSM::Way,31754149] , [OSM::Way,120110657] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,114220350] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,120626154] , [OSM::Way,120626155] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,116421891] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,116421901] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,105082944] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,120109226] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,114770284] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471] , [OSM::Way,120110354]], :id  => 129000, :version => 19, :visible => true, :changeset => 8653848, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,114648704] , [OSM::Way,4728007] , [OSM::Way,114648685] , [OSM::Way,4728018] , [OSM::Way,114648692] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,114648691] , [OSM::Way,4890656] , [OSM::Way,120106042] , [OSM::Way,114220730] , [OSM::Way,120110660] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,120110661] , [OSM::Way,31754149] , [OSM::Way,120110657] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,114220350] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,120626154] , [OSM::Way,120626155] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,116421891] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,105082944] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,120109226] , [OSM::Way,23984816] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,114770284] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471] , [OSM::Way,120110354]], :id  => 129000, :version => 20, :visible => true, :changeset => 10039176, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,114648704] , [OSM::Way,4728007] , [OSM::Way,114648685] , [OSM::Way,4728018] , [OSM::Way,114648692] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,114648691] , [OSM::Way,4890656] , [OSM::Way,120106042] , [OSM::Way,114220730] , [OSM::Way,120110660] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,120110661] , [OSM::Way,31754149] , [OSM::Way,120110657] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,114220350] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,120626154] , [OSM::Way,120626155] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,116421891] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,105082944] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,147228428] , [OSM::Way,120109226] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471] , [OSM::Way,120110354]], :id  => 129000, :version => 21, :visible => true, :changeset => 10490803, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,114648704] , [OSM::Way,4728007] , [OSM::Way,114648685] , [OSM::Way,4728018] , [OSM::Way,114648692] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,114648691] , [OSM::Way,4890656] , [OSM::Way,120106042] , [OSM::Way,114220730] , [OSM::Way,120110660] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,120110661] , [OSM::Way,31754149] , [OSM::Way,120110657] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,114220350] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,120626154] , [OSM::Way,120626155] , [OSM::Way,147372747] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,116421891] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,105082944] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,147228428] , [OSM::Way,120109226] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471] , [OSM::Way,120110354] , [OSM::Way,100822262] , [OSM::Way,100822268]], :id  => 129000, :version => 22, :visible => true, :changeset => 10498845, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,114648704] , [OSM::Way,4728007] , [OSM::Way,114648685] , [OSM::Way,4728018] , [OSM::Way,114648692] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,114648691] , [OSM::Way,4890656] , [OSM::Way,120106042] , [OSM::Way,114220730] , [OSM::Way,120110660] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,120110661] , [OSM::Way,31754149] , [OSM::Way,120110657] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,114220350] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,120626154] , [OSM::Way,120626155] , [OSM::Way,147372747] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,116421891] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,105082944] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,147228428] , [OSM::Way,147373586] , [OSM::Way,120109226] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471] , [OSM::Way,120110354] , [OSM::Way,100822262] , [OSM::Way,100822268]], :id  => 129000, :version => 23, :visible => true, :changeset => 10498928, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,114648704] , [OSM::Way,151945731] , [OSM::Way,114648685] , [OSM::Way,4728018] , [OSM::Way,114648692] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,114648691] , [OSM::Way,4890656] , [OSM::Way,120106042] , [OSM::Way,114220730] , [OSM::Way,120110660] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,120110661] , [OSM::Way,31754149] , [OSM::Way,120110657] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,114220350] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,120626154] , [OSM::Way,120626155] , [OSM::Way,147372747] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,116421891] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,105082944] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,147228428] , [OSM::Way,147373586] , [OSM::Way,120109226] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471] , [OSM::Way,120110354] , [OSM::Way,100822262] , [OSM::Way,100822268]], :id  => 129000, :version => 24, :visible => true, :changeset => 10793324, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed,
               OSM::Relation[[[OSM::Way,4890648] , [OSM::Way,114648704] , [OSM::Way,151945731] , [OSM::Way,114648685] , [OSM::Way,4728018] , [OSM::Way,114648692] , [OSM::Way,4890649] , [OSM::Way,4727746] , [OSM::Way,27464842] , [OSM::Way,4890650] , [OSM::Way,4890647] , [OSM::Way,114648691] , [OSM::Way,4890656] , [OSM::Way,120106042] , [OSM::Way,114220730] , [OSM::Way,120110660] , [OSM::Way,4900711] , [OSM::Way,4900710] , [OSM::Way,4900713] , [OSM::Way,4900712] , [OSM::Way,120110661] , [OSM::Way,31754149] , [OSM::Way,120110657] , [OSM::Way,23135931] , [OSM::Way,4900704] , [OSM::Way,4900642] , [OSM::Way,4900821] , [OSM::Way,4900688] , [OSM::Way,23150361] , [OSM::Way,4848166] , [OSM::Way,114220350] , [OSM::Way,4900791] , [OSM::Way,4900795] , [OSM::Way,4900800] , [OSM::Way,34124566] , [OSM::Way,4900793] , [OSM::Way,4900801] , [OSM::Way,4900812] , [OSM::Way,4900806] , [OSM::Way,4900803] , [OSM::Way,4900808] , [OSM::Way,23136129] , [OSM::Way,23136326] , [OSM::Way,34124815] , [OSM::Way,23136130] , [OSM::Way,120626154] , [OSM::Way,120626155] , [OSM::Way,147372747] , [OSM::Way,23147386] , [OSM::Way,23147398] , [OSM::Way,23135700] , [OSM::Way,23147395] , [OSM::Way,34124816] , [OSM::Way,34124817] , [OSM::Way,116421891] , [OSM::Way,103119825] , [OSM::Way,103119827] , [OSM::Way,155374242] , [OSM::Way,34124567] , [OSM::Way,23235085] , [OSM::Way,23235145] , [OSM::Way,23235156] , [OSM::Way,23235152] , [OSM::Way,23235148] , [OSM::Way,23235136] , [OSM::Way,23235149] , [OSM::Way,25923472] , [OSM::Way,25923546] , [OSM::Way,25798126] , [OSM::Way,105082944] , [OSM::Way,25798127] , [OSM::Way,25923469] , [OSM::Way,31378682] , [OSM::Way,25923703] , [OSM::Way,25923711] , [OSM::Way,31378693] , [OSM::Way,25923541] , [OSM::Way,25923878] , [OSM::Way,31378691] , [OSM::Way,31378686] , [OSM::Way,147228428] , [OSM::Way,147373586] , [OSM::Way,120109226] , [OSM::Way,25923871] , [OSM::Way,23136161] , [OSM::Way,4900809] , [OSM::Way,23236888] , [OSM::Way,26598779] , [OSM::Way,23236862] , [OSM::Way,26598795] , [OSM::Way,26598786] , [OSM::Way,4848221] , [OSM::Way,16789471] , [OSM::Way,120110354] , [OSM::Way,100822262] , [OSM::Way,100822268]], :id  => 129000, :version => 25, :visible => true, :changeset => 11004347, "name" => "State Highway 74", "ref" => "74", "route" => "road", "type" => "route"],    # agreed
              ]
    bot = ChangeBot.new(@db)
    actions = bot.action_for(history)
    assert_equal([ ], actions) #decliner only removed
  end
end
