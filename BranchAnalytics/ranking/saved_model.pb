??$
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??"
l
Adagrad/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdagrad/iter
e
 Adagrad/iter/Read/ReadVariableOpReadVariableOpAdagrad/iter*
_output_shapes
: *
dtype0	
n
Adagrad/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdagrad/decay
g
!Adagrad/decay/Read/ReadVariableOpReadVariableOpAdagrad/decay*
_output_shapes
: *
dtype0
~
Adagrad/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdagrad/learning_rate
w
)Adagrad/learning_rate/Read/ReadVariableOpReadVariableOpAdagrad/learning_rate*
_output_shapes
: *
dtype0
?
embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *'
shared_nameembedding_2/embeddings
?
*embedding_2/embeddings/Read/ReadVariableOpReadVariableOpembedding_2/embeddings*
_output_shapes
:	? *
dtype0
?
embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?K *'
shared_nameembedding_3/embeddings
?
*embedding_3/embeddings/Read/ReadVariableOpReadVariableOpembedding_3/embeddings*
_output_shapes
:	?K *
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	@?*
dtype0
q
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:?*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	?@*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:@*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:@*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
k

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name284*
value_dtype0	
m
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name306*
value_dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
*Adagrad/embedding_2/embeddings/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *;
shared_name,*Adagrad/embedding_2/embeddings/accumulator
?
>Adagrad/embedding_2/embeddings/accumulator/Read/ReadVariableOpReadVariableOp*Adagrad/embedding_2/embeddings/accumulator*
_output_shapes
:	? *
dtype0
?
*Adagrad/embedding_3/embeddings/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?K *;
shared_name,*Adagrad/embedding_3/embeddings/accumulator
?
>Adagrad/embedding_3/embeddings/accumulator/Read/ReadVariableOpReadVariableOp*Adagrad/embedding_3/embeddings/accumulator*
_output_shapes
:	?K *
dtype0
?
"Adagrad/dense_3/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*3
shared_name$"Adagrad/dense_3/kernel/accumulator
?
6Adagrad/dense_3/kernel/accumulator/Read/ReadVariableOpReadVariableOp"Adagrad/dense_3/kernel/accumulator*
_output_shapes
:	@?*
dtype0
?
 Adagrad/dense_3/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adagrad/dense_3/bias/accumulator
?
4Adagrad/dense_3/bias/accumulator/Read/ReadVariableOpReadVariableOp Adagrad/dense_3/bias/accumulator*
_output_shapes	
:?*
dtype0
?
"Adagrad/dense_4/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*3
shared_name$"Adagrad/dense_4/kernel/accumulator
?
6Adagrad/dense_4/kernel/accumulator/Read/ReadVariableOpReadVariableOp"Adagrad/dense_4/kernel/accumulator*
_output_shapes
:	?@*
dtype0
?
 Adagrad/dense_4/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adagrad/dense_4/bias/accumulator
?
4Adagrad/dense_4/bias/accumulator/Read/ReadVariableOpReadVariableOp Adagrad/dense_4/bias/accumulator*
_output_shapes
:@*
dtype0
?
"Adagrad/dense_5/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adagrad/dense_5/kernel/accumulator
?
6Adagrad/dense_5/kernel/accumulator/Read/ReadVariableOpReadVariableOp"Adagrad/dense_5/kernel/accumulator*
_output_shapes

:@*
dtype0
?
 Adagrad/dense_5/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adagrad/dense_5/bias/accumulator
?
4Adagrad/dense_5/bias/accumulator/Read/ReadVariableOpReadVariableOp Adagrad/dense_5/bias/accumulator*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
Const_2Const*
_output_shapes	
:?*
dtype0*?
value?B??B1B10B100B101B102B103B104B105B106B107B108B109B11B110B111B112B113B114B115B116B117B118B119B12B120B121B122B123B124B125B126B127B128B129B13B130B131B132B133B134B135B136B137B138B139B14B140B141B142B143B144B145B146B147B148B149B15B150B151B152B153B154B155B156B157B158B159B16B160B161B162B163B164B165B166B167B168B169B17B170B171B172B173B174B175B176B177B178B179B18B180B181B182B183B184B185B186B187B188B189B19B190B191B192B193B194B195B196B197B198B199B2B20B200B201B202B203B204B205B206B207B208B209B21B210B211B212B213B214B215B216B217B218B219B22B220B221B222B223B224B225B226B227B228B229B23B230B231B232B233B234B235B236B237B238B239B24B240B241B242B243B244B245B246B247B248B249B25B250B251B252B253B254B255B256B257B258B259B26B260B261B262B263B264B265B266B267B268B269B27B270B271B272B273B274B275B276B277B278B279B28B280B281B282B283B284B285B286B287B288B289B29B290B291B292B293B294B295B296B297B298B299B3B30B300B301B302B303B304B305B306B307B308B309B31B310B311B312B313B314B315B316B317B318B319B32B320B321B322B323B324B325B326B327B328B329B33B330B331B332B333B334B335B336B337B338B339B34B340B341B342B343B344B345B346B347B348B349B35B350B351B352B353B354B355B356B357B358B359B36B360B361B362B363B364B365B366B367B368B369B37B370B371B372B373B374B375B376B377B378B379B38B380B381B382B383B384B385B386B387B388B389B39B390B391B392B393B394B395B396B397B398B399B4B40B400B401B402B403B404B405B406B407B408B409B41B410B411B412B413B414B415B416B417B418B419B42B420B421B422B423B424B425B426B427B428B429B43B430B431B432B433B434B435B436B437B438B439B44B440B441B442B443B444B445B446B447B448B449B45B450B451B452B453B454B455B456B457B458B459B46B460B461B462B463B464B465B466B467B468B469B47B470B471B472B473B474B475B476B477B478B479B48B480B481B482B483B484B485B486B487B488B489B49B490B491B492B493B494B495B496B497B498B499B5B50B500B501B502B503B504B505B506B507B508B509B51B510B511B512B513B514B515B516B517B518B519B52B520B521B522B523B524B525B526B527B528B529B53B530B531B532B533B534B535B536B537B538B539B54B540B541B542B543B544B545B546B547B548B549B55B550B551B552B553B554B555B556B557B558B559B56B560B561B562B563B564B565B566B567B568B569B57B570B571B572B573B574B575B576B577B578B579B58B580B581B582B583B584B585B586B587B588B589B59B590B591B592B593B594B595B596B597B598B599B6B60B600B601B602B603B604B605B606B607B608B609B61B610B62B63B64B65B66B67B68B69B7B70B71B72B73B74B75B76B77B78B79B8B80B81B82B83B84B85B86B87B88B89B9B90B91B92B93B94B95B96B97B98B99
?&
Const_3Const*
_output_shapes	
:?*
dtype0	*?&
value?&B?&	?"?&                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      
??
Const_4Const*
_output_shapes	
:?K*
dtype0*??
value??B???KB
'71 (2014)B''Hellboy': The Seeds of Creation (2004)B'Round Midnight (1986)B'Salem's Lot (2004)B'Til There Was You (1997)B'Tis the Season for Love (2015)B'burbs, The (1989)B'night Mother (1986)B(500) Days of Summer (2009)B*batteries not included (1987)B...All the Marbles (1981)B...And Justice for All (1979)B+00 Schneider - Jagd auf Nihil Baxter (1994)B1-900 (06) (1994)B	10 (1979)B10 Cent Pistol (2015)B10 Cloverfield Lane (2016)B10 Items or Less (2006)B!10 Things I Hate About You (1999)B10 Years (2011)B10,000 BC (2008)B100 Girls (2000)B100 Streets (2016)B101 Dalmatians (1996)B6101 Dalmatians (One Hundred and One Dalmatians) (1961)B2101 Dalmatians II: Patch's London Adventure (2003)B%101 Reykjavik (101 Reykjavík) (2000)B102 Dalmatians (2000)B10th & Wolf (2006)B10th Kingdom, The (2000)B+10th Victim, The (La decima vittima) (1965)B11'09"01 - September 11 (2002)B11:14 (2003)B11th Hour, The (2007)B12 Angry Men (1957)B12 Angry Men (1997)B12 Chairs (1971)B12 Chairs (1976)B12 Rounds (2009)B12 Years a Slave (2013)B127 Hours (2010)B+13 Assassins (Jûsan-nin no shikaku) (2010)B13 Ghosts (1960)B13 Going on 30 (2004)B13 Hours (2016)B13 Sins (2014)B13 Tzameti (2005)B13th (2016)B13th Warrior, The (1999)B1408 (2007)B!1492: Conquest of Paradise (1992)B15 Minutes (2001)B16 Blocks (2006)B17 Again (2009)B1776 (1972)B18 Again! (1988)B187 (One Eight Seven) (1997)B1900 (Novecento) (1976)B1941 (1979)B1969 (1988)B"1984 (Nineteen Eighty-Four) (1984)B2 Days in New York (2012)B2 Days in Paris (2007)B2 Days in the Valley (1996)B52 Fast 2 Furious (Fast and the Furious 2, The) (2003)B2 Guns (2013)B20 Dates (1998)B620 Feet from Stardom (Twenty Feet from Stardom) (2013)B 20 Million Miles to Earth (1957)B20,000 Days on Earth (2014)B#20,000 Leagues Under the Sea (1916)B#20,000 Leagues Under the Sea (1954)B200 Cigarettes (1999)B2001 Maniacs (2005)B2001: A Space Odyssey (1968)B%2010: The Year We Make Contact (1984)B2012 (2009)B2046 (2004)B2048: Nowhere to Run (2017)B	21 (2008)B21 Grams (2003)B21 Jump Street (2012)B21 Up (1977)B21 and Over (2013)B22 Jump Street (2014)B24 Hour Party People (2002)B25th Hour (2002)B27 Dresses (2008)B28 Days (2000)B28 Days Later (2002)B28 Up (1985)B28 Weeks Later (2007)B3 Days to Kill (2014)B53 Extremes (Three... Extremes) (Saam gaang yi) (2004)B3 Idiots (2009)B3 Ninjas (1992)B3 Ninjas Kick Back (1994)B3 Ninjas Knuckle Up (1995)B+3 Ninjas: High Noon On Mega Mountain (1998)B3 Women (Three Women) (1977)B$3 dev adam (Three Giant Men) (1973) B3-Iron (Bin-jip) (2004)B30 Days of Night (2007)B30 Minutes or Less (2011)B
300 (2007)B3000 Miles to Graceland (2001)B300: Rise of an Empire (2014)B	31 (2016)B35 Up (1991)B39 Steps, The (1935)B3:10 to Yuma (1957)B3:10 to Yuma (2007)B4 Little Girls (1997)BD4 Months, 3 Weeks and 2 Days (4 luni, 3 saptamâni si 2 zile) (2007)B40 Days and 40 Nights (2002)B40-Year-Old Virgin, The (2005)B.400 Blows, The (Les quatre cents coups) (1959)B	42 (2013)B42 Up (1998)B42nd Street (1933)B47 Ronin (2013)B48 Hrs. (1982)B49 Up (2005)B:5 Centimeters per Second (Byôsoku 5 senchimêtoru) (2007)B5 to 7 (2014)B"5,000 Fingers of Dr. T, The (1953)B50 First Dates (2004)B50/50 (2011)B52 Pick-Up (1986)B	54 (1998)B.6 Days to Air: The Making of South Park (2011)B
61* (2001)B6th Day, The (2000)B$6th Man, The (Sixth Man, The) (1997)B7 Days in Hell (2015)B7 Faces of Dr. Lao (1964)B 7th Voyage of Sinbad, The (1958)B8 1/2 (8½) (1963)B8 Heads in a Duffel Bag (1997)B8 Mile (2002)B8 Seconds (1994)B8 Women (2002)BF8 ½ Women (a.k.a. 8 1/2 Women) (a.k.a. Eight and a Half Women) (1999)B800 Bullets (800 Balas) (2002)B84 Charing Cross Road (1987)B
8MM (1999)B9 (2009)B#9 1/2 Weeks (Nine 1/2 Weeks) (1986)B9/11 (2002)B96 Minutes (2011) B964 Pinocchio (1991)B99 francs (2007)B79to5: Days in Porn (a.k.a. 9 to 5: Days in Porn) (2008)BA Bad Moms Christmas (2017)BA Christmas Story Live! (2017)BA Cosmic Christmas (1977)BA Detective Story (2003)BA Dog's Purpose (2017)B$A Flintstones Christmas Carol (1994)BA German Life (2016)B%A Home at the End of the World (2004)BA Man Called Blade (1977)B)A Man from Boulevard des Capucines (1987)B!A Merry Friggin' Christmas (2014)B A Midsummer Night's Dream (2016)B(A Million Ways to Die in the West (2014)BA Most Wanted Man (2014)BA Perfect Day (2015)B7A Pigeon Sat on a Branch Reflecting on Existence (2014)BA Plasticine Crow (1981)BA Quiet Place (2018)BA Silent Voice (2016)B#A Story of Children and Film (2013)BA Street Cat Named Bob (2016)BA Very Murray Christmas (2015)BA Walk in the Woods (2015)BA Wrinkle in Time (2018)BA-Team, The (2010)B#A.I. Artificial Intelligence (2001)BABCs of Death, The (2012)B
ARQ (2016)BAVP: Alien vs. Predator (2004)B*AVPR: Aliens vs. Predator - Requiem (2007)BAbandoned, The (2006)B,Abbott and Costello Meet Frankenstein (1948)BAbduction (2011)B!Abominable Dr. Phibes, The (1971)BIAbominable Snowman, The (Abominable Snowman of the Himalayas, The) (1957)BAbout Adam (2000)BAbout Last Night (2014)BAbout Last Night... (1986)BAbout Schmidt (2002)BAbout Time (2013)BAbout a Boy (2002)BAbove the Law (1988)BAbove the Rim (1994)B&Abraham Lincoln: Vampire Hunter (2012)BAbsence of Malice (1981)B#Absent-Minded Professor, The (1961)BAbsentia (2011)BAbsolute Power (1997)BAbsolutely Anything (2015)BAbyss, The (1989)BAccepted (2006)B.Accidental Spy, The (Dak miu mai shing) (2001)BAccidental Tourist, The (1988)BAccused, The (1988)B!Ace Ventura: Pet Detective (1994)B%Ace Ventura: When Nature Calls (1995)B*Ace in the Hole (Big Carnival, The) (1951)BAces: Iron Eagle III (1992)BAcid House, The (1998)BAcross the Hall (2009)BAcross the Universe (2007)BAct of Killing, The (2012)BAct of Valor (2012)BAction Jackson (1988)B3Adam and Eve (National Lampoon's Adam & Eve) (2005)B#Adam's Apples (Adams æbler) (2005)BAdam's Rib (1949)BAdanggaman (2000)BAdaptation (2002)BAddams Family Reunion (1998)BAddams Family Values (1993)BAddams Family, The (1991)BAddicted to Love (1997)BAddiction, The (1995)BAdjustment Bureau, The (2011)BAdmission (2013)BAdventureland (2009)BUAdventures Of Sherlock Holmes And Dr. Watson: The Twentieth Century Approaches (1986)B Adventures in Babysitting (1987)B Adventures in Plymptoons! (2011)B*Adventures of Baron Munchausen, The (1988)BBAdventures of Buckaroo Banzai Across the 8th Dimension, The (1984)B,Adventures of Elmo in Grouchland, The (1999)B'Adventures of Ford Fairlane, The (1990)B#Adventures of Huck Finn, The (1993)B.Adventures of Ichabod and Mr. Toad, The (1949)BOAdventures of Mary-Kate and Ashley, The: The Case of the Christmas Caper (1995)B;Adventures of Milo and Otis, The (Koneko monogatari) (1986)B+Adventures of Mowgli: The Kidnapping (1968)B#Adventures of Pinocchio, The (1996)B$Adventures of Pluto Nash, The (2002)B8Adventures of Priscilla, Queen of the Desert, The (1994)B$Adventures of Robin Hood, The (1938)B.Adventures of Rocky and Bullwinkle, The (2000)B(Adventures of Sebastian Cole, The (1998)B3Adventures of Sharkboy and Lavagirl 3-D, The (2005)B Adventures of Tintin, The (2011)BAdvise and Consent (1962)B)Aelita: The Queen of Mars (Aelita) (1924)BAeon Flux (2005)B7Affair of Love, An (Liaison pornographique, Une) (1999)B"Affair of the Necklace, The (2001)BAffair to Remember, An (1957)BAfflicted (2013)BAffliction (1997)BAfonya (1975)BAfrica: The Serengeti (1994)BAfrican Cats (2011)BAfrican Queen, The (1951)BAfro Samurai (2007)B!Afro Samurai: Resurrection (2009)BAfter Earth (2013)BAfter Hours (1985)B#After Life (Wandafuru raifu) (1998)B(After the Fox (Caccia alla volpe) (1966)BAfter the Sunset (2004)BAfter the Thin Man (1936)B+After the Wedding (Efter brylluppet) (2006)BAfterglow (1997)BAgainst All Odds (1984)BAgainst the Ropes (2004)BAge of Innocence, The (1993)BAgent Cody Banks (2003)B-Agent Cody Banks 2: Destination London (2004)BAgnes of God (1985)B!Agony and the Ecstasy, The (1965)BAgora (2009)B;Aguirre: The Wrath of God (Aguirre, der Zorn Gottes) (1972)B0Aileen: Life and Death of a Serial Killer (2003)BAir America (1990)BAir Bud (1997)BAir Bud: Golden Receiver (1998)BAir Force One (1997)BAir I Breathe, The (2007)BAir Up There, The (1994)BAirborne (1993)BAirheads (1994)BAirplane II: The Sequel (1982)BAirplane! (1980)BAirport '77 (1977)BAirport (1970)BAirport 1975 (1974)BAkeelah and the Bee (2006)BAkira (1988)B'Akira Kurosawa's Dreams (Dreams) (1990)BAladdin (1992)B&Aladdin and the King of Thieves (1996)BAlamo, The (1960)B!Alan Partridge: Alpha Papa (2013)BAlaska (1996)B!Alaska: Spirit of the Wild (1997)BAlbatross (2011)BAlbino Alligator (1996)B-Alesha Popovich and Tugarin the Dragon (2004)BAlex Cross (2012)BAlex and Emma (2003)BAlexander (2004)B+Alexander Nevsky (Aleksandr Nevskiy) (1938)BAlfie (1966)BAlfie (2004)B
Ali (2001)BAli G Indahouse (2002)BAli Wong: Baby Cobra (2016)B6Ali: Fear Eats the Soul (Angst essen Seele auf) (1974)B5Alias Betty (Betty Fisher et autres histoires) (2001)BAlice (1990)BAlice (2009)BAlice (Neco z Alenky) (1988)BAlice Adams (1935)B&Alice Doesn't Live Here Anymore (1974)B&Alice Through the Looking Glass (2016)BAlice in Wonderland (1933)BAlice in Wonderland (1951)BAlice in Wonderland (2010)BAlien (1979)BAlien Contamination (1980)BAlien Nation (1988)BAlien from L.A. (1988)BAlien: Covenant (2017)BAlien: Resurrection (1997)BAliens (1986)BAlien³ (a.k.a. Alien 3) (1992)BAlive (1993)BAll About Eve (1950)B7All About Lily Chou-Chou (Riri Shushu no subete) (2001)B0All About My Mother (Todo sobre mi madre) (1999)BAll About the Benjamins (2002)B#All Dogs Christmas Carol, An (1998)BAll Dogs Go to Heaven (1989)BAll Dogs Go to Heaven 2 (1996)BAll Good Things (2010)BAll Is Lost (2013)BAll Over the Guy (2001)B%All Quiet on the Western Front (1930)BAll Roads Lead to Rome (2016)BAll That Heaven Allows (1955)BAll That Jazz (1979)BAll This, and Heaven Too (1940)B3All Watched Over by Machines of Loving Grace (2011)BAll Yours (2016)BAll is Bright (2013)BAll of Me (1984)BAll or Nothing (2002)B#All the Boys Love Mandy Lane (2006)BAll the King's Men (1949)BAll the King's Men (2006)BAll the President's Men (1976)BAll the Pretty Horses (2000)BAll the Real Girls (2003)BAll the Right Moves (1983)B#All the Vermeers in New York (1990)BAll-Star Superman (2011)B1Allan Quatermain and the Lost City of Gold (1987)BAllegro non troppo (1977)BAlles Inklusive (2014)BAlligator (1980)BAllnighter, The (1987)BAlmost Famous (2000)BAlmost Heroes (1998)BAlmost an Angel (1990)BAloha (2015)BAlone in the Dark (2005)BAlone in the Dark II (2008)BAlong Came Polly (2004)BAlong Came a Spider (2001)BAlpha (2018)BAlpha Dog (2007)B.Alpha and Omega 3: The Great Wolf Games (2014)BFAlphaville (Alphaville, une étrange aventure de Lemmy Caution) (1965)BAltered (2006)BAltered States (1980)BAlvarez Kelly (1966)BAlvin and the Chipmunks (2007)B+Alvin and the Chipmunks: Chipwrecked (2011)B.Alvin and the Chipmunks: The Squeakquel (2009)BAlways (1989)B.Always Watching: A Marble Hornets Story (2015)BAmadeus (1984)BAmanda Knox (2016)BAmarcord (1973)BAmateur (1994)BAmazing Grace (2006)BAmazing Grace and Chuck (1987)B#Amazing Panda Adventure, The (1995)BAmazing Spider-Man, The (2012)B#Amazing Transparent Man, The (1960)BAmazon Women on the Moon (1987)B5Amelie (Fabuleux destin d'Amélie Poulain, Le) (2001)BAmen. (2002)BAmer (2009)BAmerica's Sweethearts (2001)BAmerican Astronaut, The (2001)BAmerican Beauty (1999)BAmerican Buffalo (1996)BAmerican Carol, An (2008)BAmerican Dreamz (2006)B-American Drug War: The Last White Hope (2007)BAmerican Fable (2017)BAmerican Flyers (1985)B7American Friend, The (Amerikanische Freund, Der) (1977)BAmerican Gangster (2007)BAmerican Gigolo (1980)BAmerican Graffiti (1973)BAmerican Grindhouse (2010)BAmerican Hardcore (2006)BAmerican Haunting, An (2005)BAmerican Heist (2015)BAmerican History X (1998)BAmerican Hustle (2013)BAmerican Made (2017)BAmerican Me (1992)BAmerican Movie (1999)BAmerican Ninja (1985)BAmerican Outlaws (2001)BAmerican Pie (1999)BAmerican Pie 2 (2001)BDAmerican Pie Presents Beta House (American Pie 6: Beta House) (2007)BLAmerican Pie Presents The Naked Mile (American Pie 5: The Naked Mile) (2006)BCAmerican Pie Presents: Band Camp (American Pie 4: Band Camp) (2005)BQAmerican Pie Presents: The Book of Love (American Pie 7: The Book of Love) (2009)BAmerican Pop (1981)BAmerican President, The (1995)BAmerican Psycho (2000)B,American Psycho II: All American Girl (2002)B(American Reunion (American Pie 4) (2012)BAmerican Sniper (2014)BAmerican Splendor (2003)BAmerican Tail, An (1986)B*American Tail: Fievel Goes West, An (1991)BAmerican Ultra (2015)B(American Wedding (American Pie 3) (2003)B&American Werewolf in London, An (1981)B%American Werewolf in Paris, An (1997)BAmerican in Paris, An (1951)BAmerican, The (2010)B%American: The Bill Hicks Story (2009)B$Americanization of Emily, The (1964)BAmericathon (1979)BAmistad (1997)B'Amityville 1992: It's About Time (1992)BAmityville 3-D (1983)BAmityville Curse, The (1990)BAmityville Horror, The (1979)BAmityville Horror, The (2005)B$Amityville II: The Possession (1982)B#Amityville: A New Generation (1993)BAmityville: Dollhouse (1996)B%Amores Perros (Love's a Bitch) (2000)BAmos & Andrew (1993)B
Amy (2015)B$Amy's O (a.k.a. Amy's Orgasm) (2001)BAn Amazing Couple (2002)BAnacleto: Agente secreto (2015)BAnaconda (1997)BAnaconda: The Offspring (2008)B/Anacondas: The Hunt for the Blood Orchid (2004)BAnalyze That (2002)BAnalyze This (1999)BAnarchist Cookbook, The (2002)BAnastasia (1956)BAnastasia (1997)BAnatomy of a Murder (1959)B(Anchorman 2: The Legend Continues (2013)B,Anchorman: The Legend of Ron Burgundy (2004)BAnchors Aweigh (1945)B8And God Created Woman (Et Dieu... créa la femme) (1956)B)And Now... Ladies and Gentlemen... (2002)BAnd So It Goes (2014)B+And Starring Pancho Villa as Himself (2003)BAnd Then There Were None (1945)B0And Your Mother Too (Y tu mamá también) (2001)BAnd the Band Played On (1993)B+And the Ship Sails On (E la nave va) (1983)B-Andalusian Dog, An (Chien andalou, Un) (1929)BAndre (1994)B%Andrei Rublev (Andrey Rublyov) (1969)B#Andrew Dice Clay: Dice Rules (1991)BAndroid (1982)BAndromeda Strain, The (1971)BAngel Baby (1995)BAngel Eyes (2001)BAngel Heart (1987)BAngel at My Table, An (1990)B%Angel's Egg (Tenshi no tamago) (1985)BAngel-A (2005)BAngela's Ashes (1999)BAngels & Demons (2009)BAngels and Insects (1995)BAngels in the Outfield (1994)BAngels with Dirty Faces (1938)BAngels' Share, The (2012)BAnger Management (2003)BAngie (1994)B$Angriest Man in Brooklyn, The (2014)BAngry Red Planet, The (1959)BAngst  (1983)BAngus (1995)B)Angus, Thongs and Perfect Snogging (2008)BAnimal Crackers (1930)BAnimal Factory (2000)BAnimal Farm (1954)BAnimal House (1978)BAnimal, The (2001)B#Animals are Beautiful People (1974)BAnimatrix, The (2003)BAnna Christie (1930)BAnna Karenina (1935)BAnna Karenina (1997)BAnna Karenina (2012)BAnna and the King (1999)BAnnabelle (2014)BAnnabelle: Creation (2017)BAnnapolis (2006)BAnne Frank Remembered (1995)BAnne of Green Gables (1985)B@Anne of Green Gables: The Sequel (a.k.a. Anne of Avonlea) (1987)B Anne of the Thousand Days (1969)BAnnie (1982)BAnnie Get Your Gun (1950)BAnnie Hall (1977)BAnnihilation (2018)BAnniversary Party, The (2001)BAnomalisa (2015)BAnother 48 Hrs. (1990)BAnother Cinderella Story (2008)BAnother Earth (2011)BAnother Gay Movie (2006)BAnother Stakeout (1993)BAnother Thin Man (1939)BAnother Woman (1988)BAnt Bully, The (2006)BAnt-Man (2015)BAnt-Man and the Wasp (2018)BAnthony Adverse (1936)BAnti-Social (2015)BAntichrist (2009)BAntitrust (2001)BAntonia's Line (Antonia) (1995)BAntonio Gaudí (1985)BAntwone Fisher (2002)BAntz (1998)B Anvil! The Story of Anvil (2008)BAny Given Sunday (1999)BAny Which Way You Can (1980)BAnything Else (2003)B#Anything for Her (Pour elle) (2008)BAnything for Love (2016)BAnywhere But Here (1999)BApartment, The (1960)B'Apartment, The (Appartement, L') (1996)BApocalypse Now (1979)BApocalypto (2006)BApollo 13 (1995)BApollo 18 (2011)BApostle, The (1997)BAppaloosa (2008)B+Apple Dumpling Gang Rides Again, The (1979)BApple Dumpling Gang, The (1975)BApple, The (Sib) (1998)BApplesauce (2015)BAppleseed (Appurushîdo) (2004)BApril Fool's Day (1986)BApril Morning (1988)BApt Pupil (1998)B;Aqua Teen Hunger Force Colon Movie Film for Theaters (2007)BAquamarine (2006)BArachnophobia (1990)BArarat (2002)BAre We Done Yet? (2007)BAre We There Yet? (2005)BAre You Scared? (2006)BArgo (2012)B#Ari Shaffir: Double Negative (2017)BAriel (1988)BAristocats, The (1970)BAristocrats, The (2005)BArizona Dream (1993)BArlington Road (1999)BArmageddon (1998)BArmed and Dangerous (1986)B'Armour of God (Long xiong hu di) (1987)BOArmour of God II: Operation Condor (Operation Condor) (Fei ying gai wak) (1991)BArmy of Darkness (1993)B,Army of Shadows (L'armée des ombres) (1969)B"Around the World in 80 Days (1956)B"Around the World in 80 Days (2004)BArrival (2016)BArrival, The (1996)BArsenic and Old Lace (1944)BArt School Confidential (2006)BArt of Getting By, The (2011)BArt of War, The (2000)BArt of the Steal, The (2009)BArt of the Steal, The (2013)BArtemisia (1997)BArthur (1981)BArthur (2011)BArthur 2: On the Rocks (1988)BArthur Christmas (2011)BAs Above, So Below (2014)BAs Good as It Gets (1997)BHAs I Was Moving Ahead Occasionally I Saw Brief Glimpses of Beauty (2000)BAs You Like It (2006)B#Ascent, The (Voskhozhdeniye) (1977)BAshby (2015)B-Ashes and Diamonds (Popiól i diament) (1958)B'Ashes of Time (Dung che sai duk) (1994)BAsk the Dust (2006)BAspen Extreme (1993)BAsphalt Jungle, The (1950)BAsphyx, The (1973)BAssassin's Creed (2016)BAssassination (1987)BAssassination Tango (2002)BBAssassination of Jesse James by the Coward Robert Ford, The (2007)B*Assassination of Richard Nixon, The (2004)B/Assassination of a High School President (2008)BAssassins (1995)BAssault on Precinct 13 (1976)BAssault on Precinct 13 (2005)BAssembly (Ji jie hao) (2007) BAssignment, The (1997)BFAsterix & Obelix vs. Caesar (Astérix et Obélix contre César) (1999)B\Asterix & Obelix: God Save Britannia (Astérix et Obélix: Au service de Sa Majesté) (2012)BTAsterix & Obelix: Mission Cleopatra (Astérix & Obélix: Mission Cléopâtre) (2002)B6Asterix and Cleopatra (Astérix et Cléopâtre) (1968)B8Asterix and the Vikings (Astérix et les Vikings) (2006)BBAsterix at the Olympic Games (Astérix aux jeux olympiques) (2008)BTAsterix in America (a.k.a Asterix Conquers America) (Astérix et les Indiens) (1994)BEAsterix: The Land of the Gods (Astérix: Le domaine des dieux) (2014)BAstronaut Farmer, The (2007)BAstronaut's Wife, The (1999)BAt Close Range (1986)BAt First Sight (1999)BAt Middleton (2013)BAt the Circus (1939)BAtalante, L' (1934)BAtlantic City (1980)B Atlantis: The Lost Empire (2001)BAtlas Shrugged: Part 1 (2011)BAtomic Blonde (2017)BAtomic Brain, The (1963)BAtomic Cafe, The (1982)BAtomic Submarine, The (1959)BAtonement (2007)BAtragon (Kaitei Gunkan) (1963)B"Attack of the 50 Foot Woman (1958)B"Attack of the Crab Monsters (1957)B"Attack of the Giant Leeches (1959)B%Attack of the Killer Tomatoes! (1978)B"Attack of the Puppet People (1958)BAttack the Block (2011)B&Attila (Attila Flagello di Dio) (1982)BAu Hasard Balthazar (1966)BAu revoir les enfants (1987)BAudition (Ôdishon) (1999)BAudrey Rose (1977)BAugust Rush (2007)BAuntie Mame (1958)BAustenland (2013)B"Austin Powers in Goldmember (2002)B2Austin Powers: International Man of Mystery (1997)B,Austin Powers: The Spy Who Shagged Me (1999)BAustralia (2008)BAuto Focus (2002)BAutumn Marathon (1979)B#Autumn Sonata (Höstsonaten) (1978)B"Autumn Spring (Babí léto) (2001)B(Autumn Tale, An (Conte d'automne) (1998)BAutumn in New York (2000)BAutómata (Automata) (2014)BAvalanche (1978)BAvalon (1990)BAvalon (2001)BAvanti! (1972)BAvatar (2009)BAvengers, The (1998)BAvengers, The (2012)BAvengers: Age of Ultron (2015)B&Avengers: Infinity War - Part I (2018)BAviator, The (2004)B%Avventura, L' (Adventure, The) (1960)BAwake (2007)BAwakening, The (1980)BAwakenings (1990)BAway We Go (2009)BAway from Her (2006)BAwful Truth, The (1937)B Awfully Big Adventure, An (1995)BAzumi (2003)BB*A*P*S (1997)BB. Monkey (1998)B
B/W (2015)BBASEketball (1998)BBMX Bandits (1983)BBURN-E (2008)B=Baadasssss! (How to Get the Man's Foot Outta Your Ass) (2003)B"Baader Meinhof Komplex, Der (2008)BBaarìa (2009)BBabadook, The (2014)BBabe (1995)BBabe, The (1992)BBabe: Pig in the City (1998)BBabel (2006)BBabes in Toyland (1934)BBabes in Toyland (1961)B+Babette's Feast (Babettes gæstebud) (1987)BBaby Boom (1987)BBaby Boy (2001)BBaby Driver (2017)BBaby Geniuses (1999)BBaby Mama (2008)BBaby's Day Out (1994)BBaby, The (1973)BBaby-Sitters Club, The (1995)B(Baby... Secret of the Lost Legend (1985)B	Babylon 5B Babylon 5: A Call to Arms (1999)B"Babylon 5: In the Beginning (1998)BBabylon 5: The Gathering (1993)BIBabylon 5: The Legend of the Rangers: To Live and Die in Starlight (2002)B5Babylon 5: The Lost Tales - Voices in the Dark (2007)B$Babylon 5: The River of Souls (1998)BBabylon 5: Thirdspace (1998)BBabylon A.D. (2008)BBabysitter, The (1995)BBachelor Party (1984)B(Bachelor and the Bobby-Soxer, The (1947)BBachelor, The (1999)BBack to School (1986)BBack to the Beach (1987)BBack to the Future (1985)B!Back to the Future Part II (1989)B"Back to the Future Part III (1990)BBack-up Plan, The (2010)BBackbeat (1993)BBackdraft (1991)BBad Asses (Bad Ass 2) (2014)BBad Asses on the Bayou (2015)BBad Boy Bubby (1993)BBad Boys (1995)BBad Boys II (2003)BBad Company (1995)BBad Company (2002)BBad Day at Black Rock (1955)B)Bad Education (La mala educación) (2004)BBad Girls (1994)BBad Karma (2012)BBad Lieutenant (1992)B/Bad Lieutenant: Port of Call New Orleans (2009)BBad Milo (Bad Milo!) (2013)BBad Moms (2016)BBad News Bears (2005)BBad News Bears, The (1976)BBad Santa (2003)BBad Santa 2 (2016)BBad Seed, The (1956)BBad Taste (1987)BBad Teacher (2011)BBad Words (2013)B!Bad and the Beautiful, The (1952)BBadlands (1973)BBag Man, The (2014)B%Bagdad Cafe (Out of Rosenheim) (1987)BBait (2000)BBakuman (2015)BBalance (1989)B#Ballad of Jack and Rose, The (2005)B1Ballad of Narayama, The (Narayama bushiko) (1983)B Ballistic: Ecks vs. Sever (2002)B'Balls Out: Gary the Tennis Coach (2009)BBalls of Fury (2007)BBalto (1995)BBamba, La (1987)BBambi (1942)BBamboozled (2000)BBanana Joe (1981)BBananas (1971)BBand Wagon, The (1953)BBand of Brothers (2001)B(Band of Outsiders (Bande à part) (1964)BBand of the Hand (1986)B,Band's Visit, The (Bikur Ha-Tizmoret) (2007)BBandidas (2006)BBandits (2001)BBang, Bang, You're Dead (2002)BBanger Sisters, The (2002)BBangkok Dangerous (2008)BBank Dick, The (1940)BBank Job, The (2008)BBaraka (1992)BBaran (2001)BBarb Wire (1996)BBarbarella (1968)B8Barbarian Invasions, The (Les invasions barbares) (2003)BBarbarians at the Gate (1993)BBarbershop (2002)B%Barbershop 2: Back in Business (2004)BBarbershop: The Next Cut (2016)BBarcelona (1994)BBarefoot (2014)BBarefoot Contessa, The (1954)BBarefoot Executive, The (1971)BBarefoot in the Park (1967)BBarely Lethal (2015)BBarfly (1987)B/Barking Dogs Never Bite (Flandersui gae) (2000)BBarney's Great Adventure (1998)BBarney's Version (2010)BBarry Lyndon (1975)BBart Got a Room (2008)BBartleby (2001)BBarton Fink (1991)BBasic (2003)BBasic Instinct (1992)BBasic Instinct 2 (2006)BBasket Case (1982)BBasketball Diaries, The (1995)BBasquiat (1996)BBastard Out of Carolina (1996)BBat*21 (1988)BBatman & Robin (1997)BBatman (1966)BBatman (1989)BBatman Begins (2005)B)Batman Beyond: Return of the Joker (2000)BBatman Forever (1995)BBatman Returns (1992)B)Batman v Superman: Dawn of Justice (2016)BBatman vs. Robin (2015)B!Batman/Superman Movie, The (1998)B Batman: Assault on Arkham (2014)BBatman: Gotham Knight (2008)B#Batman: Mask of the Phantasm (1993)B&Batman: Mystery of the Batwoman (2003)B.Batman: The Dark Knight Returns, Part 1 (2012)B.Batman: The Dark Knight Returns, Part 2 (2013)BBatman: The Killing Joke (2016)B!Batman: Under the Red Hood (2010)BBatman: Year One (2011)BBats (1999)BBattle Beyond the Stars (1980)B*Battle Creek Brawl (Big Brawl, The) (1980)BBattle For Sevastopol (2015)BBattle Planet (2008)B&Battle Royale (Batoru rowaiaru) (2000)B?Battle Royale 2: Requiem (Batoru rowaiaru II: Chinkonka) (2003)BBattle for Haditha (2007)B(Battle for the Planet of the Apes (1973)BBattle in Seattle (2007)B6Battle of Algiers, The (La battaglia di Algeri) (1966)B$Battle of Shaker Heights, The (2003)BBattle: Los Angeles (2011)BBattlefield Earth (2000)B<Battles Without Honor & Humanity (Jingi naki tatakai) (1973)BBattleship (2012)BBattleship Potemkin (1925)BBattlestar Galactica (2003)B"Battlestar Galactica: Razor (2007)B%Battlestar Galactica: The Plan (2009)BBaxter (1989)BBaxter, The (2005)BBay, The (2012)BBaywatch (2017)BBe Cool (2005)BBe Kind Rewind (2008)BBeach Blanket Bingo (1965)BBeach, The (2000)BBeaches (1988)BBean (1997)BBear, The (Ours, L') (1988)BBeast Within, The (1982)B%Beast of War, The (Beast, The) (1988)BBeastly (2011)BBeastmaster, The (1982)BBeasts of No Nation (2015)B"Beasts of the Southern Wild (2012)BBeat Street (1984)BLBeat That My Heart Skipped, The (battre mon coeur s'est arrêté, De) (2005)BBeat the Devil (1953)B$Beautician and the Beast, The (1997)BBeautiful (2000)BBeautiful Boy (2010)BBeautiful Creatures (2000)BBeautiful Creatures (2013)BBeautiful Girls (1996)BBeautiful Losers (2008)BBeautiful Mind, A (2001)BBeautiful People (1999)BBeautiful Thing (1996)BBeauty Shop (2005)BBeauty and the Beast (1991)BBeauty and the Beast (2017)B2Beauty and the Beast (La belle et la bête) (1946)B4Beauty and the Beast: The Enchanted Christmas (1997)B(Beauty of the Day (Belle de jour) (1967)B&Beavis and Butt-Head Do America (1996)BBebe's Kids (1992)BBecause I Said So (2007)BBecause of Winn-Dixie (2005)BBecoming Jane (2007)BBed of Roses (1996)BBedazzled (1967)BBedazzled (2000)BBedknobs and Broomsticks (1971)BBedrooms & Hallways (1998)BBedtime Stories (2008)BBee Movie (2007)BBeer League (2006)BBeerfest (2006)BBeethoven (1992)BBeethoven's 2nd (1993)BBeetlejuice (1988)BBefore Midnight (2013)BBefore Night Falls (2000)BBefore Sunrise (1995)BBefore Sunset (2004)BBefore We Go (2014)BBefore and After (1996)B)Before the Devil Knows You're Dead (2007)B8Before the Fall (NaPolA - Elite für den Führer) (2004)B%Before the Rain (Pred dozhdot) (1994)BBegin Again (2013)BBeginners (2010)BBeginning of the End (1957)BBegotten (1990)BBehind Enemy Lines (2001)B*Behind Enemy Lines II: Axis of Evil (2006)BBehind the Candelabra (2013)B1Behind the Mask: The Rise of Leslie Vernon (2006)B-Beijing Bicycle (Shiqi sui de dan che) (2001)B(Being Elmo: A Puppeteer's Journey (2011)BBeing Human (1993)BBeing John Malkovich (1999)BBeing Julia (2004)BBeing There (1979)BBeliever, The (2001)BBelievers, The (1987)BBell, Book and Candle (1958)BBella (2006)BBelladonna of Sadness (1973)BBelle époque (1992)BBellflower (2011)BBells of St. Mary's, The (1945)BBelly (1998)BBeloved (1998)BBelow (2002)BBen X (2007)BBen-Hur (1959)B$Ben-Hur: A Tale of the Christ (1925)BBen-hur (2016)BBenchwarmers, The (2006)BBend It Like Beckham (2002)B%Beneath the Planet of the Apes (1970)BBenji (1974)BBenji the Hunted (1987)BBenny & Joon (1993)BBent (1997)BBeowulf & Grendel (2005)BBeowulf (1999)BBeowulf (2007)BBerlin Calling (2008)BBernie (1996)BBernie (2011)B#Besieged (a.k.a. L' Assedio) (1998)BBest Defense (1984)B&Best Exotic Marigold Hotel, The (2011)B+Best Little Whorehouse in Texas, The (1982)BBest Man, The (1999)B0Best Man, The (Testimone dello sposo, Il) (1998)BBest Men (1997)B-Best Offer, The (Migliore offerta, La) (2013)BBest Seller (1987)BBest Worst Movie (2009)B#Best Years of Our Lives, The (1946)BBest in Show (2000)B/Best of Youth, The (La meglio gioventù) (2003)BBest of the Best (1989)B*Best of the Best 3: No Turning Back (1995)BBetrayed (1988)BBetsy's Wedding (1990)B&Better Living Through Chemistry (2014)B&Better Living Through Circuitry (1999)BBetter Luck Tomorrow (2002)BBetter Off Dead... (1985)BBetter Than Chocolate (1999)BBetter Than Sex (2000)B4Better Tomorrow II, A (Ying hung boon sik II) (1987)B.Better Tomorrow, A (Ying hung boon sik) (1986)BBetting on Zero (2016)B,Between Your Legs (Entre las piernas) (1999)BBetween the Folds (2008)BBeverly Hillbillies, The (1993)BBeverly Hills Chihuahua (2008)BBeverly Hills Cop (1984)BBeverly Hills Cop II (1987)BBeverly Hills Cop III (1994)BBeverly Hills Ninja (1997)BBewitched (2005)BBeyond Bedlam (1993)BBeyond Borders (2003)BBeyond Rangoon (1995)BBeyond Re-Animator (2003)B+Beyond Silence (Jenseits der Stille) (1996)B1Beyond the Clouds (Al di là delle nuvole) (1996)BBeyond the Mat (1999)B$Beyond the Poseidon Adventure (1979)BBeyond the Sea (2004)B%Beyond the Valley of the Dolls (1970)BBhaji on the Beach (1993)BBicentennial Man (1999)BdBicycle Thieves (a.k.a. The Bicycle Thief) (a.k.a. The Bicycle Thieves) (Ladri di biciclette) (1948)B
Big (1988)BBig Bang, The (2011)BBig Bird Cage, The (1972)B%Big Blue, The (Grand bleu, Le) (1988)B9Big Boss, The (Fists of Fury) (Tang shan da xiong) (1971)BBig Bounce, The (2004)BBig Bully (1996)BBig Business (1988)BBig Chill, The (1983)BBig Country, The (1958)BBig Daddy (1999)B3Big Deal on Madonna Street (I Soliti Ignoti) (1958)BBig Doll House, The (1971)BBig Easy, The (1987)BBig Eden (2000)BBig Empty, The (2003)BBig Eyes (2014)BBig Fat Liar (2002)BBig Fish (2003)BBig Green, The (1995)BBig Hero 6 (2014)BBig Hit, The (1998)BBig Kahuna, The (2000)BBig Lebowski, The (1998)BBig Momma's House (2000)BBig Momma's House 2 (2006)B(Big Mommas: Like Father, Like Son (2011)BBig Night (1996)BBig One, The (1997)BBig Red One, The (1980)BBig Short, The (2015)BBig Sleep, The (1946)BBig Stan (2007)BBig Tease, The (1999)BBig Top Pee-Wee (1988)BBig Top Scooby-Doo! (2012)BBig Trouble (2002)B"Big Trouble in Little China (1986)BBig Wednesday (1978)BBig Year, The (2011)B Bigger, Stronger, Faster* (2008)BBiggles (1986)BBiker Boyz (2003)BBikini Beach (1964)B!Bill & Ted's Bogus Journey (1991)B'Bill & Ted's Excellent Adventure (1989)B-Bill Burr: I'm Sorry You Feel That Way (2014)BBill Burr: Let It Go (2010)B#Bill Burr: Walk Your Way Out (2017)B#Bill Burr: Why Do I Do This? (2008)B-Bill Burr: You People Are All the Same (2012)BBill Cosby, Himself (1983)BBill Cunningham New York (2011)BBill Hicks: Revelations (1993)BBillabong Odyssey (2003)BBilly Bathgate (1991)BBilly Elliot (2000)BBilly Jack (1971)B$Billy Jack Goes to Washington (1977)BBilly Liar (1963)BBilly Madison (1995)BBiloxi Blues (1988)BBio-Dome (1996)B6Bird People in China, The (Chûgoku no chôjin) (1998)BBird on a Wire (1990)BPBird with the Crystal Plumage, The (Uccello dalle piume di cristallo, L') (1970)BBirdcage, The (1996)B!Birdemic: Shock and Terror (2010)BBirdman of Alcatraz (1962)B7Birdman: Or (The Unexpected Virtue of Ignorance) (2014)BBirds, The (1963)BBirdy (1984)BBirth (2004)BBirth of a Nation, The (1915)BBirthday Girl (2001)BBishop's Wife, The (1947)BBitter Lake (2015)BBitter Moon (1992)B.Bittersweet Life, A (Dalkomhan insaeng) (2005)BBiutiful (2010)BBlacKkKlansman (2018)BBlack Beauty (1994)BBlack Book (Zwartboek) (2006)B)Black Butler: Book of the Atlantic (2017)B4Black Cat, White Cat (Crna macka, beli macor) (1998)BBlack Cauldron, The (1985)BBlack Christmas (1974)BBlack Christmas (2006)BBlack Dahlia, The (2006)BBlack Dynamite (2009)BBlack Hawk Down (2001)BBlack Hole, The (1979)BBlack Knight (2001)BBlack Mask (Hak hap) (1996)BBlack Mass (2015)BBlack MirrorB$Black Mirror: White Christmas (2014)BBlack Narcissus (1947)B"Black Orpheus (Orfeu Negro) (1959)BBlack Panther (2017)BBlack Rain (1989)BBlack Robe (1991)B/Black Sabbath (Tre volti della paura, I) (1963)BBlack Sea (2015)BBlack Sheep (1996)BBlack Sheep (2006)BBlack Snake Moan (2006)B"Black Stallion Returns, The (1983)BBlack Stallion, The (1979)BBlack Swan (2010)B3Black Tar Heroin: The Dark End of the Street (2000)BBlack Widow (1987)BBlackadder Back & Forth (1999)B#Blackadder's Christmas Carol (1988)BBlackbeard's Ghost (1968)BBlackboard Jungle (1955)BBlackfish (2013)BBlackhat (2015)BBlackrock (1997)BBlade (1998)BBlade II (2002)BBlade Runner (1982)BBlade Runner 2049 (2017)BBlade: Trinity (2004)BBlades of Glory (2007)BBlair Witch (2016)BBlair Witch Project, The (1999)BBlame It on Rio (1984)BBlame It on the Bellboy (1992)BBlank Check (1994)BBlankman (1994)BBlast from the Past (1999)BBlaze (1989)BBlazing Saddles (1974)BBleeder (1999)BBlended (2014)BBless the Child (2000)BBlind Date (1984)BBlind Date (1987)BBlind Fury (1989)BBlind Side, The  (2009)BMBlind Spot: Hitler's Secretary (Im toten Winkel - Hitlers Sekretärin) (2002)B1Blind Swordsman: Zatoichi, The (Zatôichi) (2003)BBlindness (2008)BBling Ring, The (2013)BBlink (1994)BBlinkyTM (2011)BBliss (1997)BBliss (2012)BBlitz (2011)BBlob, The (1958)BBlob, The (1988)B8Block Party (a.k.a. Dave Chappelle's Block Party) (2005)BBlockers (2018)BBlood Beach (1981)B&Blood Creek (a.k.a. Town Creek) (2009)BBlood Diamond (2006)BBlood Feast (1963)BBlood In, Blood Out (1993)BBlood Simple (1984)BBlood Work (2002)BBlood and Chocolate (2007)B$Blood and Wine (Blood & Wine) (1996)B0Blood for Dracula (Andy Warhol's Dracula) (1974)B7Blood of Heroes, The (Salute of the Jugger, The) (1989)B0Blood of the Beasts (Sang des bêtes, Le) (1949)BBlood: The Last Vampire (2000)BBlood: The Last Vampire (2009)BBloodmoon (1997)BBloodsport (1988)B;Bloodsport 2 (a.k.a. Bloodsport II: The Next Kumite) (1996)BBloodsport III (1996)B"Bloodsport: The Dark Kumite (1999)BBloodsucking Bastards (2015)BBloody Sunday (2002)BBlow (2001)BBlow Out (1981)B"Blow-Out (La grande bouffe) (1973)BBlow-Up (Blowup) (1966)BBlown Away (1994)B)Blue Angel, The (Blaue Engel, Der) (1930)BBlue Car (2002)BBlue Chips (1994)B)Blue Collar Comedy Tour: The Movie (2003)BBlue Crush (2002)BBlue Exorcist: The Movie (2012)B2Blue Is the Warmest Color (La vie d'Adèle) (2013)BBlue Jasmine (2013)BBlue Juice (1995)BBlue Lagoon, The (1980)B0Blue Mountain State: The Rise of Thadland (2015)BBlue Planet II (2017)BBlue Ruin (2013)BBlue Sky (1994)BBlue Steel (1990)BBlue Streak (1999)BBlue Thunder (1983)BBlue Valentine (2010)BBlue Velvet (1986)BBlue in the Face (1995)BBlueberry (2004)BBlues Brothers 2000 (1998)BBlues Brothers, The (1980)BBo Burnham: Make Happy (2016)BBoat Trip (2003)B Bob & Carol & Ted & Alice (1969)BBob Roberts (1992)BBob le Flambeur (1955)BBobby (2006)B$Bobby Jones, Stroke of Genius (2004)BBobik Visiting Barbos (1977)BBoccaccio '70 (1962)BBodies, Rest & Motion (1993)BBody (2015)BBody Double (1984)BBody Heat (1981)BBody Parts (1991)BBody Shots (1999)BBody Snatcher, The (1945)BBody Snatchers (1993)BBody of Evidence (1993)BBody of Lies (2008)BBodyguard, The (1992)BBogus (1996)BBoiler Room (2000)BBoiling Point (1993)BBollywood/Hollywood (2002)BBolt (2008)BBone Collector, The (1999)B&Bone Man, The (Der Knochenmann) (2009)BBone Tomahawk (2015)BBones (2001)BBonfire of the Vanities (1990)BBoniface's Holiday (1965)BBonnie and Clyde (1967)BBoogeyman (2005)BBoogeyman, The (1980)BBoogie Nights (1997)BBook Thief, The (2013)BBook of Eli, The (2010)BBook of Love (1990)B%Book of Shadows: Blair Witch 2 (2000)BBoomerang (1992)B.Boondock Saints II: All Saints Day, The (2009)BBoondock Saints, The (2000)BBoot, Das (Boat, The) (1981)BBootleggers (1961)BBooty Call (1997)BZBorat: Cultural Learnings of America for Make Benefit Glorious Nation of Kazakhstan (2006)BBorn Free (1966)BBorn Yesterday (1950)BBorn in East L.A. (1987)BBorn into Brothels (2004)B!Born on the Fourth of July (1989)BBorn to Be Wild (1995)BBorn to Kill (1947)BBorrowers, The (1997)B5Boss of It All, The (Direktøren for det hele) (2006)BBossa Nova (2000)BBottle Rocket (1996)B8Boudu Saved From Drowning (Boudu sauvé des eaux) (1932)BBounce (2000)BBound (1996)BBoundaries (2018)BBounty Hunter, The (2010)BBounty, The (1984)BBourne Identity, The (1988)BBourne Identity, The (2002)BBourne Legacy, The (2012)BBourne Supremacy, The (2004)BBourne Ultimatum, The (2007)BBow, The (Hwal) (2005)BBowfinger (1999)BBowling for Columbine (2002)BBoxcar Bertha (1972)BBoxer, The (1997)BBoxing Helena (1993)B
Boy (2010)BBoy A (2007)BBoy Eats Girl (2005)BBoy Meets Girl (1984)BBoy Meets Girl (2015)BBoy Who Could Fly, The (1986)BBoy and His Dog, A (1975)BHBoy in the Striped Pajamas, The (Boy in the Striped Pyjamas, The) (2008)BBoyhood (2014)BBoys (1996)BBoys Don't Cry (1999)BBoys Life (1995)BBoys Town (1938)BBoys and Girls (2000)BBoys from Brazil, The (1978)BBoys of Baraka, The (2005)BBoys of St. Vincent, The (1992)BBoys on the Side (1995)BBoys, The (1998)BBoyz N the Hood (1991)B&Braddock: Missing in Action III (1988)BBrady Bunch Movie, The (1995)B@Brain Smasher... A Love Story (Bouncer and the Lady, The) (1993)B#Brain That Wouldn't Die, The (1962)BBrainstorm (1983)BBrainstorm (2001)BBrake (2012)B*Branded to Kill (Koroshi no rakuin) (1967)BBrandon Teena Story, The (1998)BBrass Teapot, The (2012)BBrassed Off (1996)BBrave (2012)B Brave Little Toaster, The (1987)BBrave New World (1998)BBrave One, The (2007)BBraveheart (1995)BBrazil (1985)BBreach (2007)B.Bread and Chocolate (Pane e cioccolata) (1973)BBread and Roses (2000)B)Bread and Tulips (Pane e tulipani) (2000)BBreak-Up, The (2006)BBreakdown (1997)BBreaker Morant (1980)BBreakfast Club, The (1985)BBreakfast at Tiffany's (1961)BBreakfast on Pluto (2005)BBreakfast with Scot (2007)BBreakin' (1984)B$Breakin' 2: Electric Boogaloo (1984)BBreakin' All the Rules (2004)BBreaking Away (1979)BBreaking the Waves (1996)BBreathe (2014)BBreathless (1983)B&Breathless (À bout de souffle) (1960)BBreed, The (2006)BBrewster's Millions (1985)B%Brice Man, The (Brice de Nice) (2005)BBrick (2005)BBrick Mansions (2014)BBride & Prejudice (2004)BBride Wars (2009)B'Bride of Chucky (Child's Play 4) (1998)B9Bride of Frankenstein, The (Bride of Frankenstein) (1935)BBride of Re-Animator (1990)BBridesmaids (2011)BBridge Too Far, A (1977)BBridge at Remagen, The (1969)BBridge of Spies (2015)B$Bridge on the River Kwai, The (1957)BBridge to Terabithia (2007)BBridge, The (2006)B%Bridges of Madison County, The (1995)BBridget Jones's Baby (2016)BBridget Jones's Diary (2001)B(Bridget Jones: The Edge of Reason (2004)BBrief Encounter (1946)BBrief History of Time, A (1991)BBrigadoon (1954)BBrigham City (2001)BBright (2017)BBright Lights, Big City (1988)BBright Star (2009)BBrighton Beach Memoirs (1986)BBring It On (2000)BBring It On Again (2004)B"Bring It On: All or Nothing (2006)B'Bring It On: Fight to the Finish (2009)B#Bring It On: In It To Win It (2007)B*Bring Me the Head of Alfredo Garcia (1974)BBringing Down the House (2003)BBringing Out the Dead (1999)BBringing Up Baby (1938)BBroadcast News (1987)BBroadway Danny Rose (1984)BBroadway Melody, The (1929)BBrokeback Mountain (2005)BBrokedown Palace (1999)BBroken (2012)BBroken Arrow (1950)BBroken Arrow (1996)BBroken English (1996)BBroken Flowers (2005)BBroken Hearts Club, The (2000)B&Broken Wings (Knafayim Shvurot) (2002)BBronco Billy (1980)BBronson (2009)BBronx Tale, A (1993)BBrood, The (1979)BBrooklyn (2015)BBros Before Hos (2013)BBrother (2000)BBrother (Brat) (1997)BBrother 2 (Brat 2) (2000)BBrother Bear (2003)B'Brother from Another Planet, The (1984)BBrother's Keeper (1992)B4Brotherhood of the Wolf (Pacte des loups, Le) (2001)BBrothers (2009)BBrothers (Brødre) (2004)BBrothers Bloom, The (2008)BBrothers Grimm, The (2005)BBrothers McMullen, The (1995)BBrothers Solomon, The (2007)BBrown Bunny, The (2003)BBrown Sugar (2002)BBrowning Version, The (1994)BBrubaker (1980)BBruce Almighty (2003)B%Bruce Lee: A Warrior's Journey (2000)BBrüno (Bruno) (2009)BBubba Ho-tep (2002)BBubble Boy (2001)B&Buck Rogers in the 25th Century (1979)BBucket List, The (2007)BBucket Of Blood, A (1959)BBuddy (1997)BBuddy Boy (1999)BBuddy Holly Story, The (1978)BBuena Vista Social Club (1999)B&Buffalo '66 (a.k.a. Buffalo 66) (1998)BBuffalo Soldiers (2001)BBuffy the Vampire Slayer (1992)B
Bug (2007)BBug's Life, A (1998)BBugsy (1991)BBugsy Malone (1976)BBull Durham (1988)BBullet in the Head (1990)BBullet to the Head (2012)BBulletproof (1996)BBulletproof Monk (2003)BBullets Over Broadway (1994)BBullitt (1968)BBully (2001)BBully (2011)BBulworth (1998)B#Bungo Stray Dogs: Dead Apple (2018)BBunny (1998)BBunny Lake Is Missing (1965)BBunraku (2010)BBurden of Dreams (1982)BBurglar (1987)BBuried (2010)BBurke and Hare (2010)BBurlesque (2010)BVBurma VJ: Reporting from a Closed Country (Burma VJ: Reporter i et lukket land) (2008)BBurn After Reading (2008)BBurnt (2015)BBurnt Offerings (1976)B.Burnt by the Sun (Utomlyonnye solntsem) (1994)BBurrowers, The (2008)BBus 174 (Ônibus 174) (2002)BBush's Brain (2004)BBushwhacked (1995)B!Business of Strangers, The (2001)BBuster's Mal Heart (2017)BBustin' Loose (1981)BBut I'm a Cheerleader (1999)B)Butch Cassidy and the Sundance Kid (1969)BButcher Boy, The (1997)BButcher's Wife, The (1991)BButterfield 8 (1960)BButterflies Are Free (1972)B-Butterfly (La lengua de las mariposas) (1999)BBuzzard (2015)BBy the Gun (2014)BBy the Law (1926)BByzantium (2012)BC.R.A.Z.Y. (2005)BCB4 - The Movie (1993)BCHiPS (2017)B	CQ (2001)BCabaret (1972)BCabin Boy (1994)BCabin Fever (2002)BCabin in the Woods, The (2012)BDCabinet of Dr. Caligari, The (Cabinet des Dr. Caligari., Das) (1920)BCable Guy, The (1996)BCaddyshack (1980)BCaddyshack II (1988)BCadillac Man (1990)BCafé Society (2016)BCage Dive (2017)BCage aux Folles, La (1978)BCaine Mutiny, The (1954)BCake (2014)BCalamity Jane (1953)BCalcium Kid, The (2004)BCalendar Girl (1993)BCalendar Girls (2003)BCalifornia Split (1974)BCaligula (1979)BCall Me by Your Name (2017)BCall, The (2013)BCallas Forever (2002)BCalvary (2014)BCamelot (1967)BCamera Buff (Amator) (1979)BCamille (1936)BCamille Claudel (1988)BCamino (2016)BCamp (2003)BCamp Nowhere (1994)BCamp Rock (2008)BCamp X-Ray (2014)BCampaign, The (2012)BCampfire Tales (1997)BCampus Man (1987)BCan't Buy Me Love (1987)BCan't Hardly Wait (1998)BCan't Stop the Music (1980)BCanadian Bacon (1995)BCandidate, The (1972)BCandleshoe (1977)BCandy (2006)BCandyman (1992)B"Candyman 3: Day of the Dead (1999)B&Candyman: Farewell to the Flesh (1995)BCannibal Holocaust (1980)BCannonball Run II (1984)BCannonball Run, The (1981)BCape Fear (1962)BCape Fear (1991)BCapote (2005)BCaptain America (1979)BCaptain America (1990)B)Captain America II: Death Too Soon (1979)B!Captain America: Civil War (2016)B)Captain America: The First Avenger (2011)B*Captain America: The Winter Soldier (2014)BCaptain Blood (1935)B!Captain Corelli's Mandolin (2001)BCaptain Fantastic (2016)B&Captain Horatio Hornblower R.N. (1951)BCaptain Newman, M.D. (1963)BCaptain Phillips (2013)BCaptain Ron (1992)B/Captain Underpants: The First Epic Movie (2017)BCaptains Courageous (1937)BCaptive, The (2014)BCapturing the Friedmans (2003)BCar Wash (1976)B*Carabineers, The (Carabiniers, Les) (1963)BCarandiru (2003)B,Care Bears Movie II: A New Generation (1986)BCare Bears Movie, The (1985)BCareer Girls (1997)BCareer Opportunities (1991)B Careful What You Wish For (2015)BCargo (2009)BCarlito's Way (1993)BCarnage (2011)BCarnal Knowledge (1971)BCarnival Magic (1981)BCarnival of Souls (1962)BCarnosaur (1993)BCarnosaur 2 (1995)B"Carnosaur 3: Primal Species (1996)BCarol (2015)BCarpool (1996)BCarrie (1976)BCarrie (2002)BCarrie (2013)B$Carry On Don't Lose Your Head (1966)BCarry on Cabby (1963)BCarry on Cruising (1962)BCars (2006)BCars 2 (2011)BCars 3 (2017)BCasablanca (1942)BCasanova (2005)BCase 39 (2009)BCashback (2004)BCashback (2006)BCasino (1995)BCasino Jack (2010)BCasino Royale (1967)BCasino Royale (2006)BCasper (1995)BCasper Meets Wendy (1998)BCassandra's Dream (2007)BCasshern (2004)BCast Away (2000)B-Castaway on the Moon (Kimssi pyoryugi) (2009)BCastle Freak (1995)BCastle, The (1997)BCasualties of War (1989)BCat Ballou (1965)BCat People (1942)BCat People (1982)B*Cat Returns, The (Neko no ongaeshi) (2002)BCat Soup (Nekojiru-so) (2001)BCat and the Canary, The (1927)B Cat from Outer Space, The (1978)BCat in the Hat, The (2003)B5Cat o' Nine Tails, The (Gatto a nove code, Il) (1971)BCat on a Hot Tin Roof (1958)BCat's Eye (1985)BCat's Meow, The (2002)BCatch .44 (2011)BCatch Me If You Can (2002)BCatch That Kid (2004)BCatch a Fire (2006)BCatch and Release (2006)BCatch-22 (1970)BCatfish (2010)BCats & Dogs (2001)BCats (1998)BCats Don't Dance (1997)BCatwalk (1996)BCatwoman (2004)BCave of Forgotten Dreams (2010)BCave, The (2005)BCaveman (1981)BCaveman's Valentine, The (2001)BCecil B. DeMented (2000)BCedar Rapids (2011)B Celebration, The (Festen) (1998)BCelebrity (1998)BCell 211 (Celda 211) (2009)BCell, The (2000)BCellular (2004)BCelluloid Closet, The (1995)BCeltic Pride (1996)BCement Garden, The (1993)BCemetery Junction (2010)B*Cemetery Man (Dellamorte Dellamore) (1994)BCenter Stage (2000)BCenter of the World, The (2001)BCentral Intelligence (2016)B*Central Station (Central do Brasil) (1998)BCentury of the Self, The (2002)B)Cercle Rouge, Le (Red Circle, The) (1970)B&Certified Copy (Copie conforme) (2010)BCesar Chavez (2014)BChain Reaction (1996)BChain of Fools (2000)BChairman of the Board (1998)BChamber, The (1996)BChamp, The (1979)BChances Are (1989)BChange-Up, The (2011)BChangeling (2008)BChangeling, The (1980)BChanging Lanes (2002)BChaos (2005)BChaos Theory (2007)BChapayev (1934)BChaplin (1992)BChappie (2015)BCharacter (Karakter) (1997)BCharade (1963)BChariots of Fire (1981)BCharley Varrick (1973)BCharlie Bartlett (2007)B!Charlie Brown Christmas, A (1965)BCharlie Countryman (2013)BCharlie Wilson's War (2007)B(Charlie and the Chocolate Factory (2005)BCharlie's Angels (2000)B&Charlie's Angels: Full Throttle (2003)B#Charlie, the Lonesome Cougar (1967)BCharlotte Gray (2001)BCharlotte's Web (1973)BCharlotte's Web (2006)BCharly (1968)BChase, The (1994)BChaser, The (Chugyeogja) (2008)BChasers (1994)BChasing Amy (1997)BChasing Liberty (2004)B'Chasing Papi (a.k.a. Papi Chulo) (2003)BChasuke's Journey (2015)BChe: Part One (2008)BChe: Part Two (2008)BCheap Detective, The (1978)BCheaper by the Dozen (1950)BCheaper by the Dozen (2003)BCheaper by the Dozen 2 (2005)BCheburashka (1971)B-Cheech & Chong's The Corsican Brothers (1984)B%Cheech and Chong's Up in Smoke (1978)BChef (2014)BCherish (2002)BCherry 2000 (1987)BCherrybomb (2009)BChi-Raq (2015)BChicago (2002)BChicken Little (2005)BChicken Run (2000)BChild's Play (1988)BChild's Play 2 (1990)BChild's Play 3 (1991)BChild, The (L'enfant) (2005)B=Children Are Watching Us, The (Bambini ci guardano, I) (1944)BChildren of Dune (2003)B2Children of Heaven, The (Bacheha-Ye Aseman) (1997)B!Children of Huang Shi, The (2008)BChildren of Men (2006)BChildren of a Lesser God (1986)BChildren of the Corn (1984)B3Children of the Corn II: The Final Sacrifice (1993)BChildren of the Corn III (1994)B-Children of the Corn IV: The Gathering (1996)BChildren of the Damned (1963)BChildren of the Night (1991)B!Children of the Revolution (1996)BChildren's Hour, The (1961)BChildren, The (2008)BChill Factor (1999)BChina Blue (2005)BChina Syndrome, The (1979)BChinatown (1974)BChinese Box (1997)B-Chinese Ghost Story, A (Sinnui yauwan) (1987)B+Chinese Puzzle (Casse-tête chinois) (2013)BChitty Chitty Bang Bang (1968)BChocolat (1988)BChocolat (2000)BChoke (2008)BChopper (2000)B#Chopper Chicks in Zombietown (1989)B&Chopping Mall (a.k.a. Killbots) (1986)BChorus Line, A (1985)B#Chorus, The (Choristes, Les) (2004)BChouchou (2003)B#Chris Rock: Bigger & Blacker (1999)BgChristiane F. (a.k.a. We Children from Bahnhof Zoo) (Christiane F. - Wir Kinder vom Bahnhof Zoo) (1981)B#Christina P: Mother Inferior (2017)BChristine (1983)BChristmas Carol, A (1938)BChristmas Carol, A (1977)BChristmas Carol, A (1999)BChristmas Carol, A (2009)B#Christmas Carol, A (Scrooge) (1951)BChristmas Story, A (1983)BAChristmas Vacation (National Lampoon's Christmas Vacation) (1989)BChristmas in Connecticut (1992)B Christmas with the Kranks (2004)B*Christopher Columbus: The Discovery (1992)BChronicle (2012)B0Chronicles of Narnia: Prince Caspian, The (2008)BFChronicles of Narnia: The Lion, the Witch and the Wardrobe, The (2005)B@Chronicles of Narnia: The Voyage of the Dawn Treader, The (2010)B!Chronicles of Riddick, The (2004)BChuck & Buck (2000)BChump at Oxford, A (1940)B-Chungking Express (Chung Hing sam lam) (1994)B5Ciao, Professore! (Io speriamo che me la cavo) (1992)BCider House Rules, The (1999)BCigarette Burns (2005)BCimarron (1931)BCincinnati Kid, The (1965)BCinderella (1950)BCinderella (1997)BCinderella (2015)BCinderella Man (2005)BCinderella Story, A (2004)B.Cinema Paradiso (Nuovo cinema Paradiso) (1989)BCinemania (2002)BCircle of Friends (1995)BCircle, The (Dayereh) (2000)BCircus (2000)BCircus, The (1928)B/Cirque du Freak: The Vampire's Assistant (2009)BCitizen Kane (1941)BCitizen Ruth (1996)BCitizen X (1995)BCitizenfour (2014)BCity Hall (1996)BCity Heat (1984)B$City Hunter (Sing si lip yan) (1993)BCity Island (2009)BCity Lights (1931)BCity Slickers (1991)B3City Slickers II: The Legend of Curly's Gold (1994)BCity by the Sea (2002)BCity of Angels (1998)BCity of Ember (2008)B#City of God (Cidade de Deus) (2002)B@City of Lost Children, The (Cité des enfants perdus, La) (1995)B-City of Lost Souls, The (Hyôryuu-gai) (2000)B&City of Men (Cidade dos Homens) (2007)B2City of Women, The (Città delle donne, La) (1980)BaCity of the Living Dead (a.k.a. Gates of Hell, The) (Paura nella città dei morti viventi) (1980)BCivil Action, A (1998)BCivil War, The (1990)BClaim, The (2000)B*Claire's Knee (Genou de Claire, Le) (1970)B!Clan of the Cave Bear, The (1986)BClara's Heart (1988)BClash of the Titans (1981)BClash of the Titans (2010)BClass (1983)BClass Act (1992)BClass Action (1991)BClass Reunion (1982)BClass of Nuke 'Em High (1986)B"Class, The (Entre les murs) (2008)BClass, The (Klass) (2007)BClay Pigeons (1998)B*Claymation Christmas Celebration, A (1987)BClean Slate (1994)BCleanskin (2012)BClear and Present Danger (1994)BClerks (1994)BClerks II (2006)BClick (2006)BClient, The (1994)BCliffhanger (1993)BCloak & Dagger (1984)BClockers (1995)BClockstoppers (2002)BClockwatchers (1997)BClockwise (1986)BClockwork Orange, A (1971)BClonus Horror, The (1979)B)Close Encounters of the Third Kind (1977)BClose Range (2015)B6Closely Watched Trains (Ostre sledované vlaky) (1966)BCloser (2004)BCloser You Get, The (2000)BCloser to the Moon (2013)B Closet, The (Placard, Le) (2001)BCloud Atlas (2012)BCloudburst (2011)B(Cloudy with a Chance of Meatballs (2009)B*Cloudy with a Chance of Meatballs 2 (2013)BCloverfield (2008)BClown (2014)BClub Dread (2004)BClub Paradise (1986)BClue (1985)BClueless (1995)BCoach Carter (2005)BCoal Miner's Daughter (1980)BCobb (1994)BCobra (1986)BCocaine Cowboys (2006)BCocktail (1988)BCoco (2017)B-Coco Before Chanel (Coco avant Chanel) (2009)BCocoanuts, The (1929)BCocoon (1985)BCocoon: The Return (1988)BCode 46 (2003)B1Codependent Lesbian Space Alien Seeks Same (2011)BCoffee Town (2013)BCoffee and Cigarettes (2003)BCoffy (1973)BCoherence (2013)BCold Comes the Night (2013)BCold Comfort Farm (1995)BCold Creek Manor (2003)B$Cold Fever (Á köldum klaka) (1995)B%Cold Fish (Tsumetai nettaigyo) (2010)BCold Mountain (2003)BCold in July (2014)BCollateral (2004)BCollateral Damage (2002)BCollector, The (1965)BCollector, The (2009)B*Collector, The (La collectionneuse) (1967)BCollege (1927)BCollege Road Trip (2008)BCollision Course (1989)BColombiana (2011)BColonel Chabert, Le (1994)BColonia (2016)BColor Purple, The (1985)BColor of Money, The (1986)BColor of Night (1994)BColors (1988)BColourful (Karafuru) (2010)BComa (1978)BComandante (2003)BCome Back, Little Sheba (1952)BCome See the Paradise (1990)B"Come and See (Idi i smotri) (1985)BComebacks, The (2007)BComedian (2002)B/Comedy Central Roast of David Hasselhoff (2010)B+Comedy Central Roast of James Franco (2013)B"Comedy of the Strict Regime (1993)BComic Book Villains (2002)BComic Book: The Movie (2004)B)Comic-Con Episode IV: A Fan's Hope (2011)BComing Home (1978)BComing to America (1988)BCommando (1985)BComme un chef (2012)BCommitments, The (1991)B4Common Thread, A (a.k.a. Sequins) (Brodeuses) (2004)BCommunion (1989)BCompany Man (2000)BCompany Men, The (2010)BCompany of Wolves, The (1984)BCompany, The (2003)BCompetition, The (1980)B&Computer Wore Tennis Shoes, The (1969)BCon Air (1997)BConan the Barbarian (1982)BConan the Barbarian (2011)BConan the Destroyer (1984)BConception (2011)BConcert, Le (2009)BConcussion (2015)BCondorman (1981)BConeheads (1993)BConfessions (Kokuhaku) (2010)B&Confessions of a Dangerous Mind (2002)B"Confessions of a Shopaholic (2009)B+Confessions of a Teenage Drama Queen (2004)BConfidence (2003)BConfidential Report (1955)B(Conformist, The (Conformista, Il) (1970)BCongo (1995)BConjuring, The (2013)BConnections (1978)B)Conquest of the Planet of the Apes (1972)BConspiracy Theory (1997)BConstant Gardener, The (2005)BConstantine (2005)BContact (1997)BContact High (2009)BContagion (2011)BContempt (Mépris, Le) (1963)BContender, The (2000)BContinental Divide (1981)BContraband (2012)BControl (2007)BControl (Kontroll) (2003)BControl Room (2004)BConversation, The (1974)B%Conversations with Other Women (2005)B/Cook the Thief His Wife & Her Lover, The (1989)BCookie's Fortune (1999)BCool Hand Luke (1967)BCool Runnings (1993)BCool World (1992)BCool, Dry Place, A (1998)BCooler, The (2003)BCooties (2015)B
Cop (1988)BCop Car (2015)BCop Land (1997)BCop Out (2010)BCop and ½ (1993)BCopenhagen (2014)BCops and Robbersons (1994)BCopycat (1995)BCoraline (2009)BCorbeau, Le (Raven, The) (1943)BCore, The (2003)BCoriolanus (2011)BCorky Romano (2001)BCorner Gas: The Movie (2014)BCornered! (2009)BCorporation, The (2003)BCorpse Bride (2005)BCorrina, Corrina (1994)BCorruptor, The (1999)BCosmic Scrat-tastrophe (2015)BCosmosBCottage, The (2008)BCotton Club, The (1984)BCouch Trip, The (1988)BCounselor, The (2013)B*Counterfeiters, The (Die Fälscher) (2007)BCountry Girl, The (1954)BCouples Retreat (2009)BCourage Under Fire (1996)BCourier (1987)BCourt Jester, The (1956)BCousins (1989)BCove, The (2009)BCovenant, The (2006)B@Cowboy Bebop: The Movie (Cowboy Bebop: Tengoku no Tobira) (2001)BCowboy Way, The (1994)BCowboys & Aliens (2011)BCoyote Ugly (2000)BCradle 2 the Grave (2003)BCradle Will Rock (1999)BCraft, The (1996)B'Craig Ferguson: I'm Here To Help (2013)B#Craig Ferguson: Tickle Fight (2017)B/Cranes Are Flying, The (Letyat zhuravli) (1957)BCrank (2006)BCrank: High Voltage (2009)BCrash (1996)BCrash (2004)BCrazies, The (2010)B.Crazies, The (a.k.a. Code Name: Trixie) (1973)BCrazy Heart (2009)BCrazy in Alabama (1999)BCrazy, Stupid, Love. (2011)BCrazy/Beautiful (2001)BCreature Comforts (1989)B*Creature from the Black Lagoon, The (1954)BCreed (2015)BCreep (2004)BCreep (2014)BCreep 2 (2017)BCreepshow (1982)BCreepshow 2 (1987)BCrew, The (2000)B.Cries and Whispers (Viskningar och rop) (1972)BCrime Busters (1977)B Crime Story (Zhong an zu) (1993)B'Crime and Punishment in Suburbia (2000)B>Crime of Father Amaro, The (Crimen del padre Amaro, El) (2002)BCrimes and Misdemeanors (1989)BCrimes of the Heart (1986)BCrimewave (1985)B"Crimson Gold (Talaye sorgh) (2003)BCrimson Peak (2015)BCrimson Pirate, The (1952)BjCrimson Rivers 2: Angels of the Apocalypse (Rivières pourpres II - Les anges de l'apocalypse, Les) (2004)B4Crimson Rivers, The (Rivières pourpres, Les) (2000)BCrimson Tide (1995)BBCrippled Avengers (Can que) (Return of the 5 Deadly Venoms) (1981)BCritical Care (1997)BCritters (1986)BCrocodile Dundee (1986)BCrocodile Dundee II (1988)B&Crocodile Dundee in Los Angeles (2001)B.Crocodile Hunter: Collision Course, The (2002)BCroods, The (2013)BCrooklyn (1994)BCrossfire (1947)BCrossing Delancey (1988)BCrossing Guard, The (1995)BCrossing Over (2009)BCrossroads (1986)BCrossroads (2002)B7Crouching Tiger, Hidden Dragon (Wo hu cang long) (2000)BCroupier (1998)BCrow, The (1994)BCrow, The: Wicked Prayer (2005)B Crow: City of Angels, The (1996)BCrow: Salvation, The (2000)B Crows Zero (Kurôzu zero) (2007)BCrucible, The (1996)BCruel Intentions (1999)B*Cruel Romance, A (Zhestokij Romans) (1984)BCruise, The (1998)BCrumb (1994)BCrush (2001)BCrush, The (1993)BCry in the Dark, A (1988)BCry, the Beloved Country (1995)BCry-Baby (1990)B!Cry_Wolf (a.k.a. Cry Wolf) (2005)BCrying Game, The (1992)B2Crystal Fairy & the Magical Cactus and 2012 (2013)BCube (1997)BCube 2: Hypercube (2002)BCube Zero (2004)BCuckoo, The (Kukushka) (2002)BCujo (1983)BCulture High, The (2014)BCup, The (Phörpa) (1999)BCure (1997)BCure, The (1995)B+Curious Case of Benjamin Button, The (2008)BCurious George (2006)BCurly Sue (1991)B!Curse of Frankenstein, The (1957)BCCurse of the Golden Flower (Man cheng jin dai huang jin jia) (2006)B&Curse of the Jade Scorpion, The (2001)BCursed (2005)BCutter's Way (1981)BCutthroat Island (1995)BCutting Edge, The (1992)BCyborg (1989)BCyrano de Bergerac (1990)BCyrus (2010)BD.A.R.Y.L. (1985)BD.E.B.S. (2004)BD.O.A. (1950)BD.O.A. (1988)BD2: The Mighty Ducks (1994)BD3: The Mighty Ducks (1996)B,DC Super Hero Girls: Hero of the Year (2016)BDOA: Dead or Alive (2006)BDa Sweet Blood of Jesus (2014)BDa Vinci Code, The (2006)BDa geht noch was! (2013)B
Dad (1989)BDad's Army (1971)BDad's Army (2016)BDaddy Day Camp (2007)BDaddy Day Care (2003)BDaddy Long Legs (1919)BDaddy's Home (2015)BDaddy's Home 2 (2017)BDaddy, I'm A Zombie (2012)B Daffy Duck's Quackbusters (1988)BDallas Buyers Club (2013)BDam Busters, The (1955)BDamage (Fatale) (1992)BDamien: Omen II (1978)BDamn Yankees! (1958)BDamned United, The (2009)B(Damned, The (La Caduta degli dei) (1969)BDampfnudelblues (2013)BDamsels in Distress (2011)BDan in Real Life (2007)B+Dana Carvey: Straight White Male, 60 (2016)B7Dance of Reality, The (Danza de la realidad, La) (2013)BDance of the Dead (2008)BDancemaker (1998)BDancer Upstairs, The (2002)BDancer in the Dark (2000)BDancer, Texas Pop. 81 (1998)BDances with Wolves (1990)BDane Cook: Troublemaker (2014)BDangerous Beauty (1998)BDangerous Ground (1997)BDangerous Liaisons (1988)B)Dangerous Lives of Altar Boys, The (2002)BDangerous Method, A (2011)BDangerous Minds (1995)BDanny Collins (2015)BDanny Deckchair (2003)B(Dante's Inferno: An Animated Epic (2010)BDante's Peak (1997)B)Darby O'Gill and the Little People (1959)BDaredevil (2003)B Daria: Is It College Yet? (2002)BDaria: Is It Fall Yet? (2000)BDarjeeling Limited, The (2007)BDark Blue (2003)B)Dark Blue World (Tmavomodrý svet) (2001)BDark City (1998)BDark Crystal, The (1982)BDark Days (2000)BDark Half, The (1993)BDark Knight Rises, The (2012)BDark Knight, The (2008)BDark Passage (1947)BDark Places (2015)B7Dark Portals: The Chronicles of Vidocq  (Vidocq) (2001)BDark Shadows (2012)BDark Skies (2013)BDark Star (1974)BDark Tide (2012)BDark Victory (1939)BDark Water (2005)B/Dark Water (Honogurai mizu no soko kara) (2002)BDarkest Hour (2017)BDarkest Hour, The (2011)BDarkman (1990)B(Darkman II: Return of Durant, The (1995)BDarkness (2002)BDarkness Falls (2003)BDarkon (2006)BDarwin's Nightmare (2004)B'Das Experiment (Experiment, The) (2001)BDate Movie (2006)BDate Night (2010)BDate and Switch (2014)BDate with an Angel (1987)BDaughters of the Dust (1991)BDave (1993)B1Dave Chappelle: Deep in the Heart of Texas (2017)B!Dave Chappelle: Equanimity (2017)B*Dave Chappelle: For What it's Worth (2004)B*Dave Chappelle: Killin' Them Softly (2000)B&Dave Chappelle: The Age of Spin (2017)B*Dave Chappelle: The Bird Revelation (2017)B.David Cross: Making America Great Again (2016)B/Davy Crockett, King of the Wild Frontier (1955)BDawn of the Dead (1978)BDawn of the Dead (2004)B%Dawn of the Planet of the Apes (2014)BDay & Night (2010)BDay After Tomorrow, The (2004)BDay After, The (1983)B Day Watch (Dnevnoy dozor) (2006)BDay at the Races, A (1937)B*Day for Night (La Nuit Américaine) (1973)B!Day of Wrath (Vredens dag) (1943)B4Day of the Beast, The (Día de la Bestia, El) (1995)BDay of the Dead (1985)BDay of the Doctor, The (2013)BDay of the Jackal, The (1973)BDay of the Locust, The (1975)B%Day the Earth Stood Still, The (1951)B%Day the Earth Stood Still, The (2008)BDaybreakers (2010)BDaylight (1996)B+Days of Being Wild (A Fei jingjyuhn) (1990)BDays of Heaven (1978)BDays of Thunder (1990)BDays of Wine and Roses (1962)BDaytrippers, The (1996)BDazed and Confused (1993)BDe platte jungle (1978)BDe-Lovely (2004)BDead Again (1991)BDead Alive (Braindead) (1992)BDead Calm (1989)BDead End (2003)BDead Fury (2008)B!Dead Hate the Living!, The (2000)BDead Heat (1988)B%Dead Like Me: Life After Death (2009)BDead Man (1995)BDead Man Walking (1995)BDead Man on Campus (1998)BDead Man's Shoes (2004)BDead Meat (2004)B Dead Men Don't Wear Plaid (1982)BDead Poets Society (1989)BDead Pool, The (1988)BDead Presidents (1995)BDead Ringers (1988)BDead Silence (2007)BDead Snow (Død snø) (2009)B!Dead Snow 2: Red vs. Dead (2014) BDead Zone, The (1983)BDead of Night (1945)B!Dead or Alive 2: Tôbôsha (2000)BDead or Alive: Final (2002)BDead or Alive: Hanzaisha (1999)BDeadHeads (2011)BDeadfall (2012)BDeadly Friend (1986)B]Deadly Outlaw: Rekka (a.k.a. Violent Fire) (Jitsuroku Andô Noboru kyôdô-den: Rekka) (2002)BDeadpool (2016)BDeadpool 2 (2018)BDeadtime Stories (1987)BDeal, The (2008)BDear Diary (Caro Diario) (1994)BDear Frankie (2004)BDear God (1996)BDear John (2010)BDear Wendy (2005)B7Dear Zachary: A Letter to a Son About His Father (2008)BDeath Becomes Her (1992)BDeath Note (2017)B*Death Note Rewrite: Genshisuru Kami (2007)B$Death Note: Desu nôto (2006–2007)BDeath Proof (2007)BDeath Race (2008)BDeath Race 2 (2010)BDeath Race 2000 (1975)BDeath Sentence (2007)B!Death Smiles on a Murderer (1973)BDeath Wish (1974)BDeath Wish (2018)BDeath Wish 2 (1982)BDeath Wish 3 (1985)B"Death Wish 4: The Crackdown (1987)B&Death Wish 5: The Face of Death (1994)BDeath and the Maiden (1994)BDeath at a Funeral (2007)BDeath at a Funeral (2010)B(Death in Venice (Morte a Venezia) (1971)B1Death of a Cyclist (Muerte de un ciclista) (1955)BDeath of a President (2006)BDeath of a Salesman (1985)BDeath on the Nile (1978)BDeath to Smoochy (2002)BDeathgasm (2015)BDeaths of Ian Stone, The (2007)BDeathtrap (1982)BDebt, The (2011)B$Decade Under the Influence, A (2003)BDecalogue, The (Dekalog) (1989)BDeceiver (1997)BDecember Boys (2007)BDDecline of Western Civilization Part II: The Metal Years, The (1988)B+Decline of Western Civilization, The (1981)BODecline of the American Empire, The (Déclin de l'empire américain, Le) (1986)BDeconstructing Harry (1997)BDecoy Bride, The (2011)BDedication (2007)BDeep Blue Sea (1999)B!Deep End of the Ocean, The (1999)BDeep End, The (2001)BDeep Impact (1998)B Deep Red (Profondo rosso) (1975)BDeep Rising (1998)BDeepwater Horizon (2016)BDeer Hunter, The (1978)BDefending Your Life (1991)BDefiance (2008)BDefiant Ones, The (1958)BDefinitely, Maybe (2008)BDelhi Belly (2011)BDelicatessen (1991)BDelirious (1991)BDelirium (2014)BDeliver Us from Evil (2006)BDeliver Us from Evil (2014)BDeliverance (1972)BDelivery Man (2013)B>Delta Force 2 (Delta Force 2: The Colombian Connection) (1990)BDelta Force, The (1986)BDelta of Venus (1995)BDemolition (2016)BDemolition Man (1993)BDen, The (2013)B&Denis Leary: No Cure for Cancer (1993)BDenise Calls Up (1995)BDennis the Menace (1993)B%Dennis the Menace Christmas, A (2007)BDentist, The (1996)BDeparted, The (2006)BDepartures (Okuribito) (2008)BDer Herr Karl (1961)BDerailed (2002)BDerailed (2005)B,Dernier Combat, Le (Last Battle, The) (1983)BDersu Uzala (1975)BDescendants, The (2011)BDescent (2007)BDescent, The (2005)BDesert Hearts (1985)BDesierto (2016)BDesigning Woman (1957)BDesk Set (1957)BDesperado (1995)BDesperate Living (1977)BDesperate Measures (1998)B Desperately Seeking Susan (1985)BDespicable Me (2010)BDespicable Me 2 (2013)BDespicable Me 3 (2017)BDespite the Falling Snow (2016)B!Destiny Turns on the Radio (1995)BDestry Rides Again (1939)BDetachment (2011)BDetour (1945)BDetroit Rock City (1999)B%Deuce Bigalow: European Gigolo (2005)B!Deuce Bigalow: Male Gigolo (1999)BDeuces Wild (2002)BDevil (2010)B#Devil Dog: The Hound of Hell (1978)BDevil Wears Prada, The (2006)B%Devil and Daniel Johnston, The (2005)B Devil and Max Devlin, The (1981)BDevil in a Blue Dress (1995)B6Devil's Backbone, The (Espinazo del diablo, El) (2001)BDevil's Own, The (1997)BDevil's Playground (2002)BDevil's Rejects, The (2005)B,Devils on the Doorstep (Guizi lai le) (2000)BDiG! (2004)BDiabolique (1996)B#Diabolique (Les diaboliques) (1955)BDial M for Murder (1954)B-Diamond Arm, The (Brilliantovaya ruka) (1968)BDiamonds Are Forever (1971)BBDiary of a Chambermaid (Journal d'une femme de chambre, Le) (1964)BADiary of a Country Priest (Journal d'un curé de campagne) (1951)BDiary of a Wimpy Kid (2010)B%Diary of a Wimpy Kid: Dog Days (2012)B*Diary of a Wimpy Kid: Rodrick Rules (2011)BDiary of the Dead (2007)BDick (1999)BDick Tracy (1990)B(Dickie Roberts: Former Child Star (2003)BDictator, The (2012)B&Did You Hear About the Morgans? (2009)BDie Another Day (2002)B"Die Frauen von Ravensbrück (2005)BDie Hard (1988)BDie Hard 2 (1990)B!Die Hard: With a Vengeance (1995)BDigging Up the Marrow (2014)BDigimon: The Movie (2000)BDil To Pagal Hai (1997)BDilemma, The (2011)BDiner (1982)B,Dinner Game, The (Dîner de cons, Le) (1998)BDinner Rush (2000)BDinner at Eight (1933)BDinner for Schmucks (2010)BDinosaur (2000)BDinotopia (2002)BDirty 30 (2016)BDirty Dancing (1987)B#Dirty Dancing: Havana Nights (2004)BDirty Dozen, The (1967)BDirty Grandpa (2016)BDirty Harry (1971)BDirty Pretty Things (2002)BDirty Rotten Scoundrels (1988)BDirty Work (1998)BDisaster Movie (2008)BDisclosure (1994)BDisconnect (2012)BTDiscreet Charm of the Bourgeoisie, The (Charme discret de la bourgeoisie, Le) (1972)BDisgrace (2008)BDish, The (2001)BDisorganized Crime (1989)B#Distinguished Gentleman, The (1992)B District 13 (Banlieue 13) (2004)B7District 13: Ultimatum (Banlieue 13 - Ultimatum) (2009)BDistrict 9 (2009)BDisturbia (2007)BDisturbing Behavior (1998)BDiva (1981)BDivergent (2014)B,Divided We Fall (Musíme si pomáhat) (2000)B-Divine Secrets of the Ya-Ya Sisterhood (2002)BIDiving Bell and the Butterfly, The (Scaphandre et le papillon, Le) (2007)BDivo, Il (2008)B6Divorce - Italian Style (Divorzio all'italiana) (1961)BDivorce, Le (2003)BDivorcee, The (1930)BDjango Unchained (2012)B=Do You Remember Dolly Bell? (Sjecas li se, Dolly Bell) (1981)BDo the Right Thing (1989)BDobermann (1997)BDoc Hollywood (1991)BDoctor Dolittle (1967)BDoctor Strange (2016)B$Doctor Who: A Christmas Carol (2010)B!Doctor Who: Last Christmas (2014)B%Doctor Who: Planet of the Dead (2009)B9Doctor Who: The Doctor, the Widow and the Wardrobe (2011)B-Doctor Who: The Husbands of River Song (2015)B"Doctor Who: The Next Doctor (2008)B$Doctor Who: The Runaway Bride (2007)B)Doctor Who: The Time of the Doctor (2013)B%Doctor Who: The Waters of Mars (2009)B'Doctor Who: Voyage Of The Damned (2007)BDoctor Zhivago (1965)BDoctor, The (1991)B'Dodgeball: A True Underdog Story (2004)BDog Day Afternoon (1975)BDog Days (Hundstage) (2001)BDog Park (1998)BDog Soldiers (2002)BDogfight (1991)BDogma (1999)BDogman (2018)BDogtown and Z-Boyz (2001)BDogville (2003)BDolce Vita, La (1960)BDolls (1987)BDolls (2002)BDolores Claiborne (1995)BDomestic Disturbance (2001)BDominick and Eugene (1988)B(Dominion: Prequel to the Exorcist (2005)BDomino (2005)BDon Camillo in Moscow (1965)BDon Jon (2013)BDon Juan DeMarco (1995)B"Don't Be Afraid of the Dark (2010)BODon't Be a Menace to South Central While Drinking Your Juice in the Hood (1996)BDon't Breathe (2016)BDon't Look Now (1973)BADon't Look Now: We're Being Shot At (La grande vadrouille) (1966)B"Don't Move (Non ti muovere) (2004)BDon't Say a Word (2001)B+Don't Tell Mom the Babysitter's Dead (1991)BDonnie Brasco (1997)BDonnie Darko (2001)BDoom (2005)BDoom Generation, The (1995)BDoomsday (2008)BDoor in the Floor, The (2004)BDoors, The (1991)BDope (2015)BDorian Gray (2009)BDouble Dragon (1994)BDouble Happiness (1994)BDouble Impact (1991)BDouble Indemnity (1944)BDouble Jeopardy (1999)BCDouble Life of Veronique, The (Double Vie de Véronique, La) (1991)BDouble Life, A (1947)BDouble Take (2001)BDouble Team (1997)BDouble Trouble (1992)BDouble, The (2011)BDouble, The (2013)BDoubt (2008)BDoug's 1st Movie (1999)BDown Argentine Way (1940)BDown Periscope (1996)BDown Terrace (2009)B$Down and Out in Beverly Hills (1986)BDown by Law (1986)BDown in the Valley (2005)BDown to Earth (2001)BDown to You (2000)BDown to the Bone (2004)BDown with Love (2003)B Downfall (Untergang, Der) (2004)BDr. Dolittle (1998)BDr. Dolittle 2 (2001)BDr. Giggles (1992)B*Dr. Goldfoot and the Bikini Machine (1965)B%Dr. Horrible's Sing-Along Blog (2008)BDr. Jekyll and Mr. Hyde (1931)BDr. Jekyll and Mr. Hyde (1941)BDr. No (1962)BDr. Phibes Rises Again (1972)BDr. Seuss' The Lorax (2012)BKDr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb (1964)BDr. T and the Women (2000)B$Dr. Terror's House of Horrors (1965)BDracula (1931)BDracula (1979)B&Dracula (Bram Stoker's Dracula) (1992)BDracula 2000 (2000)BDracula Untold (2014)B"Dracula: Dead and Loving It (1995)BDrag Me to Hell (2009)BDragnet (1987)BiDragon Ball GT: A Hero's Legacy (Doragon bôru GT: Gokû gaiden! Yûki no akashi wa sû-shin-chû) (1997)B<Dragon Ball Z Gaiden: The Plot to Destroy the Saiyans (1993)BcDragon Ball Z the Movie: The Tree of Might (Doragon bôru Z 3: Chikyû marugoto chô kessen) (1990)B?Dragon Ball Z the Movie: The World's Strongest (a.k.a. Dragon Ball Z: The Strongest Guy in The World) (Doragon bôru Z: Kono yo de ichiban tsuyoi yatsu) (1990)B?Dragon Ball Z: Bardock - The Father of Goku (Doragon bôru Z: Tatta hitori no saishuu kessen - Furiiza ni itonda Z senshi Kakarotto no chichi) (1990)B$Dragon Ball Z: Battle of Gods (2013)B^Dragon Ball Z: Bio-Broly (Doragon bôru Z 11: Sûpâ senshi gekiha! Katsu no wa ore da) (1994)BdDragon Ball Z: Bojack Unbound (Doragon bôru Z 9: Ginga girigiri!! Butchigiri no sugoi yatsu) (1993)BwDragon Ball Z: Broly - The Legendary Super Saiyan (Doragon bôru Z 8: Moetsukiro!! Nessen retsusen-chô gekisen) (1993)BkDragon Ball Z: Broly Second Coming (Doragon bôru Z 10: Kiken na futari! Sûpâ senshi wa nemurenai) (1994)B\Dragon Ball Z: Cooler's Revenge (Doragon bôru Z 5: Tobikkiri no saikyô tai saikyô) (1991)BJDragon Ball Z: Dead Zone (Doragon bôru Z 1: Ora no Gohan wo kaese) (1989)B'Dragon Ball Z: Resurrection of F (2015)BfDragon Ball Z: Super Android 13! (Doragon bôru Z 7: Kyokugen batoru!! San dai sûpâ saiyajin) (1992)B?Dragon Ball Z: The History of Trunks (Doragon bôru Z: Zetsubô e no hankô!! Nokosareta chô senshi - Gohan to Torankusu) (1993)BcDragon Ball Z: The Return of Cooler (Doragon bôru Z 6: Gekitotsu! Hyakuoku pawâ no senshi) (1992)BNDragon Ball: Mystical Adventure (Doragon bôru: Makafushigi dai bôken) (1988)B`Dragon Ball: Sleeping Princess in Devil's Castle (Doragon bôru: Majinjô no nemuri hime) (1987)BVDragon Ball: The Curse Of The Blood Rubies (Doragon bôru: Shenron no densetsu) (1986)BIDragon Ball: The Path to Power (Doragon bôru: Saikyô e no michi) (1996)BDragon Blade (2015)B8Dragon Lord (a.k.a. Dragon Strike) (Long Xiao Ye) (1982)BDragon Seed (1944)B"Dragon ball Z 04: Lord Slug (1991)B"Dragon: The Bruce Lee Story (1993)BDragonfly (2002)BDragonheart (1996)B%Dragonheart 2: A New Beginning (2000)B*Dragonheart 3: The Sorcerer's Curse (2015)B&Dragons: Gift of the Night Fury (2011)BDragonslayer (1981)B!Drained (O cheiro do Ralo) (2006)B"Draughtsman's Contract, The (1982)BDream Team, The (1989)BDream a Little Dream (1989)BDream for an Insomniac (1996)BKDream of Light (a.k.a. Quince Tree Sun, The) (Sol del membrillo, El) (1992)BDreamcatcher (2003)B(Dreamer: Inspired by a True Story (2005)BDreamers, The (2003)BDreamgirls (2006)B;Dreamlife of Angels, The (Vie rêvée des anges, La) (1998)BDreamscape (1984)BDredd (2012)BDressed to Kill (1980)BDresser, The (1983)BDrift (2013)BDrillbit Taylor (2008)BDrinking Buddies (2013)BDrive (2011)BDrive Angry (2011)BDrive Hard (2014)BDrive Me Crazy (1999)BDriven (2001)BDriving Miss Daisy (1989)BDrop Dead Fred (1991)BDrop Dead Gorgeous (1999)BDrop Zone (1994)BDrowning Mona (2000)BDrowning by Numbers (1988)BDrugstore Cowboy (1989)BDrumline (2002)B Drunken Master (Jui kuen) (1978)BDrunks (1995)BDuchess, The (2008)BDuck Amuck (1953)BDuck Soup (1933)BDuck, You Sucker (1971)BDude, Where's My Car? (2000)BDudley Do-Right (1999)BDue Date (2010)BDuel (1971)BDuel in the Sun (1946)BDuellists, The (1977)BDuets (2000)BDukes of Hazzard, The (2005)BDuma (2005)B&Dumb & Dumber (Dumb and Dumber) (1994)BDumb and Dumber To (2014)B.Dumb and Dumberer: When Harry Met Lloyd (2003)BDumbo (1941)BDummy (2002)BDune (1984)BDune (2000)BDungeons & Dragons (2000)BDunkirk (2017)BDunston Checks In (1996)BDuplex (2003)BDuplicity (2009)BDust (2001)BDutch (1991)BDying Young (1991)BDying of the Light (2014)BDylan Moran: Monster (2004)BDéjà Vu (1997)BDéjà Vu (Deja Vu) (2006)B!E.T. the Extra-Terrestrial (1982)BEDtv (1999)BEagle Eye (2008)BEagle Has Landed, The (1976)BEagle, The (2011)BEar, The (Ucho) (1970)BEarth (2007)BEarth Girls Are Easy (1988)B#Earth vs. the Flying Saucers (1956)BEarthlings (2006)BEarthquake (1974)B$Earthsea (Legend of Earthsea) (2004)BEast is East (1999)BEast of Eden (1955)BEast-West (Est-ouest) (1999)BEaster Parade (1948)BEastern Promises (2007)BEasy A (2010)BEasy Money (1983)BEasy Rider (1969)B+Eat Drink Man Woman (Yin shi nan nu) (1994)BEat Pray Love (2010)BEaten Alive (1977)BEchelon Conspiracy (2009)B	Ed (1996)BEd Wood (1994)BEddie (1996)B"Eddie Izzard: Dress to Kill (1999)BEddie Izzard: Glorious (1997)BEddie Murphy Delirious (1983)BEddie Murphy Raw (1987)BEddie and the Cruisers (1983)BEddie the Eagle (2016)BEden (2014)BEden Lake (2008)B2Edge of Heaven, The (Auf der anderen Seite) (2007)BEdge of Love, The (2008)BEdge of Tomorrow (2014)BEdge, The (1997)BEdmond (2005)BEducating Rita (1983)BEducation, An (2009)B4Edukators, The (Die Fetten Jahre sind vorbei) (2004)BEdward Scissorhands (1990)BEichmann (2007)BEight Below (2006)B=Eight Crazy Nights (Adam Sandler's Eight Crazy Nights) (2002)BEight Legged Freaks (2002)BEight Men Out (1988)B+Eighth Day, The (Huitième jour, Le) (1996)BEinstein and Eddington (2008)BEl Cid (1961)BElection (1999)BElections Day (2007)BElectra Glide in Blue (1973)BElectroma (2006)BElektra (2005)BElektra Luxx (2010)B4Element of Crime, The (Forbrydelsens Element) (1984)BElephant (2003)BElephant Man, The (1980)BLElevator to the Gallows (a.k.a. Frantic) (Ascenseur pour l'échafaud) (1958)B
Elf (2003)B#Elite Squad (Tropa de Elite) (2007)BRElite Squad: The Enemy Within (Tropa de Elite 2 - O Inimigo Agora É Outro) (2010)BElizabeth (1998)B Elizabeth: The Golden Age (2007)BElizabethtown (2005)BElla Enchanted (2004)BElle (2016)BElling (2001)BElmer Gantry (1960)BElsa & Fred (2005)BElsa & Fred (2014)BElysium (2013)B(Embalmer, The (Imbalsamatore, L') (2002)BEmbassy (2013)BEmbrace of the Serpent (2016)BEmerald Forest, The (1985)BEmerald Green (2016)BEmma (1996)BEmma (2009)BEmmanuelle (1974)B:Emperor and the Assassin, The (Jing ke ci qin wang) (1999)B!Emperor's New Clothes, The (2001)B6Emperor's New Groove 2: Kronk's New Groove, The (2005)B Emperor's New Groove, The (2000)BEmpire (2002)BEmpire Records (1995)B=Empire of Dreams: The Story of the 'Star Wars' Trilogy (2004)BEmpire of the Sun (1987)BEmployee of the Month (2004)BEmployee of the Month (2006)BEmpties (2007)BEnchanted (2007)BEnchanted April (1992)BEncino Man (1992)B)Encounters at the End of the World (2008)BEnd of Days (1999)BEnd of Watch (2012)BEnd of the Affair, The (1999)BEnder's Game (2013)BEndgame (2009)BEndless Poetry (2016)BEndless Summer, The (1966)BBEndurance: Shackleton's Legendary Antarctic Expedition, The (2000)BEnemy (2013)BEnemy Mine (1985)BEnemy at the Gates (2001)BEnemy of the State (1998)BEnforcer, The (1976)BEnglish Patient, The (1996)BEnglish Teacher, The (2013)BEnglish Vinglish (2012)BBEnglishman Who Went Up a Hill But Came Down a Mountain, The (1995)BEnigma (2001)BEnough (2002)BEnough Said (2013)B+Enron: The Smartest Guys in the Room (2005)BEnter the Dragon (1973)BEnter the Void (2009)B1Entertaining Angels: The Dorothy Day Story (1996)BEntourage (2015)BEntrapment (1999)BEnvy (2004)BEpic (2013)BEpic Movie (2007)BEqualizer, The (2014)BEquilibrium (2002)BEquus (1977)BEr ist wieder da (2015)BEragon (2006)BEraser (1996)BEraserhead (1977)BErik the Viking (1989)BErin Brockovich (2000)B1Ernest & Célestine (Ernest et Célestine) (2012)BErnest Goes to Camp (1987)BErnest Goes to Jail (1990)BErnest Rides Again (1993)BErnest Saves Christmas (1988)BErnest Scared Stupid (1991)BEros (2004)B)Escaflowne: The Movie (Escaflowne) (2000)BEscape From Tomorrow (2013)BEscape Plan (2013)BEscape from Alcatraz (1979)BEscape from L.A. (1996)BEscape from New York (1981)BEscape from Planet Earth (2013)B)Escape from the Planet of the Apes (1971)BEscape to Witch Mountain (1975)BEscort, The (Scorta, La) (1993)B,Eternal Sunshine of the Spotless Mind (2004)BEthan Frome (1993)BEthel & Ernest (2016)BEulogy (2004)BEuroTrip (2004)BEuropa (Zentropa) (1991)B*Europa Europa (Hitlerjunge Salomon) (1990)BCEuropean Vacation (aka National Lampoon's European Vacation) (1985)B
Eva (2011)BEvan Almighty (2007)BKEvangelion: 1.0 You Are (Not) Alone (Evangerion shin gekijôban: Jo) (2007)BMEvangelion: 2.0 You Can (Not) Advance (Evangerion shin gekijôban: Ha) (2009)B)Evangelion: 3.0 You Can (Not) Redo (2012)BEve of Destruction (1991)BEve's Bayou (1997)BEvelyn (2002)B"Even Cowgirls Get the Blues (1993)B)Even the Rain (También la lluvia) (2010)B5Evening with Kevin Smith 2: Evening Harder, An (2006)BEvent Horizon (1997)B%Ever After: A Cinderella Story (1998)BEverest (1998)BEverest (2015)BEverlasting Piece, An (2000)BEvery Secret Thing (2014)B Every Which Way But Loose (1978)BEverybody Wants Some (2016)B.Everybody's Famous! (Iedereen beroemd!) (2000)BEveryone Says I Love You (1996)B Everything Is Illuminated (2005)BEverything Must Go (2010)BNEverything You Always Wanted to Know About Sex * But Were Afraid to Ask (1972)B5Everything or Nothing: The Untold Story of 007 (2012)BEvil Aliens (2005)BEvil Dead (2013)B"Evil Dead II (Dead by Dawn) (1987)BEvil Dead, The (1981)BEvita (1996)BEvolution (2001)BIEwok Adventure, The (a.k.a. Caravan of Courage: An Ewok Adventure) (1984)B"Ewoks: The Battle for Endor (1985)BEx Drummer (2007)BEx Machina (2015)BEx, The (2007)BExam (2009)BExcalibur (1981)BExcess Baggage (1997)BExecutive Decision (1996)BExecutive Suite (1954)B!Exit Through the Gift Shop (2010)BExit Wounds (2001)BExit to Eden (1994)BExodus (1960)BExodus: Gods and Kings (2014)B"Exorcism of Emily Rose, The (2005)BExorcist II: The Heretic (1977)BExorcist III, The (1990)BExorcist, The (1973)BExorcist: The Beginning (2004)BExotica (1994)B(Expelled: No Intelligence Allowed (2008)BExpendables 2, The (2012)BExpendables, The (2010)BExperimenter (2015)BExplorers (1985)BExposed (2016)BExpress, The (2008)BExte: Hair Extensions (2007)B9Exterminating Angel, The (Ángel exterminador, El) (1962)BExtract (2009)B8Extraordinary Adventures of Adèle Blanc-Sec, The (2010)BExtraordinary Tales (2015)BExtreme Days (2001)BExtreme Measures (1996)BExtreme Ops (2002)B*Extremely Loud and Incredibly Close (2011)BExtremities (1986)BEye See You (D-Tox) (2002)BEye for an Eye (1996)BEye for an Eye, An (1981)BEye in the Sky (2016)BEye of the Beholder (1999)B%Eye, The (Gin gwai) (Jian gui) (2002)BEyes Wide Shut (1999)B2Eyes Without a Face (Yeux sans visage, Les) (1959)BEyes of Laura Mars (1978)BEyes of Tammy Faye, The (2000)B Eyewitness (Janitor, The) (1981)BF*ck You, Goethe 2 (2015)B
F/X (1986)B7F/X2 (a.k.a. F/X 2 - The Deadly Art of Illusion) (1991)BFLCL (2000)BFabulous Baker Boys, The (1989)BFace in the Crowd, A (1957)BFace/Off (1997)BFaces of Death (1978)BFaces of Death 3 (1985)B.Facing Windows (Finestra di fronte, La) (2003)BFactory Girl (2006)BFaculty, The (1998)BFading Gigolo (2013)BFahrenheit 451 (1966)BFahrenheit 9/11 (2004)BFail-Safe (1964)BFailure to Launch (2006)BFair Game (1995)BFairyTale: A True Story (1997)BFall (1997)B7Fall of the House of Usher, The (House of Usher) (1960)BFall, The (2006)BFallen (1998)B'Fallen Angels (Duo luo tian shi) (1995)BFallen Idol, The (1948)BFalling Angels (2003)BFalling Down (1993)BFame (1980)BFamily Business (1989)B;Family Guy Presents Stewie Griffin: The Untold Story (2005)B(Family Guy Presents: Blue Harvest (2007)B'Family Guy Presents: It's a Trap (2010)BFFamily Guy Presents: Something, Something, Something, Dark Side (2009)BFamily Man, The (2000)BFamily Plot (1976)BFamily Stone, The (2005)BFamily Thing, A (1996)BFamily, The (2013)BFan, The (1996)BFanboys (2009)BFandango (1985)B0Fanny and Alexander (Fanny och Alexander) (1982)BFans (1999)BFantasia (1940)BFantasia 2000 (1999)B.Fantastic Beasts and Where to Find Them (2016)B&Fantastic Fear of Everything, A (2012)BFantastic Four (2005)BFantastic Four (2015)B0Fantastic Four: Rise of the Silver Surfer (2007)BFantastic Mr. Fox (2009)B3Fantastic Planet, The (Planète sauvage, La) (1973)BFantastic Voyage (1966)BFantasticks, The (1995)B2Far From Home: The Adventures of Yellow Dog (1995)BFar and Away (1992)BFar from Heaven (2002)B3Faraway, So Close (In weiter Ferne, so nah!) (1993)B-Farewell My Concubine (Ba wang bie ji) (1993)BFarewell to Arms, A (1932)BFarewell to the King (1989)BFargo (1996)BFarinelli: il castrato (1994)BFarmer's Daughter, The (1947)B%Farscape: The Peacekeeper Wars (2004)B3Fast & Furious (Fast and the Furious 4, The) (2009)B5Fast & Furious 6 (Fast and the Furious 6, The) (2013)B.Fast Five (Fast and the Furious 5, The) (2011)BFast Food Nation (2006)BFast Food, Fast Women (2000)B$Fast Runner, The (Atanarjuat) (2001)B#Fast Times at Ridgemont High (1982)B Fast and the Furious, The (2001)BKFast and the Furious: Tokyo Drift, The (Fast and the Furious 3, The) (2006)B#Fast, Cheap & Out of Control (1997)BFaster (2010)B#Faster Pussycat! Kill! Kill! (1965)BFat Albert (2004)BFat City (1972)BFat Girl (À ma soeur!) (2001)BFat Man and Little Boy (1989)BFatal Attraction (1987)BFatal Beauty (1987)BFatal Instinct (1993)BFather Goose (1964)BFather Hood (1993)BFather of the Bride (1950)BFather of the Bride (1991)B"Father of the Bride Part II (1995)BFathers' Day (1997)BFaust (1926)BFay Grim (2006)BFear (1996)B=Fear City: A Family-Style Comedy (La cité de la peur) (1994)BFear X (2003)B%Fear and Loathing in Las Vegas (1998)BFear of a Black Hat (1994)B9FearDotCom (a.k.a. Fear.com) (a.k.a. Fear Dot Com) (2002)BFearless (1993)B0Fearless Hyena, The (Xiao quan guai zhao) (1979)B$Fearless Vampire Killers, The (1967)BFeast (2005)BFeast (2014)BFederal Hill (1994)BFeds (1988)BFeeling Minnesota (1996)BFelicia's Journey (1999)BFellini Satyricon (1969)B;Fellini's Casanova (Il Casanova di Federico Fellini) (1976)BFelon (2008)BFelony (2013)BFemale Perversions (1996)BFemale Trouble (1975)BFemme Fatale (2002)B Femme Nikita, La (Nikita) (1990)BFences (2016)BFerdinand (2017)B%Ferngully: The Last Rainforest (1992)BFerris Bueller's Day Off (1986)BFever Pitch (1997)BFever Pitch (2005)BFew Good Men, A (1992)BFfolkes (1979)BFiddler on the Roof (1971)BFido (2006)BField in England, A (2013)BField of Dreams (1989)B*Fiendish Plot of Dr. Fu Manchu, The (1980)BFierce Creatures (1997)BFifth Element, The (1997)BFifty Shades Darker (2017)BFifty Shades of Grey (2015)BFight Club (1999)BFighter, The (2010)BFighting Seabees, The (1944)B Fighting Temptations, The (2003)BaFilms to Keep You Awake: The Christmas Tale (Películas para no dormir: Cuento de navidad) (2005)BFilth (2013)BFilth and the Fury, The (2000)BFinal Analysis (1992)B@Final Conflict, The (a.k.a. Omen III: The Final Conflict) (1981)BFinal Countdown, The (1980)BFinal Cut, The (2004)BFinal Destination (2000)BFinal Destination 2 (2003)BFinal Destination 3 (2006)BFinal Destination 5 (2011)BSFinal Destination, The (Final Destination 4) (Final Destination in 3-D, The) (2009)B)Final Fantasy VII: Advent Children (2004)B(Final Fantasy: The Spirits Within (2001)B!Final Flight of the Osiris (2003)BFind Me Guilty (2006)BFinding Dory (2016)BFinding Forrester (2000)BFinding Nemo (2003)BFinding Neverland (2004)BFire Down Below (1997)BFire and Ice (1983)BFire and Ice (2008)BFire in the Sky (1993)BFire with Fire (2012)BFired Up (2009)BFirefox (1982)BFireproof (2008)BFirestarter (1984)BFirewalker (1986)BFirewall (2006)BFireworks (Hana-bi) (1997)B?Fireworks, Should We See It from the Side or the Bottom? (2017)BFirm, The (1993)BFirm, The (2009)B7First Beautiful Thing, The (La prima cosa bella) (2010)B'First Blood (Rambo: First Blood) (1982)BFirst Daughter (2004)BFirst Kid (1996)BFirst Knight (1995)BFirst Monday in October (1981)BFirst Position (2011)BFirst Reformed (2017)BFirst Snow (2006)B]First Strike (Police Story 4: First Strike) (Ging chaat goo si 4: Ji gaan daan yam mo) (1996)BFirst Sunday (2008)BFirst Time, The (2012)BFirst Wives Club, The (1996)BFish Called Wanda, A (1988)B#Fish Story (Fisshu sutôrî) (2009)BFisher King, The (1991)BFist Fight (2017)B;Fist of Fury (Chinese Connection, The) (Jing wu men) (1972)B*Fist of Legend (Jing wu ying xiong) (1994)B6Fistful of Dollars, A (Per un pugno di dollari) (1964)BFitzcarraldo (1982)BFive Deadly Venoms (1978)BFive Easy Pieces (1970)BFive Element Ninjas (1982)BFive Senses, The (1999)B Five-Year Engagement, The (2012)BFlags of Our Fathers (2006)BFlamingo Kid, The (1984)BFlash Gordon (1980)B)Flash Gordon Conquers the Universe (1940)BFlashback (1990)BFlashdance (1983)B.Flatfoot on the Nile (Piedone d'Egitto) (1980)BFlatliners (1990)BFlawless (1999)BFled (1996)BFlesh & Blood (1985)BFlesh and Bone (1993)BFletch (1985)BFletch Lives (1989)B+Flickering Lights (Blinkende lygter) (2000)BFlight (2012)BFlight of the Navigator (1986)BFlight of the Phoenix (2004)B!Flight of the Phoenix, The (1965)BFlightplan (2005)BFlint (2017)B*Flintstones in Viva Rock Vegas, The (2000)BFlintstones, The (1994)BFlipped (2010)BFlipper (1996)BFlirting (1991)BFlirting With Disaster (1996)BFlorence Foster Jenkins (2016)B7Flower of My Secret, The (La flor de mi secreto) (1995)BFlowers for Algernon (2000)BFlowers in the Attic (1987)B4Flowers of War, The (Jin líng shí san chai) (2011)BFlubber (1997)BFluke (1995)BFlushed Away (2006)BFly Away Home (1996)BFly II, The (1989)BFly, The (1958)BFly, The (1986)BFlyboys (2006)BFlying Down to Rio (1933)BFlying Tigers (1942)BFocus (2001)BFocus (2015)BJFog of War: Eleven Lessons from the Life of Robert S. McNamara, The (2003)BFog, The (1980)BFog, The (2005)BFollow Me, Boys! (1966)BFollow the Fleet (1936)BFollowing (1998)BFood, Inc. (2008)BFool's Gold (2008)BFools Rush In (1997)BFootloose (1984)BFootloose (2011)BFor Keeps (1988)BFor Love of the Game (1999)BFor Love or Money (1993)BFor Richer or Poorer (1997)B&For Roseanna (Roseanna's Grave) (1997)BFor Whom the Bell Tolls (1943)BFor Your Consideration (2006)BFor Your Eyes Only (1981)B;For a Few Dollars More (Per qualche dollaro in più) (1965)BFor a Good Time, Call... (2012)B For the Bible Tells Me So (2007)BFor the Birds (2000)BFor the Boys (1991)BFor the Love of Benji (1977)B'Forbidden Games (Jeux interdits) (1952)BForbidden Kingdom, The (2008)BForbidden Planet (1956)BForce 10 from Navarone (1978)BForces of Nature (1999)BForeign Correspondent (1940)BForever Young (1992)BForget Paris (1995)B Forgetting Sarah Marshall (2008)BForgotten Silver (1996)BForgotten, The (2004)BFormula 51 (2001)BFormula of Love (1984)BForrest Gump (1994)BFort Tilden (2014)BFortress (1992)BFoul Play (1978)BFountain, The (2006)BFountainhead, The (1949)BFour Brothers (2005)BFour Christmases (2008)B;Four Days in September (O Que É Isso, Companheiro?) (1997)BFour Feathers, The (2002)BFour Lions (2010)BFour Musketeers, The (1974)BFour Rooms (1995)BFour Seasons, The (1981)B"Four Weddings and a Funeral (1994)BFourth Protocol, The (1987)BFox and the Hound, The (1981)BFoxfire (1996)BFoxy Brown (1974)BFracchia contro Dracula (1985)BFracture (2007)BFrailty (2001)BFraktus (2012)BFrances (1982)BFrances Ha (2012)BFrank (2014)BFrankenstein (1931)BFrankenstein (2015)BFrankenstein 90 (1984)B&Frankenstein Meets the Wolf Man (1943)B%Frankenstein Must Be Destroyed (1969)BFrankenstein Unbound (1990)BFrankenweenie (2012)BFrankie and Johnny (1966)BFrankie and Johnny (1991)BFrantic (1988)BFraternity Vacation (1985)BFreaked (1993)BFreaks (1932)BFreaks of Nature (2015)BFreaky Friday (1977)BFreaky Friday (2003)B)Fred Armisen: Standup for Drummers (2018)BFreddy Got Fingered (2001)BFreddy vs. Jason (2003)B\Freddy's Dead: The Final Nightmare (Nightmare on Elm Street Part 6: Freddy's Dead, A) (1991)BFree Enterprise (1998)BFree Fire (2017)BFree Willy (1993)B'Free Willy 2: The Adventure Home (1995)BFree to Play (2014)BFreedom Writers (2007)BFreedomland (2006)BFreejack (1992)BFreeway (1996)BFreezer (2014)BFrench Connection II (1975)BFrench Connection, The (1971)BFrench Kiss (1995)B%French Lieutenant's Woman, The (1981)B"French Twist (Gazon maudit) (1995)BFrenzy (1972)BFrequency (2000)B3Frequently Asked Questions About Time Travel (2009)BFresh (1994)BFreshman, The (1925)BFreshman, The (1990)BFrida (2002)BFriday (1995)BFriday After Next (2002)BFriday Night Lights (2004)BFriday the 13th (1980)BFriday the 13th (2009)BFriday the 13th Part 2 (1981)B!Friday the 13th Part 3: 3D (1982)B1Friday the 13th Part IV: The Final Chapter (1984)B.Friday the 13th Part V: A New Beginning (1985)B+Friday the 13th Part VI: Jason Lives (1986)B.Friday the 13th Part VII: The New Blood (1988)B7Friday the 13th Part VIII: Jason Takes Manhattan (1989)BFried Green Tomatoes (1991)BjFriend Is a Treasure, A (Chi Trova Un Amico, Trova un Tesoro) (Who Finds a Friend Finds a Treasure) (1981)BFriendly Persuasion (1956)BFriends & Lovers (1999)BFriends with Benefits (2011)BFriends with Kids (2011)BFriends with Money (2006)BFright Night (1985)BFright Night (2011)BFright Night Part II (1988)BFrighteners, The (1996)BFrisco Kid, The (1979)BFrisk (1995)BFrom Beyond (1986)BFrom Dusk Till Dawn (1996)B0From Dusk Till Dawn 2: Texas Blood Money (1999) BFrom Hell (2001)BFrom Here to Eternity (1953)BFrom Justin to Kelly (2003)BFrom Paris with Love (2010)BFrom Russia with Love (1963)B1From Up on Poppy Hill (Kokuriko-zaka kara) (2011)B!From the Earth to the Moon (1998)BFrom the Hip (1987)BFrom the Terrace (1960)BFront Cover (2016)BFront Page, The (1931)BFront Page, The (1974)BFront of the Class (2008)BFrontière(s) (2007)BFrost/Nixon (2008)BFrosty the Snowman (1969)BFrozen (2010)BFrozen (2013)BFrozen Planet (2011)BFrozen River (2008)BFruitvale Station (2013)BFubar (2002)BFuck (2005)B(Fuck You, Goethe (Fack Ju Göhte) (2013)BFugitive, The (1947)BFugitive, The (1993)BFugitives (1986)BFull Metal Jacket (1987)BFull Monty, The (1997)BFull Moon in Blue Water (1988)BFullmetal Alchemist 2018 (2017)BzFullmetal Alchemist the Movie: Conqueror of Shamballa (Gekijô-ban hagane no renkinjutsushi: Shanbara wo yuku mono) (2005)B4Fullmetal Alchemist: The Sacred Star of Milos (2011)B*Fulltime Killer (Chuen jik sat sau) (2001)B
Fun (1994)BFun with Dick and Jane (2005)BFuneral, The (1996)BFunhouse, The (1981)BFunny Bones (1995)BFunny Face (1957)BFunny Farm (1988)BFunny Games (1997)BFunny Games U.S. (2007)BFunny Girl (1968)BFunny People (2009)B6Funny Thing Happened on the Way to the Forum, A (1966)B0Fur: An Imaginary Portrait of Diane Arbus (2006)BFurious 7 (2015)BFury (1936)BFury (2014)BFury, The (1978)B#Futurama: Bender's Big Score (2007)BFuturama: Bender's Game (2008)B+Futurama: Into the Wild Green Yonder (2009)B/Futurama: The Beast with a Billion Backs (2008)BFutureworld (1976)BFuzz (1972)BG-Force (2009)BG.B.F. (2013)BG.I. Jane (1997)BG.I. Joe: Retaliation (2013)BG.I. Joe: The Movie (1987)B"G.I. Joe: The Rise of Cobra (2009)B:GLOW: The Story of the Gorgeous Ladies of Wrestling (2012)B'Gabriel Iglesias: Hot and Fluffy (2007)BGaga: Five Foot Two (2017)BGalaxy Quest (1999)BGalaxy of Terror (Quest) (1981)BGallipoli (1981)BGame 6 (2005)BGame Night (2018)BGame Over, Man! (2018)BGame Plan, The (2007)BGame of Death (1978)BGame, The (1997)BGamer (2009)B#Gamers, The: Dorkness Rising (2008)BGandhi (1982)BGang Related (1997)BGangs of New York (2002)BGangster No. 1 (2000)BGangster Squad (2013)BGarage (2007)BGarage Days (2002)BGaram Masala (2005)BGarden State (2004)B0Garden of Words, The (Koto no ha no niwa) (2013)BIGarden of the Finzi-Continis, The (Giardino dei Finzi-Contini, Il) (1970)BGardens of Stone (1987)BGarfield's Pet Force (2009)B&Garfield: A Tail of Two Kitties (2006)BGarfield: The Movie (2004)B Garm Wars: The Last Druid (2014)BGas, Food, Lodging (1992)BGaslight (1944)BGate, The (1987)BGattaca (1997)BGauntlet, The (1977)BGay Divorcee, The (1934)BGen-X Cops (1999)BGena the Crocodile (1969)B General Died at Dawn, The (1936)BGeneral's Daughter, The (1999)BGeneral, The (1926)BGeneral, The (1998)BGeneration Iron 2BGeneration P (2011)BGeneration War (2013)BGeneration X (1996)BGenghis Blues (1999)BGenius (2016)BGenius Party (2007)BGentleman's Agreement (1947)BGentlemen Broncos (2009)BGentlemen Prefer Blondes (1953)B0Gentlemen of Fortune (Dzhentlmeny udachi) (1972)B"George Carlin: Back in Town (1996)B&George Carlin: It's Bad for Ya! (2008)B)George Carlin: Jammin' in New York (1992)B*George Carlin: Life Is Worth Losing (2005)B*George Carlin: You Are All Diseased (1999)B4George Harrison: Living in the Material World (2011)BGeorge Washington (2000)BGeorge of the Jungle (1997)BGeorgia (1995)BGeorgy Girl (1966)BGeostorm (2017)BGeri's Game (1997)BIGermany Year Zero (Germania anno zero) (Deutschland im Jahre Null) (1948)BGerminal (1993)B#Geronimo: An American Legend (1993)BGerry (2002)BGet Carter (1971)BGet Carter (2000)BGet Hard (2015)BGet Him to the Greek (2010)BGet Low (2009)BGet Me Roger Stone (2017)BGet Out (2017)BGet Over It (2001)BGet Real (1998)BGet Shorty (1995)BGet Smart (2008)BGet a Job (2016)BGet on Up (2014)BGet on the Bus (1996)BGet the Gringo (2012)BGetaway (2013)BGetaway, The (1972)BGetaway, The (1994)BGetting Even with Dad (1994)BGettysburg (1993)BGhost (1990)BGhost Dad (1990)B(Ghost Dog: The Way of the Samurai (1999)BGhost Graduation (2012)BGhost Rider (2007)B'Ghost Rider: Spirit of Vengeance (2012)BGhost Ship (2002)BGhost Story (1981)BGhost Town (2008)BGhost World (2001)BGhost Writer, The (2010)BGhost and Mrs. Muir, The (1947)B"Ghost and the Darkness, The (1996)BGhost in the Shell (2017)B,Ghost in the Shell (Kôkaku kidôtai) (1995)BGhost in the Shell 2.0 (2008)BDGhost in the Shell 2: Innocence (a.k.a. Innocence) (Inosensu) (2004)B6Ghost in the Shell Arise - Border 1: Ghost Pain (2013)B:Ghost in the Shell Arise - Border 2: Ghost Whispers (2013)B.Ghost in the Shell: Solid State Society (2006)BAGhost in the Shell: Stand Alone Complex - The Laughing Man (2005)BGhostbusters (2016)B*Ghostbusters (a.k.a. Ghost Busters) (1984)BGhostbusters II (1989)B!Ghosts of Girlfriends Past (2009)BGhosts of Mars (2001)BGhosts of Mississippi (1996)BGhosts of the Abyss (2003)BGhoulies II (1987)B
Gia (1998)BGiant (1956)B!Giant Spider Invasion, The (1975)BGidget (1959)BGift, The (2000)BGifted (2017)B%Gigantic (A Tale of Two Johns) (2002)BGigi (1949)BGigi (1958)BGigli (2003)BGilda (1946)BGimme Danger (2016)BGinger Snaps (2000)B'Ginger Snaps Back: The Beginning (2004)BGinger Snaps: Unleashed (2004)BGingerbread Man, The (1998)BGintama (2017)B7Gintama: The Final Chapter - Be Forever Yorozuya (2013)BGintama: The Movie (2010)BGirl 6 (1996)BGirl Next Door, The (2004)BGirl Next Door, The (2007)B(Girl Walks Home Alone at Night, A (2014)BGirl Walks Into a Bar (2011)BJGirl Who Kicked the Hornet's Nest, The (Luftslottet som sprängdes) (2009)B>Girl Who Leapt Through Time, The (Toki o kakeru shôjo) (2006)BCGirl Who Played with Fire, The (Flickan som lekte med elden) (2009)B6Girl on the Bridge, The (Fille sur le pont, La) (1999)B Girl with a Pearl Earring (2003)B'Girl with the Dragon Tattoo, The (2011)B@Girl with the Dragon Tattoo, The (Män som hatar kvinnor) (2009)BGirl, Interrupted (1999)BGirlfight (2000)BGirls About Town (1931)B"Girls Just Want to Have Fun (1985)BGirls! Girls! Girls! (1962)B Girltrash: All Night Long (2014)BGiver, The (2014)BGladiator (1992)BGladiator (2000)BGlass House, The (2001)BGlass Menagerie, The (1987)BGleaming the Cube (1989)B6Gleaners & I, The (Les glaneurs et la glaneuse) (2000)BGlen or Glenda (1953)BGlengarry Glen Ross (1992)BGlenn Miller Story, The (1953)BGlimmer Man, The (1996)BGlitter (2001)B1Gloomy Sunday (Ein Lied von Liebe und Tod) (1999)BGlory (1989)BGlory Daze (1995)BGlory Road (2006)BGnomeo & Juliet (2011)B	Go (1999)BGo Figure (2005)BGo Fish (1994)BGo West (1940)B)Go for Zucker! (Alles auf Zucker!) (2004)B%Goal! The Dream Begins (Goal!) (2005)BGoat (2016)BGod Bless America (2011)BGod Loves Caviar (2012)BGod's Not Dead (2014)BGodfather, The (1972)BGodfather: Part II, The (1974)BGodfather: Part III, The (1990)B!Gods Must Be Crazy II, The (1989)BGods Must Be Crazy, The (1980)BGods and Generals (2003)BGods and Monsters (1998)BGods of Egypt (2016)BGodsend (2004)BGodzilla (1998)BGodzilla (2014)BGodzilla (Gojira) (1954)BXGodzilla 1985: The Legend Is Reborn (Gojira) (Godzilla) (Return of Godzilla, The) (1984)B.Godzilla 2000 (Gojira ni-sen mireniamu) (1999)B9Godzilla vs. Mechagodzilla (Gojira tai Mekagojira) (1974)B.Godzilla vs. Mothra (Mosura tai Gojira) (1964)B9Godzilla, King of the Monsters! (Kaijû-ô Gojira) (1956)B3Godzilla: Final Wars (Gojira: Fainaru uôzu) (2004)B8Going Clear: Scientology and the Prison of Belief (2015)BGoing My Way (1944)B$Going Places (Valseuses, Les) (1974)BGoing in Style (1979)BGoing the Distance (2010)BGold Diggers of 1933 (1933)BGold Diggers of 1935 (1935)BGold Rush, The (1925)BGolden Bowl, The (2000)BGolden Child, The (1986)BGolden Compass, The (2007)BGolden Door (Nuovomondo) (2006)BGoldenEye (1995)BGoldfinger (1964)BGolmaal (2006)BGomorrah (Gomorra) (2008)BGone (2012)BGone Baby Gone (2007)BGone Fishin' (1997)BGone Girl (2014)BGone in 60 Seconds (1974)BGone in 60 Seconds (2000)BGone with the Wind (1939)B9Gonzo: The Life and Work of Dr. Hunter S. Thompson (2008)BGood Burger (1997)BGood Copy Bad Copy (2007)BGood Day to Die Hard, A (2013)BGood Earth, The (1937)BGood German, The (2006)BGood Girl, The (2002)BGood Luck Chuck (2007)BGood Morning, Vietnam (1987)BGood Mother, The (1988)B!Good Night, and Good Luck. (2005)BGood Shepherd, The (2006)BGood Son, The (1993)BGood Thief, The (2002)BGood Time (2017)BGood Will Hunting (1997)BGood Year, A (2006)BGood bye, Lenin! (2003)BIGood, the Bad and the Ugly, The (Buono, il brutto, il cattivo, Il) (1966)BGGood, the Bad, the Weird, The (Joheunnom nabbeunnom isanghannom) (2008)BGoodbye Charlie (1964)BGoodbye Girl, The (1977)BGoodbye Lover (1999)BGoodbye, Mr. Chips (1939)BGoodfellas (1990)B(Goodnight Mommy (Ich seh ich seh) (2014)B'Goods: Live Hard, Sell Hard, The (2009)BGoofy Movie, A (1995)BGoon (2011)B"Goon: Last of the Enforcers (2017)BGoonies, The (1985)BGoosebumps (2015)BGordy (1995)BGorgeous (Boh lee chun) (1999)BGorillas in the Mist (1988)BGorky Park (1983)BGosford Park (2001)BHGospel According to St. Matthew, The (Vangelo secondo Matteo, Il) (1964)BGossip (2000)BGotcha! (1985)BGothic (1986)BGothika (2003)BGotti (1996)B.Gozu (Gokudô kyôfu dai-gekijô: Gozu) (2003)BGrabbers (2012)BGrace of My Heart (1996)BGraduate, The (1967)BGran Torino (2008)B Grand Budapest Hotel, The (2014)BGrand Canyon (1991)B/Grand Day Out with Wallace and Gromit, A (1989)BGrand Hotel (1932)B*Grand Illusion (La grande illusion) (1937)BGrand Theft Parsons (2003)BGrandma's Boy (2006)B)Grandmaster, The (Yi dai zong shi) (2013)BGrapes of Wrath, The (1940)BGrass (1999)BGrass Is Greener, The (1960)BGrave Encounters (2011)B.Grave of the Fireflies (Hotaru no haka) (1988)BGravity (2013)BGray's Anatomy (1996)BGrease (1978)BGrease 2 (1982)BGrease Live (2016)BGreat Balls of Fire! (1989)B.Great Beauty, The (Grande Bellezza, La) (2013)BGreat Buck Howard, The (2008)BGreat Day in Harlem, A (1994)BGreat Dictator, The (1940)BGreat Escape, The (1963)BGreat Expectations (1946)BGreat Expectations (1998)BGreat Gatsby, The (1974)BGreat Gatsby, The (2013)B!Great Mouse Detective, The (1986)BGreat Muppet Caper, The (1981)BGreat Outdoors, The (1988)BGreat Race, The (1965)BGreat Santini, The (1979)B/Great Silence, The (Grande silenzio, Il) (1969)BGreat White Hype, The (1996)B.Great Yokai War, The (Yôkai daisensô) (2005)BGreat Ziegfeld, The (1936)B%Greatest Game Ever Played, The (2005)B$Greatest Story Ever Told, The (1965)BGreed (1924)BGreedy (1994)B1Green Butchers, The (Grønne slagtere, De) (2003)BGreen Card (1990)BGreen Hornet, The (2011)BGreen Lantern (2011)B"Green Lantern: First Flight (2009)BGreen Mile, The (1999)B&Green Ray, The (Rayon vert, Le) (1986)BGreen Room (2015)B0Green Street Hooligans (a.k.a. Hooligans) (2005)BGreen Zone (2010)BGreenberg (2010)BGreenfingers (2000)BGregory's Girl (1981)BGremlins (1984)B Gremlins 2: The New Batch (1990)BGrey Gardens (1975)BGrey Zone, The (2001)BGrey, The (2012)BGridiron Gang (2006)BGridlock'd (1997)BGrifters, The (1990)BGrind (2003)BGrindhouse (2007)BGrizzly Man (2005)BGroove (2000)B)Gross Anatomy (a.k.a. A Cut Above) (1989)BGrosse Pointe Blank (1997)BGroundhog Day (1993)BGrown Ups (2010)BGrown Ups 2 (2013)BGrudge Match (2013)BGrudge, The (2004)BGrumpier Old Men (1995)BGrumpy Old Men (1993)BGuard, The (2011)BGuardian, The (1990)BGuardian, The (2006)BGuardians (2016)BGuardians of the Galaxy (2014)B Guardians of the Galaxy 2 (2017)BGuarding Tess (1994)B,Guerrilla: The Taking of Patty Hearst (2004)BGuess Who (2005)B#Guess Who's Coming to Dinner (1967)B3Guest from the Future (Gostya iz buduschego) (1985)BGuest, The (2014)BGuilt Trip, The (2012)B(Guilty of Romance (Koi no tsumi) (2011) BGuinevere (1999)BGulliver's Travels (1939)BGulliver's Travels (1996)BGulliver's Travels (2010)BGummo (1997)BGun Shy (2000)BGung Ho (1986)BGunga Din (1939)BGunman, The (2015)BGunner Palace (2004)BGuns of Navarone, The (1961)BGuru, The (2002)BGuy Thing, A (2003)BGuy X (2005)BGuys and Dolls (1955)BGuyver: Dark Hero (1994)BGypsy (1962)BGüeros (2014)B:Hachiko: A Dog's Story (a.k.a. Hachi: A Dog's Tale) (2009)BHackers (1995)BHacksaw Ridge (2016)BHaiku Tunnel (2001)BHail, Caesar! (2016)BHair (1979)B;Hairdresser's Husband, The (Le mari de la coiffeuse) (1990)BHairspray (1988)BHairspray (2007)BHalf Baked (1998)BHalf Nelson (2006)B?Half a Loaf of Kung Fu (Dian zhi gong fu gan chian chan) (1980)BHall Pass (2011)BHalloween (1978)BHalloween (2007)B/Halloween 4: The Return of Michael Myers (1988)B0Halloween 5: The Revenge of Michael Myers (1989)BPHalloween H20: 20 Years Later (Halloween 7: The Revenge of Laurie Strode) (1998)BHalloween II (1981)BHalloween II (2009)B)Halloween III: Season of the Witch (1982)B,Halloween: Resurrection (Halloween 8) (2002)BVHalloween: The Curse of Michael Myers (Halloween 6: The Curse of Michael Myers) (1995)BHalloweentown (1998)BHalloweentown High (2004)BHamburger Hill (1987)BHamlet (1948)BHamlet (1964)BHamlet (1990)BHamlet (1996)BHamlet (2000)BHamlet 2 (2008)BHancock (2008)B&Hand That Rocks the Cradle, The (1992)BHandmaid's Tale, The (1990)B1Hands Off the Loot (Touchez pas au grisbi) (1954)B1Hands Over the City (Le mani sulla città) (1963)BHands on a Hard Body (1996)BHang 'Em High (1968)BHangar 18 (1980)BHanging Up (2000)BHangover Part II, The (2011)BHangover Part III, The (2013)BHangover, The (2009)BHanna (2011)B Hannah Montana: The Movie (2009)BHannah and Her Sisters (1986)BHannibal (2001)BHannibal Rising (2007)B%Hansel & Gretel: Witch Hunters (2013)BHappening, The (2008)B7Happenstance (Battement d'ailes du papillon, Le) (2001)BHappiness (1998)B?Happiness of the Katakuris, The (Katakuri-ke no kôfuku) (2001)BHappy Accidents (2000)BHappy Birthday to Me (1981)BHappy Endings (2005)BHappy Feet (2006)BHappy Feet Two (2011)BHappy Gilmore (1996)BHappy Go Lovely (1951)B(Happy People: A Year in the Taiga (2010)BGHappy Together (a.k.a. Buenos Aires Affair) (Chun gwong cha sit) (1997)BHappy, Texas (1999)BHappy-Go-Lucky (2008)BHarakiri (Seppuku) (1962)BHard Candy (2005)BHard Core Logo (1996)BHard Day's Night, A (1964)BHard Promises (1991)BHard Rain (1998)BHard Target (1993)BHard Ticket to Hawaii (1987)BHard Way, The (1991)B%Hard-Boiled (Lat sau san taam) (1992)BHardball (2001)BHardcore Henry (2015)BHarder They Come, The (1973)BHarder They Fall, The (1956)BHardware (1990)BHare-um Scare-um (1939)BHarlan County U.S.A. (1976)BHarlem Nights (1989)B+Harley Davidson and the Marlboro Man (1991)BHarmonists, The (1997)B0Harold & Kumar Escape from Guantanamo Bay (2008)B*Harold and Kumar Go to White Castle (2004)BHarold and Maude (1971)BHarriet the Spy (1996)BHarrison Bergeron (1995)BHarrison's Flowers (2000)BHarry Brown (2009)B.Harry Potter and the Chamber of Secrets (2002)B3Harry Potter and the Deathly Hallows: Part 1 (2010)B3Harry Potter and the Deathly Hallows: Part 2 (2011)B*Harry Potter and the Goblet of Fire (2005)B-Harry Potter and the Half-Blood Prince (2009)B0Harry Potter and the Order of the Phoenix (2007)B/Harry Potter and the Prisoner of Azkaban (2004)B^Harry Potter and the Sorcerer's Stone (a.k.a. Harry Potter and the Philosopher's Stone) (2001)BHarry and the Hendersons (1987)BHarsh Times (2006)BHart's War (2002)BHarvard Man (2001)BHarvey (1950)BHarvey Girls, The (1946)BHatari! (1962)BHatchet (2006)BHatchet II (2010)BHatchet III (2013)BHate (Haine, La) (1995)BHaunted Honeymoon (1986)BHaunted House 2, A (2014)BHaunted Mansion, The (2003)B/Haunted World of Edward D. Wood Jr., The (1996)B+Haunted World of El Superbeasto, The (2009)BHaunter (2013)B#Haunting in Connecticut, The (2009)BHaunting, The (1963)BHaunting, The (1999)BHavoc (2005)B2Hawks and Sparrows (Uccellacci e Uccellini) (1966)BHaywire (2011)BHazard (2005)BHe Got Game (1998)BBHe Loves Me... He Loves Me Not (À la folie... pas du tout) (2002)BHe Never Died (2015)BHe Said, She Said (1991)B"He's Just Not That Into You (2009)BHead Above Water (1996)BHead On (1998)BHead Over Heels (2001)BHead of State (2003)B Headhunters (Hodejegerne) (2011)BHeadshot (2011)BHear My Song (1991)BHeart Condition (1990)BHeart and Souls (1993)B-Heart in Winter, A (Un coeur en hiver) (1992)B(Heart of a Dog (Sobachye serdtse) (1988)B*Heartbeats (Les amours imaginaires) (2010)BHeartbreak Kid, The (2007)BHeartbreak Ridge (1986)B!Heartbreaker (L'Arnacoeur) (2010)BHeartbreakers (2001)BHeartburn (1986)BHeartless (2009)BHearts and Minds (1996)BHearts in Atlantis (2001)B2Hearts of Darkness: A Filmmakers Apocalypse (1991)BHeat (1995)BHeat, The (2013)BHeathers (1989)BHeaven (2002)BHeaven Can Wait (1978)B'Heaven and Earth (Ten to Chi to) (1990)BHeaven's Prisoners (1996)BHeavenly Creatures (1994)BHeavy (1995)BHeavy Metal (1981)BHeavy Metal 2000 (2000)B#Heavyweights (Heavy Weights) (1995)B*Hector and the Search for Happiness (2014)BHedgehog in the Fog (1975)B Hedwig and the Angry Inch (2000)BHeidi (1937)B$Heidi Fleiss: Hollywood Madam (1995)BHeima (2007)BHeiress, The (1949)BHeist (2001)BHelen of Troy (2003)BHell Comes to Frogtown (1988)BHell Night (1981)BHell Ride (2008)BHell in the Pacific (1968)BHell or High Water (2016)BHellbenders (2012)BHellbound: Hellraiser II (1988)BHellboy (2004)B"Hellboy II: The Golden Army (2008)BHellevator (2004)BHello Again (1987)BHello Ladies: The Movie (2014)BHello, Dolly! (1969)BHellraiser (1987)B$Hellraiser III: Hell on Earth (1992)BHellraiser: Bloodline (1996)BHellsinki (Rööperi) (2009)BHelp! (1965)BHelp, The (2011)BHelter Skelter (2004)BHelvetica (2007)BHenry & June (1990)BHenry Fool (1997)BHenry Poole is Here (2008)BHenry V (1989)BHenry's Crime (2010)B)Henry: Portrait of a Serial Killer (1986)B
Her (2013)BHer Alibi (1989)BHerbie Goes Bananas (1980)B!Herbie Goes to Monte Carlo (1977)BHerbie Rides Again (1974)BHerbie: Fully Loaded (2005)BHercules (1997)BHercules (2014)BHere Comes Mr. Jordan (1941)BHere Comes the Boom (2012)BHere on Earth (2000)BHereafter (2010)BHero (1992)BHero (Ying xiong) (2002)B'Herod's Law (Ley de Herodes, La) (2000)BHesher (2010)BHey Arnold! The Movie (2002)BHidalgo (2004)B%Hidden (a.k.a. Cache) (Caché) (2005)BHidden Figures (2016)B:Hidden Fortress, The (Kakushi-toride no san-akunin) (1958)BHidden, The (1987)BHide and Seek (2005)BHideaway (1995)BHideous Kinky (1998)BHiding Out (1987)BHigh Anxiety (1977)BHigh Art (1998)BHigh Crimes (2002)BHigh Fidelity (2000)B#High Heels (Tacones lejanos) (1991)BHigh Heels and Low Lifes (2001)BHigh Noon (1952)BHigh Plains Drifter (1973)BHigh Rise (2015)BHigh School (2010)BHigh School High (1996)BHigh School Musical (2006)BHigh School Musical 2 (2007)BHigh Sierra (1941)BHigh Society (1956)BHigh Spirits (1988)B9High Tension (Haute tension) (Switchblade Romance) (2003)B'High and Low (Tengoku to jigoku) (1963)BHigher Learning (1995)BHighlander (1986)B$Highlander II: The Quickening (1991)BLHighlander III: The Sorcerer (a.k.a. Highlander: The Final Dimension) (1994)B*Highlander: Endgame (Highlander IV) (2000)B+Highlander: The Search for Vengeance (2007)BHighway 61 (1991)BHilary and Jackie (1998)BHills Have Eyes II, The (2007)BHills Have Eyes, The (1977)BHills Have Eyes, The (2006)B0Himalaya (Himalaya - l'enfance d'un chef) (1999)BHimizu (2011)BHip Hop Witch, Da (2000)BHipsters (Stilyagi) (2008)BHiroshima Mon Amour (1959)BHis Girl Friday (1940)BJHis Secret Life (a.k.a. Ignorant Fairies, The) (Fate ignoranti, Le) (2001)BHistory Boys, The (2006)B"History of Future Folk, The (2012)BHistory of Violence, A (2005)B#History of the World: Part I (1981)BHit by Lightning (2014)BHit the Bank (Vabank) (1981)BHitch (2005)B,Hitch Hikers Guide to the Galaxy, The (1981)BHitchcock (2012)BHitchcock/Truffaut (2015)BHitcher, The (1986)BHitcher, The (2007)B,Hitchhiker's Guide to the Galaxy, The (2005)BHitman (2007)BHitman: Agent 47 (2015)BHoax, The (2007)B)Hobbit: An Unexpected Journey, The (2012)B+Hobbit: The Desolation of Smaug, The (2013)BHobo with a Shotgun (2011)BHocus Pocus (1993)BHoffa (1992)B.Hogfather (Terry Pratchett's Hogfather) (2006)BHoles (2003)BHoliday (1938)BHoliday (Jour de fête) (1949)BHoliday Inn (1942)BHoliday, The (2006)BHollow Man (2000)B!Hollywood Chainsaw Hookers (1988)BHollywood Ending (2002)BHollywood Homicide (2003)BHollywood Knights, The (1980)BHollywood Shuffle (1987)BHollywoodland (2006)BHoly Man (1998)BHoly Motors (2012)B0Holy Mountain, The (Montaña sagrada, La) (1973)BHoly Smoke (1999)BHombre (1967)BHome (2009)BHome (2015)BHome Alone (1990)B%Home Alone 2: Lost in New York (1992)BHome Alone 3 (1997)BHome Fries (1998)BHome for the Holidays (1995)BHomefront (2013)BHomegrown (1998)B/Homeward Bound II: Lost in San Francisco (1996)B-Homeward Bound: The Incredible Journey (1993)B4Hommage à Zgougou (et salut à Sabine Mamou) (2002)BHonest Liar, An (2014)BHoney (2003)BHoney (Miele) (2013)BHoney, I Blew Up the Kid (1992)BHoney, I Shrunk the Kids (1989)B!Honey, We Shrunk Ourselves (1997)BHoneymoon (2014)BHoneymoon in Vegas (1992)BHood of Horror (2006)BHoodlum (1997)BHoodwinked! (2005)BHook (1991)BHoop Dreams (1994)B"Hoosiers (a.k.a. Best Shot) (1986)B
Hop (2011)BHope Floats (1998)BHope Springs (2003)BHope Springs (2012)BHope and Glory (1987)BHopscotch (1980)BHorde, The (La Horde) (2009)BHorns (2014)BHorrible Bosses (2011)BHorrible Bosses 2 (2014)B"Horror of Dracula (Dracula) (1958)B8Horrors of Spider Island (Ein Toter Hing im Netz) (1960)BHorse Feathers (1932)BHorse Soldiers, The (1959)BHorse Whisperer, The (1998)B:Horseman on the Roof, The (Hussard sur le toit, Le) (1995)BHorton Hears a Who! (2008)BHost, The (2013)BHost, The (Gwoemul) (2006)BHostage (2005)BHostel (2005)BHostel: Part II (2007)BHot Chick, The (2002)BHot Dog... The Movie (1984)BHot Fuzz (2007)BHot Girls Wanted (2015)BHot Lead and Cold Feet (1978)BHot Pursuit (2015)BHot Rod (2007)BHot Shots! (1991)BHot Shots! Part Deux (1993)BHot Spot, The (1990)BHot Tub Time Machine (2010)BHot Tub Time Machine 2 (2015)B;Hotel Chevalier (Part 1 of 'The Darjeeling Limited') (2007)BHotel Rwanda (2004)BHotel Transylvania (2012)BHotel Transylvania 2 (2015)BHoudini (2014)B$Hour of the Wolf (Vargtimmen) (1968)BHours, The (2002)BHouse (1986)BHouse Arrest (1996)BHouse Bunny, The (2008)B!House II: The Second Story (1987)BHouse Party (1990)BHouse Party 2 (1991)BHouse Party 3 (1994)B%House at the End of the Street (2012)BHouse of 1000 Corpses (2003)BHouse of Cards (1993)B0House of Flying Daggers (Shi mian mai fu) (2004)BHouse of Games (1987)BHouse of Mirth, The (2000)BHouse of Sand and Fog (2003)BHouse of Wax (1953)BHouse of Wax (2005)BHouse of Yes, The (1997)BHouse of the Dead, The (2003)BHouse of the Devil, The (2009)B House of the Spirits, The (1993)BHouse on Haunted Hill (1999)BHouseboat (1958)BHousebound (2014)BHouseguest (1994)BHousesitter (1992)BHow Do You Know (2010)BHow High (2001)B%How Stella Got Her Groove Back (1998)BHow To Change The World (2015)B9How the Grinch Stole Christmas (a.k.a. The Grinch) (2000)B&How the Grinch Stole Christmas! (1966)BHow to Be Single (2016)BHow to Deal (2003)B&How to Get Ahead in Advertising (1989)B&How to Kill Your Neighbor's Dog (2000)B,How to Lose Friends & Alienate People (2008)B#How to Lose a Guy in 10 Days (2003)B*How to Make Love Like an Englishman (2014)B"How to Make Love to a Woman (2010)B$How to Make an American Quilt (1995)B!How to Marry a Millionaire (1953)BHow to Steal a Million (1966)B7How to Succeed in Business Without Really Trying (1967)BHow to Train Your Dragon (2010)B!How to Train Your Dragon 2 (2014)BHoward the Duck (1986)BHowards End (1992)BHowl (2010)B2Howl's Moving Castle (Hauru no ugoku shiro) (2004)B,Howling II: Your Sister Is a Werewolf (1985)BHowling, The (1980)B
Hud (1963)BHudson Hawk (1991)BHudsucker Proxy, The (1994)BHugo (2011)BHulk (2003)BHulk Vs. (2009)BHuman (2015)B,Human Centipede, The (First Sequence) (2009)B1Human Condition I, The (Ningen no joken I) (1959)B3Human Condition II, The (Ningen no joken II) (1959)B5Human Condition III, The (Ningen no joken III) (1961)BHuman Nature (2001)BHuman Planet (2011)BHuman Stain, The (2003)BHuman Traffic (1999)BHumanoids from the Deep (1980)BHumpday (2009)B#Hunchback of Notre Dame, The (1923)B#Hunchback of Notre Dame, The (1939)B#Hunchback of Notre Dame, The (1996)BHunger (2008)BHunt For Gollum, The (2009)B Hunt for Red October, The (1990)B Hunt for the Wilderpeople (2016)BHunt, The (Jagten) (2012)BHunted, The (1995)BHunted, The (2003)BHunting Elephants (2013)BHunting Party, The (2007)B$Hunting of the President, The (2004)BHurlyburly (1998)BHurricane Streets (1997)BHurricane, The (1999)BHurt Locker, The (2008)BHusbands and Wives (1992)BHush (1998)BHush (2016)B$Hush... Hush, Sweet Charlotte (1964)BHustle & Flow (2005)BHustler White (1996)BHustler, The (1961)BHyde Park on Hudson (2012)B
Hyena RoadBHype! (1996)BHyperNormalisation (2016)BHysteria (2011)BI Am David (2003)BI Am Legend (2007)BI Am Not Your Negro (2017)BI Am Number Four (2011)BI Am Sam (2001)B&I Am Trying to Break Your Heart (2002)BI Am Wrath (2016)B(I Am a Fugitive from a Chain Gang (1932)BI Am a Sex Addict (2005)B$I Bought a Vampire Motorcycle (1990)BI Can't Think Straight (2007)BI Capture the Castle (2003)BI Confess (1953)BDI Do: How to Get Married and Stay Single (Prête-moi ta main) (2006)B#I Don't Know How She Does It (2011)BI Heart Huckabees (2004)BI Kill Giants (2018)B.I Killed My Mother (J'ai tué ma mère) (2009)B&I Know What You Did Last Summer (1997)BI Know Who Killed Me (2007)BI Like It Like That (1994)BI Love Trouble (1994)BI Love You Again (1940)B I Love You Phillip Morris (2009)BI Love You to Death (1990)BI Love You, Beth Cooper (2009)B!I Love You, I Love You Not (1996)BI Love You, Man (2009)B)I Never Promised You a Rose Garden (1977)B*I Now Pronounce You Chuck and Larry (2007)BI Origins (2014)BI Remember Mama (1948)BI Saw What You Did (1965)B(I Saw the Devil (Akmareul boatda) (2010)BI Sell the Dead (2008)BHI Served the King of England (Obsluhoval jsem anglického krále) (2006)BI Shot Andy Warhol (1996)BI Shot Jesse James (1949)BI Spit on Your Grave (2010)B.I Spit on Your Grave (Day of the Woman) (1978)BI Spy (2002)B'I Stand Alone (Seul contre tous) (1998)B,I Still Know What You Did Last Summer (1998)BI Think I Love My Wife (2007)BI Walked with a Zombie (1943)BI Want to Live! (1958)BI Was a Male War Bride (1949)BI Went Down (1997)B!I'll Be Home For Christmas (1998)BI'll Do Anything (1994)BI'll Follow You Down (2013)BI'm Gonna Git You Sucka (1988)BI'm Here (2010)B'I'm Not Scared (Io non ho paura) (2003)BI'm Not There (2007)B2I'm Starting From Three (Ricomincio da Tre) (1981)BI'm Still Here (2010)B;I'm a Cyborg, But That's OK (Saibogujiman kwenchana) (2006)BI'm the One That I Want (2000)BI, Frankenstein (2014)BI, Robot (2004)BI, Tonya (2017)BI, the Jury (1982)B I.O.U.S.A. (a.k.a. IOUSA) (2008)BI.Q. (1994)BIcarus (2017)BIce Age (2002)BIce Age 2: The Meltdown (2006)B#Ice Age 4: Continental Drift (2012)B#Ice Age: A Mammoth Christmas (2011)B Ice Age: Collision Course (2016)B%Ice Age: Dawn of the Dinosaurs (2009)B%Ice Age: The Great Egg-Scapade (2016)BIce Castles (1978)BIce Cream Man (1995)BIce Guardians (2016)BIce Harvest, The (2005)BIce Princess (2005)BIce Storm, The (1997)BIceman, The (2012)B$Ichi the Killer (Koroshiya 1) (2001)B-Icicle Thief, The (Ladri di saponette) (1989)BIdaho Transfer (1973)BIdeal Husband, An (1999)BIdentity (2003)BIdentity Thief (2013)BIdes of March, The (2011)BIdiocracy (2006)BIdiots and Angels (2008)BIdiots, The (Idioterne) (1998)BIdle Hands (1999)BIdlewild (2006)BIf I Stay (2014)BIf I Were a Rich Man (2002)BIf Looks Could Kill (1991)BIf Lucy Fell (1996)B If These Walls Could Talk (1996)B"If These Walls Could Talk 2 (2000)BIgby Goes Down (2002)BIgor (2008)BIkiru (1952)B%Iliza Shlesinger: Freezing Hot (2015)BIllusionist, The (2006)B)Illusionist, The (L'illusionniste) (2010)BIlsa, She Wolf of the SS (1974)B+Imaginarium of Doctor Parnassus, The (2009)BImaginary Heroes (2004)BImagine Me & You (2005)BImagine That (2009)BImitation of Life (1959)BImmature, The (Immaturi) (2011)BImmigrant, The (1917)BImmortal Beloved (1994)BImmortals (2011)BImperium (2016)B'Importance of Being Earnest, The (2002)B&Impossible, The (Imposible, Lo) (2012)BImposter, The (2012)BImpostor (2002)BImpostors, The (1998)BImpromptu (1991)BIn & Out (1997)BIn America (2002)BIn Bruges (2008)B6In China They Eat Dogs (I Kina spiser de hunde) (1999)BIn Cold Blood (1967)BIn Crowd, The (2000)BIn Dreams (1999)BIn Good Company (2004)BIn Hell (2003)BIn Her Shoes (2005)BIn July (Im Juli) (2000)BIn Like Flint (1967)BIn Love and War (1996)BIn My Father's Den (2004)B!In Search of the Castaways (1962)BIn This World (2002)BIn Time (2011)BIn Too Deep (1999)B"In a Better World (Hævnen) (2010)BIn a Lonely Place (1950)BIn a World... (2013)BIn the Army Now (1994)BIn the Bedroom (2001)BIn the Bleak Midwinter (1995)BIn the Company of Men (1997)BIn the Cut (2003)BIn the Electric Mist (2009)BIn the Heart of the Sea (2015)BIn the Heat of the Night (1967)BIn the Land of Women (2007)BIn the Line of Fire (1993)BIn the Loop (2009)B-In the Mood For Love (Fa yeung nin wa) (2000)BIn the Mouth of Madness (1995)B In the Name of the Father (1993)B"In the Name of the King III (2014)B4In the Name of the King: A Dungeon Siege Tale (2008)B1In the Realm of the Senses (Ai no corrida) (1976)BIn the Valley of Elah (2007)B*In the blue sea, in the white foam. (1984)BIn-Laws, The (2003)BInbetweeners 2, The (2014)BInbetweeners Movie, The (2011)BIncendies (2010)BInception (2010)BIncident at Loch Ness (2004)BIncognito (1997)BInconvenient Truth, An (2006)B'Incredible Burt Wonderstone, The (2013)BIncredible Hulk, The (2008)BIncredible Journey, The (1963)B!Incredible Mr. Limpet, The (1964)B$Incredible Shrinking Man, The (1957)B&Incredible Shrinking Woman, The (1981)BIncredibles 2 (2018)BIncredibles, The (2004)B:Incredibly True Adventure of Two Girls in Love, The (1995)BIndecent Proposal (1993)B$Independence Day (a.k.a. ID4) (1996)B#Independence Day: Resurgence (2016)BIndestructible Man (1956)BIndian Summer (1993)B-Indian Summer (a.k.a. Alive & Kicking) (1996)B"Indian in the Cupboard, The (1995)B9Indiana Jones and the Kingdom of the Crystal Skull (2008)B)Indiana Jones and the Last Crusade (1989)B+Indiana Jones and the Temple of Doom (1984)BIndie Game: The Movie (2012)BIndignation (2016)BIndiscreet (1958)BIndochine (1992)BInescapable (2012)BInfamous (2006)B&Infernal Affairs (Mou gaan dou) (2002)B+Infernal Affairs 2 (Mou gaan dou II) (2003)BInferno (1980)BInferno (2016)BInfini (2015)BInfinity (1996)BInformant!, The (2009)B:Inglorious Bastards (Quel maledetto treno blindato) (1978)BInglourious Basterds (2009)BInhale (2010)BInherent Vice (2014)BInherit the Wind (1960)B$Inhuman Resources (Redd Inc.) (2012)B
Ink (2009)BInkheart (2008)BInkwell, The (1994)BInland Empire (2006)BInnerspace (1987)BInnkeepers, The (2011)BInnocent Man, An (1989)BInside (À l'intérieur) (2007)BInside Job (2010)BInside Llewyn Davis (2013)BInside Man (2006)BInside Out (2015)BInsider, The (1999)BInsidious (2010)BInsidious: Chapter 2 (2013)BInsidious: Chapter 3 (2015)BInsidious: The Last Key (2018)BInsomnia (1997)BInsomnia (2002)BInspector Gadget (1999)BInspector General, The (1949)BInstinct (1999)BInsurgent (2015)BIntact (Intacto) (2001)BInteriors (1978)BIntermission (2003)BInternational, The (2009)B9Internet's Own Boy: The Story of Aaron Swartz, The (2014)BInternship, The (2013)BInterpreter, The (2005)BInterstate 60 (2002)BInterstellar (2014)BInterview (2007)B9Interview with the Vampire: The Vampire Chronicles (1994)BIntervista (1987)B4Intimate Strangers (Confidences trop intimes) (2004)BInto Eternity (2010)BInto the Abyss (2011)BAInto the Arms of Strangers: Stories of the Kindertransport (2000)BInto the Blue (2005)BInto the Forest (2015)B*Into the Forest of Fireflies' Light (2011)BInto the Grizzly Maze (2015)BInto the Wild (2007)BInto the Woods (1991)BInto the Woods (2014)BIntolerable Cruelty (2003)B7Intolerance: Love's Struggle Throughout the Ages (1916)BIntouchables (2011)B%Invasion of the Body Snatchers (1956)B%Invasion of the Body Snatchers (1978)BInvasion, The (2007)BInventing the Abbotts (1997)BInvention of Lying, The (2009)B$Investigation Held by Kolobki (1986)BiInvestigation of a Citizen Above Suspicion (Indagine su un cittadino al di sopra di ogni sospetto) (1970)BInvictus (2009)BInvincible (2001)BInvincible (2006)BInvincible Iron Man, The (2007)BInvincible Shaolin (1978)B!Invisible Man Returns, The (1940)BInvisible Man, The (1933)BInvisible, The (2007)BIp Man (2008)BIp Man 2 (2010)BIp Man 3 (2015)BIpcress File, The (1965)BIris (2001)BIrma la Douce (1963)BIron Eagle (1986)BIron Eagle II (1988)BIron Eagle IV (1995)BIron Giant, The (1999)BIron Lady, The (2011)B%Iron Man & Hulk: Heroes United (2013)BIron Man (1931)BIron Man (2008)BIron Man 2 (2010)BIron Man 3 (2013)B9Iron Monkey (Siu nin Wong Fei-hung ji: Tit Ma Lau) (1993)BIron Sky (2012)BIron Soldier (2010)BIron Will (1994)BNIrony of Fate, or Enjoy Your Bath! (Ironiya sudby, ili S legkim parom!) (1975)BIrrational Man (2015)B#Irreversible (Irréversible) (2002)BIshtar (1987)B Island of Dr. Moreau, The (1996)BIsland, The (2005)BIsle of Dogs (2018)B	It (1990)B	It (2017)BIt Came from Hollywood (1982)BIt Came from Outer Space (1953)BIt Can't Be! (1975)BIt Comes at Night (2017)BIt Could Happen to You (1994)BIt Follows (2014)BIt Happened One Night (1934)B"It Happened on Fifth Avenue (1947)BIt Might Get Loud (2008)BIt Runs in the Family (2003)BIt Takes Two (1995)BIt's All Gone Pete Tong (2004)BIt's Complicated (2009)B!It's Kind of a Funny Story (2010)BIt's My Party (1996)BIt's Pat (1994)B It's Such a Beautiful Day (2012)BIt's a Boy Girl Thing (2006)B&It's a Mad, Mad, Mad, Mad World (1963)B/It's a Very Merry Muppet Christmas Movie (2002)BIt's a Wonderful Life (1946)B,It's the Great Pumpkin, Charlie Brown (1966)BItalian Job, The (1969)BItalian Job, The (2003)B6Italian for Beginners (Italiensk for begyndere) (2000)B!Itty Bitty Titty Committee (2007)BQIvan Vasilievich: Back to the Future (Ivan Vasilievich menyaet professiyu) (1973)BBIvan's Childhood (a.k.a. My Name is Ivan) (Ivanovo detstvo) (1962)BJ. Edgar (2011)BJCVD (2008)B
JFK (1991)BJabberwocky (1977)BJack (1996)BJack Frost (1998)BJack Reacher (2012)B"Jack Reacher: Never Go Back (2016)B Jack Ryan: Shadow Recruit (2014)BJack Whitehall: At Large (2017)BJack and Jill (2011)BJack and Sarah (1995)BJack the Bear (1993)BJack the Giant Slayer (2013)BJack-Jack Attack (2005)BJackal, The (1997)BJackass 2.5 (2007)BJackass 3.5 (2011)BJackass 3D (2010)BJackass Number Two (2006)B$Jackass Presents: Bad Grandpa (2013)BJackass: The Movie (2002)BJacket, The (2005)BJackie Brown (1997)BJacob's Ladder (1990)BJade (1995)BJagged Edge (1985)BJakob the Liar (1999)BJalla! Jalla! (2000)BJamaica Inn (1939)B James and the Giant Peach (1996)BJane Austen's Mafia! (1998)BJane Eyre (1944)BJane Eyre (1970)BJane Eyre (1996)BJane Eyre (2011)BJanie Jones (2010)BJanuary Man, The (1989)BJapanese Story (2003)BJarhead (2005)BJason Bourne (2016)BJason X (2002)BJason and the Argonauts (1963)BJason's Lyric (1994)BJawbreaker (1999)BJaws (1975)BJaws 2 (1978)BJaws 3-D (1983)BJaws: The Revenge (1987)B%Jay and Silent Bob Strike Back (2001)BJazz Singer, The (1927)BJean de Florette (1986)BJeepers Creepers (2001)BJeepers Creepers 2 (2003)B$Jeff Dunham: All Over the Map (2014)B=Jeff Ross Roasts Criminals: Live at Brazos County Jail (2015)B"Jeff Ross Roasts the Border (2017)BJeff, Who Lives at Home (2012)BJefferson in Paris (1995)BJeffrey (1995)BJennifer 8 (1992)BJennifer's Body (2009)BJeremiah Johnson (1972)BJerk, The (1979)BJerky Boys, The (1995)BJerry Maguire (1996)BJersey Boys (2014)BJersey Girl (2004)BJesus Camp (2006)BJesus Christ Superstar (1973)B"Jesus Christ Vampire Hunter (2001)B.Jesus of Montreal (Jésus de Montréal) (1989)BJesus' Son (1999)B'Jet Li's Fearless (Huo Yuan Jia) (2006)BJetsons: The Movie (1990)BJetée, La (1962)BJewel of the Nile, The (1985)BJezebel (1938)B#Jim & Andy: The Great Beyond (2017)BJim Gaffigan: Cinco (2017)BJim Jefferies: BARE (2014)BJim Jefferies: Freedumb (2016)B-Jim Jefferies: Fully Functional (EPIX) (2012)B$Jim Jefferies: I Swear to God (2009)B&Jim Norton: American Degenerate (2013)BJimi: All Is by My Side (2013)B&Jimmy Carr: Making People Laugh (2010)B Jimmy Carr: Telling Jokes (2009)BJimmy Hollywood (1994)B Jimmy Neutron: Boy Genius (2001)B*Jin Roh: The Wolf Brigade (Jin-Rô) (1998)BJingle All the Way (1996)BJiro Dreams of Sushi (2011)BJobs (2013)BJoe Dirt (2001)B"Joe Dirt 2: Beautiful Loser (2015)BJoe Gould's Secret (2000)BJoe Rogan: Live (2006)BJoe Rogan: Triggered (2016)BJoe Somebody (2001)BJoe Versus the Volcano (1990)BJoe's Apartment (1996)BJohn Adams (2008)BJohn Carter (2012)BJohn Dies at the End (2012)BJohn From (2015)B John Mulaney: New In Town (2012)B%John Mulaney: The Comeback Kid (2015)BJohn Q (2002)BJohn Tucker Must Die (2006)BJohn Wick (2014)BJohn Wick: Chapter Two (2017)BJohnny Be Good (1988)BJohnny Belinda (1948)BJohnny Dangerously (1984)BJohnny Eager (1942)BJohnny English (2003)BJohnny English Reborn (2011)BJohnny Express (2014)BJohnny Handsome (1989)BJohnny Mnemonic (1995)BJohnny Stecchino (1991)B9Joint Security Area (Gongdong gyeongbi guyeok JSA) (2000)BJolson Story, The (1946)B(Jon Stewart Has Left the Building (2015)BJonah Hex (2010)BQJonah Who Will Be 25 in the Year 2000 (Jonas qui aura 25 ans en l'an 2000) (1976)B!Jonah: A VeggieTales Movie (2002)BJoneses, The (2009)B6Jonestown: The Life and Death of Peoples Temple (2006)BJosie and the Pussycats (2001)B'Journey 2: The Mysterious Island (2012)B!Journey of Natty Gann, The (1985)B)Journey to the Center of the Earth (1959)B)Journey to the Center of the Earth (2008)BXJourney to the West: Conquering the Demons (Daai wa sai you chi Chui mo chun kei) (2013)BJourneys with George (2002)B
Joy (2015)BJoy Luck Club, The (1993)BJoy Ride (2001)B%Joyeux Noël (Merry Christmas) (2005)BJoyful Noise (2012)BJu Dou (1990)BJu-on: The Curse (2000)BJu-on: The Grudge (2002)BJubilee (1977)BJudd Apatow: The Return (2017)BJude (1996)BJudge Dredd (1995)BJudge, The (2014)BJudgment Night (1993)BJudgment at Nuremberg (1961)BJuice (1992)B#Jules and Jim (Jules et Jim) (1961)BJulia (1977)BJulia (2014)BJulie & Julia (2009)BJulien Donkey-Boy (1999)B6Juliet of the Spirits (Giulietta degli spiriti) (1965)BJumanji (1995)B%Jumanji: Welcome to the Jungle (2017)BJump In! (2007)BJump Tomorrow (2001)BJumper (2008)BJumpin' Jack Flash (1986)BJunebug (2005)BJungle Book 2, The (2003)BJungle Book, The (1967)BJungle Book, The (1994)BJungle Fever (1991)B-Jungle2Jungle (a.k.a. Jungle 2 Jungle) (1997)BJunior (1994)BJunior and Karlson (1968)BJuno (2007)BJupiter Ascending (2015)BJupiter's Wife (1994)BJurassic Park (1993)BJurassic Park III (2001)BJurassic World (2015)B%Jurassic World: Fallen Kingdom (2018)BJuror, The (1996)BJury Duty (1995)BJust Before I Go (2014)BJust Cause (1995)B&Just Eat It: A Food Waste Story (2014)BJust Friends (2005)BJust Go with It (2011)BJust Jim (2015)BJust Like Heaven (2005)BJust Married (2003)BJust My Luck (2006)BJust One of the Guys (1985)BJust Visiting (2001)BJustice League (2017)B+Justice League: Crisis on Two Earths (2010)BJustice League: Doom (2012) B(Justice League: The New Frontier (2008) B'Justin and the Knights of Valour (2013)BJuwanna Mann (2002)BK-19: The Widowmaker (2002)B
K-9 (1989)BK-PAX (2001)BKagemusha (1980)BKalifornia (1993)B!Kama Sutra: A Tale of Love (1996)B#Kandahar (Safar e Ghandehar) (2001)BKangaroo Jack (2003)BKansas City (1996)BKarate Bullfighter (1975)BKarate Kid, Part II, The (1986)B Karate Kid, Part III, The (1989)BKarate Kid, The (1984)BKarate Kid, The (2010)BKarlson Returns (1970)BKaspar Hauser (1993)BKate & Leopold (2001)BKazaam (1996)BKeanu (2016)B;Keep the River on Your Right: A Modern Cannibal Tale (2000)B"Keeping Up with the Joneses (2016)BKeeping the Faith (2000)BKelly's Heroes (1970)BKen Park (2002)BKenny & Company (1976)B Kentucky Fried Movie, The (1977)B)Kevin Hart: I'm a Grown Little Man (2009)B#Kevin Hart: Laugh at My Pain (2011)B"Kevin Smith: Too Fat For 40 (2010)BKey Largo (1948)B2Keys to the House, The (Chiavi di casa, Le) (2004)BKick-Ass (2010)BKick-Ass 2 (2013)BKickboxer (1989)B!Kickboxer 2: The Road Back (1991)BKickin It Old Skool (2007)BKicking & Screaming (2005)BKicking Off (2016)BKicking and Screaming (1995)B$Kid Stays in the Picture, The (2002)B$Kid in King Arthur's Court, A (1995)BKid's Story (2003)BKid, The (1921)BKid, The (2000)BKidnapping Mr. Heineken (2015)B:Kidnapping, Caucasian Style (Kavkazskaya plennitsa) (1967)BKids (1995)BKids Are All Right, The (2010)B$Kids in the Hall: Brain Candy (1996)BKika (1993)B3Kiki's Delivery Service (Majo no takkyûbin) (1989)B$Kikujiro (Kikujirô no natsu) (1999)BKill Bill: Vol. 1 (2003)BKill Bill: Vol. 2 (2004)BKill Command (2016)BKill List (2011)BKill Me Three Times (2014)BKill the Irishman (2011)BKill the Messenger (2014)BKill! (Kiru) (1968)BKiller Elite (2011)BKiller Joe (2011)B%Killer Klowns from Outer Space (1988)BKiller Movie (2008)BKiller Shrews, The (1959)BKiller's Kiss (1955)B)Killer, The (Die xue shuang xiong) (1989)BKillers (2010)BKillers, The (1946)BKilling Fields, The (1984)BKilling Me Softly (2002)BKilling Them Softly (2012)BKilling Zoe (1994)BKilling, The (1956)BKillshot (2008)BKin-Dza-Dza! (1986)BKind Hearts and Coronets (1949)BKindergarten Cop (1990)BKindergarten Cop 2 (2016)BKindred, The (1986)BKing Arthur (2004)BKing Kong (1933)BKing Kong (1976)BKing Kong (2005)BKing Kong Lives (1986)B5King Kong vs. Godzilla (Kingukongu tai Gojira) (1962)BKing Ralph (1991)BKing Solomon's Mines (1937)BKing Solomon's Mines (1950)BKing Solomon's Mines (1985)BKing and I, The (1956)BKing and I, The (1999)BKing in New York, A (1957)BKing of California (2007)B'King of Comedy (Hei kek ji wong) (1999)BKing of Comedy, The (1983)BKing of Hearts (1966)BKing of Kings (1961)BKing of Kong, The (2007)B%King of Masks, The (Bian Lian) (1996)BKing of New York (1990)BKing's Ransom (2005)BKing's Speech, The (2010)BKingdom of Heaven (2005)BKingdom, The (2007)BKingpin (1996)BKings of Summer, The (2013)B$Kingsglaive: Final Fantasy XV (2016)B"Kingsman: The Golden Circle (2017)B#Kingsman: The Secret Service (2015)BKinky Boots (2005)BKinsey (2004)B:Kirikou and the Sorceress (Kirikou et la sorcière) (1998)BKiss Kiss Bang Bang (2005)BKiss Me Deadly (1955)BKiss Me Goodbye (1982)BKiss Me Kate (1953)BKiss Me, Guido (1997)BKiss Me, Stupid (1964)BKiss me Kismet (2006)BKiss of Death (1995)BKiss of the Dragon (2001)BKiss of the Spider Woman (1985)BKiss the Girls (1997)BKissed (1996)BKissing Jessica Stein (2001)B&Kit Kittredge: An American Girl (2008)B.Kitchen Stories (Salmer fra kjøkkenet) (2003)BKite (2014)BKite Runner, The (2007)B*Kizumonogatari II: Passionate Blood (2016)B%Kizumonogatari III: Cold Blood (2017)B&Kizumonogatari Part 1: Tekketsu (2016)BKlute (1971)B)Knife in the Water (Nóz w wodzie) (1962)BKnight and Day (2010)BKnight's Tale, A (2001)BKnights of Badassdom (2013)BKnock Knock (2015)BKnock Off (1998)BKnockaround Guys (2002)BKnocked Up (2007)B Knockin' on Heaven's Door (1997)BKnot, The (2012)BKnowing (2009)BKolya (Kolja) (1996)BKong: Skull Island (2017)B@Koyaanisqatsi (a.k.a. Koyaanisqatsi: Life Out of Balance) (1983)BKrabat (2008)BKramer vs. Kramer (1979)BKrampus (2015)BKrays, The (1990)BKrippendorf's Tribe (1998)BKrull (1983)BKubo and the Two Strings (2016)BKuffs (1992)BKull the Conqueror (1997)BKundun (1997)BKung Fu Hustle (Gong fu) (2004)BKung Fu Panda (2008)BKung Fu Panda 2 (2011)BKung Fu Panda 3 (2016)B1Kung Fu Panda: Secrets of the Furious Five (2008)B,Kung Fu Panda: Secrets of the Masters (2011)BKung Fury (2015)BKung Pow: Enter the Fist (2002)BKurt & Courtney (1998)B#Kurt Cobain: Montage of Heck (2015)BKwaidan (Kaidan) (1964)BL.A. Confidential (1997)BL.A. Slasher (2015)BL.A. Story (1991)BL.I.E. (2001)B
LBJ (2017)B/LEGO Batman: The Movie - DC Heroes Unite (2013)B,LEGO DC Super Hero Girls: Brain Drain (2017)B
LOL (2012)BLa Belle Verte (1996)BLa Cérémonie (1995)BLa La Land (2016)BLa cravate (1957)BLa vérité si je mens ! (1997)BLabyrinth (1986)BLadder 49 (2004)BLadies Man, The (2000)BLady Bird (2017)BLady Eve, The (1941)BLady Jane (1986)BLady Vanishes, The (1938)BKLady Vengeance (Sympathy for Lady Vengeance) (Chinjeolhan geumjassi) (2005)B6Lady and the Duke, The (Anglaise et le duc, L') (2001)BLady and the Tramp (1955)BLady from Shanghai, The (1947)B>Lady in White (a.k.a. The Mystery of the Lady in White) (1988)BLady in the Water (2006)BLadybird Ladybird (1994)BLadybugs (1992)BLadyhawke (1985)BLadykillers, The (1955)BLadykillers, The (2004)B(Lagaan: Once Upon a Time in India (2001)BLaggies (2014)BLake House, The (2006)BLake Placid (1999)BLakeview Terrace (2008)BLamerica (1994)BLammbock (2001)B9Land Before Time III: The Time of the Great Giving (1995)BLand Before Time, The (1988)B!Land That Time Forgot, The (1975)B+Land and Freedom (Tierra y libertad) (1995)B7Land of Plenty (Angst and Alienation in America) (2004)BLand of the Dead (2005)BLand of the Lost (2009)BLangoliers, The (1995)BLantana (2001)B:Laputa: Castle in the Sky (Tenkû no shiro Rapyuta) (1986)B1Lara Croft Tomb Raider: The Cradle of Life (2003)BLara Croft: Tomb Raider (2001)BLarger Than Life (1996)BLarry Crowne (2011)B(Larry David: Curb Your Enthusiasm (1999)BLars and the Real Girl (2007)BLassie (1994)BLast Action Hero (1993)BLast Airbender, The (2010)BLast Boy Scout, The (1991)BLast Castle, The (2001)BLast Dance (1996)BLast Days (2005)BLast Days of Disco, The (1998)BLast Days, The (1998)BLast Detail, The (1973)BLast Dragon, The (1985)BLast Emperor, The (1987)BLast Exit to Brooklyn (1989)BLast Exorcism, The (2010)BLast Holiday (1950)BLast Holiday (2006)B"Last House on the Left, The (1972)B)Last Hurrah for Chivalry (Hao xia) (1979)B!Last King of Scotland, The (2006)BLast Kiss, The (2006)B(Last Kiss, The (Ultimo bacio, L') (2001)B?Last Klezmer: Leopold Kozlowski, His Life and Music, The (1994)BLast Knights (2015)BLast Legion, The (2007)B<Last Life in the Universe (Ruang rak noi nid mahasan) (2003)BLast Man Standing (1996)B;Last Man on Earth, The (Ultimo uomo della Terra, L') (1964)B+Last Metro, The (Dernier métro, Le) (1980)BLast Mimzy, The (2007)BLast Night (1998)BLast Orders (2001)BLast Picture Show, The (1971)BLast Samurai, The (2003)BLast Seduction, The (1994)BLast Shift (2014)BLast Song, The (2010)BLast Stand, The (2013)BLast Starfighter, The (1984)BLast Supper, The (1995)B2Last Tango in Paris (Ultimo tango a Parigi) (1972)B%Last Temptation of Christ, The (1988)BLast Train Home (2009)BLast Unicorn, The (1982)BLast Vegas (2013)BLast Waltz, The (1978)BLast Wave, The (1977)B4Last Wedding, The (Kivenpyörittäjän kylä) (1995)BLast Winter, The (2006)B#Last Year's Snow Was Falling (1983)BLast of the Dogmen (1995)B Last of the Mohicans, The (1992)B&Late Marriage (Hatuna Meuheret) (2001)BLate Night Shopping (2001)BNLate Night with Conan O'Brien: The Best of Triumph the Insult Comic Dog (2004)BLate Shift, The (1996)BLatter Days (2003)BLaura (1944)BLaurel Canyon (2002)BLavender Hill Mob, The (1951)BLaw Abiding Citizen (2009)B(Law of Desire (Ley del deseo, La) (1987)BLawless (2012)B)Lawnmower Man 2: Beyond Cyberspace (1996)BLawnmower Man, The (1992)BLawrence of Arabia (1962)BLaws of Attraction (2004)BLayer Cake (2004)BLe Maître d'école (1981)B:League of Extraordinary Gentlemen, The (a.k.a. LXG) (2003)B&League of Ordinary Gentlemen, A (2004)BLeague of Their Own, A (1992)BLean on Me (1989)BLeap Year (2010)BLeap of Faith (1992)BLeatherheads (2008)BLeave It to Beaver (1997)BLeaves of Grass (2009)BLeaving Las Vegas (1995)BLedge, The (2011)BLee Daniels' The Butler (2013)BLeft Behind: The Movie (2000)BLegal Eagles (1986)BLegally Blonde (2001)B,Legally Blonde 2: Red, White & Blonde (2003)BLegend (1985)BLegend (2015)BLegend No. 17 (2013)BnLegend of 1900, The (a.k.a. The Legend of the Pianist on the Ocean) (Leggenda del pianista sull'oceano) (1998)B"Legend of Bagger Vance, The (2000)B2Legend of Drunken Master, The (Jui kuen II) (1994)B Legend of Hell House, The (1973)B8Legend of Rita, The (Stille nach dem Schuß, Die) (1999)B#Legend of Sleepy Hollow, The (1949)B#Legend of Sleepy Hollow, The (1980)BLegend of Zorro, The (2005)B4Legend of the Guardians: The Owls of Ga'Hoole (2010)B?Legend, The (Legend of Fong Sai-Yuk, The) (Fong Sai Yuk) (1993)BLegends of the Fall (1994)BLegion (2010)BLegionnaire (1998)BLemonade (2016)B6Lemony Snicket's A Series of Unfortunate Events (2004)B#Leningrad Cowboys Go America (1989)BLenny (1974)BLeonard Part 6 (1987)B$Leopard, The (Gattopardo, Il) (1963)BLeprechaun (1993)BLeprechaun 2 (1994)BLeprechaun 3 (1995)BLeprechaun 4: In Space (1997)BLess Than Zero (1987)BLesson Faust (1994)BLet It Be Me (1995)BLet It Ride (1989)BLet It Snow (1999)BLet Me In (2010)BLet the Bullets Fly (2010)B6Let the Right One In (Låt den rätte komma in) (2008)BLet's Be Cops (2014)BLet's Get Harry (1986)BLet's Go to Prison (2006)BLethal Weapon (1987)BLethal Weapon 2 (1989)BLethal Weapon 3 (1992)BLethal Weapon 4 (1998)BLetter to Three Wives, A (1949)BLetter, The (1940)BLetters from Iwo Jima (2006)BLetters to Juliet (2010)BLeviathan (2014)BLevity (2003)BLiability, The (2012)BLiam (2000)BLiar Liar (1997)BQLiar's Autobiography: The Untrue Story of Monty Python's Graham Chapman, A (2012)BLibeled Lady (1936)BLiberal Arts (2012)BLibertine, The (2004)BLiberty Heights (1999)B5Librarian, The: The Curse of the Judas Chalice (2008)B*Librarian: Quest for the Spear, The (2004)B5Librarian: Return to King Solomon's Mines, The (2006)BLibre et assoupi (2014)BLicence to Kill (1989)BLicense to Drive (1988)BLicense to Wed (2007)BLife (1999)BLife After Beth (2014)B*Life Aquatic with Steve Zissou, The (2004)BLife Eternal (2015)B+Life Is Beautiful (La Vita è bella) (1997)BHLife Is a Long Quiet River (La vie est un long fleuve tranquille) (1988)BLife Less Ordinary, A (1997)BLife Partners (2014)BLife Stinks (1991)B+Life and Death of Peter Sellers, The (2004)BLife and Debt (2001)BLife as We Know It (2010)BLife as a House (2001)BLife of David Gale, The (2003)BLife of Emile Zola, The (1937)BLife of Pi (2012)B Life or Something Like It (2002)BLife with Father (1947)BLife with Mikey (1993)BLife-Size (2000)BLifeboat (1944)BLifeforce (1985)BLifeguard, The (2013)BLifted (2006)BLight Years (Gandahar) (1988)BLightning Jack (1994)BLightning in a Bottle (2004)BLights Out (2016)B0Lights in the Dusk (Laitakaupungin valot) (2006)BLike Crazy (2011)BLike Father, Like Son (1987)BLike Mike (2002)B-Like Stars on Earth (Taare Zameen Par) (2007)B:Like Water for Chocolate (Como agua para chocolate) (1992)BLilies of the Field (1963)BLilo & Stitch (2002)BLilting (2014)B"Lilya 4-Ever (Lilja 4-ever) (2002)BLimbo (1999)BLimelight (1952)BLimey, The (1999)BLimitless (2011)BLimits of Control, The (2009)BLincoln (2012)BLincoln Lawyer, The (2011)B.Line King: The Al Hirschfeld Story, The (1996)BLion (2016)BLion King 1½, The (2004)B'Lion King II: Simba's Pride, The (1998)BLion King, The (1994)BLion in Winter, The (1968)BLionheart (1990)BLions For Lambs (2007)BLiquid Truth (2017)BLittle Ashes (2008)BLittle Big League (1994)BLittle Big Man (1970)B.Little Big Soldier (Da bing xiao jiang) (2010)BLittle Black Book (2004)BLittle Boxes (2017)BLittle Buddha (1993)BLittle Caesar (1931)BLittle Children (2006)BLittle Darlings (1980)B!Little Dieter Needs to Fly (1997)BLittle Drummer Boy, The (1968)BLittle Fockers (2010)BLittle Foxes, The (1941)BLittle Giants (1994)B/Little Girl Who Lives Down the Lane, The (1976)BLittle Lord Fauntleroy (1936)BLittle Man (2006)BLittle Man Tate (1991)BLittle Mermaid, The (1989)BLittle Miss Marker (1980)BLittle Miss Sunshine (2006)BLittle Monsters (1989)BLittle Murders (1971)B-Little Nemo: Adventures in Slumberland (1992)BLittle Nicky (2000)BLittle Nikita (1988)BLittle Princess, A (1995)BLittle Princess, The (1939)BLittle Rascals, The (1994)BLittle Shop of Horrors (1986)B"Little Shop of Horrors, The (1960)BLittle Vampire, The (2000)BLittle Voice (1998)BLittle Women (1933)BLittle Women (1949)BLittle Women (1994)B"Live Flesh (Carne trémula) (1997)BLive Free or Die Hard (2007)BLive Nude Girls (1995)BLive Wire (1992)BLive and Let Die (1973)B3Lives of Others, The (Das leben der Anderen) (2006)BLiving Daylights, The (1987)BLiving Out Loud (1998)BLiving in Oblivion (1995)B Lizzie McGuire Movie, The (2003)B;Loaded Weapon 1 (National Lampoon's Loaded Weapon 1) (1993)BLocal Hero (1983)B(Lock, Stock & Two Smoking Barrels (1998)BLocke (2013)BLockout (2012)B-Lodger: A Story of the London Fog, The (1927)BLogan (2017)BLogan Lucky (2017)BLogan's Run (1976)BLola Montès (1955)BLola Versus (2012)BLolita (1962)BLolita (1997)BLondon (2005)BLondon Boulevard (2010)BLondon Has Fallen (2016)BLondon Town (2016)BLone Ranger, The (2013)BLone Star (1996)BLone Survivor (2013)BLonely Are the Brave (1962)BLonely Guy, The (1984)BLonesome Dove (1989)B$Long Day's Journey Into Night (1962)BLong Good Friday, The (1980)BLong Goodbye, The (1973)BLong Kiss Goodnight, The (1996)BLong Live Ghosts! (1977)B$Long Night's Journey Into Day (2000)BLong Walk Home, The (1990)BLong, Hot Summer, The (1958)BLongest Day, The (1962)BLongest Yard, The (1974)BLongest Yard, The (2005)BLook Who's Talking (1989)BLook Who's Talking Now (1993)BLook Who's Talking Too (1990)BLooker (1981)B-Looking for Comedy in the Muslim World (2005)BLooking for Richard (1996)BLookout, The (2007)B#Looney Tunes: Back in Action (2003)BLooper (2012)BLoose Cannons (1990)BLord of Illusions (1995)BLord of War (2005)BLord of the Flies (1963)BLord of the Flies (1990)BLord of the Rings, The (1978)B9Lord of the Rings: The Fellowship of the Ring, The (2001)B5Lord of the Rings: The Return of the King, The (2003)B-Lord of the Rings: The Two Towers, The (2002)BLords of Dogtown (2005)BLords of Flatbush, The (1974)BLords of Salem, The (2012)BLorenzo's Oil (1992)BLos Angeles Plays Itself (2003)BLoser (1991)BLoser (2000)BLosers, The (2010)BLosin' It (1983)BLosing Isaiah (1995)B$Loss of Sexual Innocence, The (1999)BLost & Found (1999)BLost Boys, The (1987)BLost Highway (1997)BLost Horizon (1937)B$Lost Skeleton of Cadavra, The (2002)BLost Weekend, The (1945)B%Lost World: Jurassic Park, The (1997)BLost and Delirious (2001)BLost in America (1985)BLost in Austen (2008)BLost in La Mancha (2002)BLost in Space (1998)BLost in Translation (2003)BLost in the Sun (2015)BLot Like Love, A (2005)BLouis C.K.: Chewed Up (2008)BLouis C.K.: Hilarious (2010)B+Louis C.K.: Live at The Comedy Store (2015)B-Louis C.K.: Live at the Beacon Theater (2011)BLouis C.K.: Oh My God (2013)BLouis C.K.: Shameless (2007)B$Louis Theroux: Law & Disorder (2008)BLove & Human Remains (1993)BLove & Mercy (2014)BLove (2015)BLove Actually (2003)BLove Affair (1939)BLove Affair (1994)BLove Bug, The (1969)BLove Crazy (1941)B&Love Exposure (Ai No Mukidashi) (2008)BLove Guru, The (2008)B&Love Is a Many-Splendored Thing (1955)BLove Is the Devil (1998)BLove Jones (1997)B6Love Lasts Three Years (L'amour dure trois ans) (2011)BLove Letter, The (1999)B'Love Live! The School Idol Movie (2015)BLove Liza (2002)B+Love Me If You Dare (Jeux d'enfants) (2003)BLove Me Tender (1956)BLove Potion #9 (1992)BLove Serenade (1996)B"Love Song for Bobby Long, A (2004)BLove Story (1970)BLove and Basketball (2000)BLove and Death (1975)B$Love and Death on Long Island (1997)B"Love and Other Catastrophes (1996)BLove and Other Disasters (2006)BLove and Other Drugs (2010)BLove and Pigeons (1985)BLove and a .45 (1994)BLove at First Bite (1979)BLove in the Afternoon (1957)BLove's Labour's Lost (2000)BLove, Rosie (2014)BLove, Simon (2018)BLoved Ones, The (2009)BLovely & Amazing (2001)BLovely Bones, The (2009)BLover Come Back (1961)BLover, The (Amant, L') (1992)BLoverboy (1989)B$Lovers & Leavers (Kuutamolla) (2002)BHLovers of the Arctic Circle, The (Los Amantes del Círculo Polar) (1998)BLovesick (2014)BLoving Vincent (2017)BLow Down Dirty Shame, A (1994)BLucas (1986)BLuck by Chance (2009)BLucky Break (2001)BLucky Number Slevin (2006)BLucky One, The (2012)BLucky You (2007)BLucy (2014)BLumberjack Man (2015)BLumumba (2000)BLuna Papa (1999)BOLupin III: The Castle Of Cagliostro (Rupan sansei: Kariosutoro no shiro) (1979)BLust for Life (1956)BLust, Caution (Se, jie) (2007)BLuther (2003)BLuxo Jr. (1986)BLuzhin Defence, The (2000)B$Lynne Koplitz: Hormonal Beast (2017)B@Léon: The Professional (a.k.a. The Professional) (Léon) (1994)BM (1931)BM*A*S*H (a.k.a. MASH) (1970)BM. Butterfly (1993)BSM. Hulot’s Holiday (Mr. Hulot's Holiday) (Vacances de Monsieur Hulot, Les) (1953)BMacArthur (1977)BMacGruber (2010)B*MacGyver: Lost Treasure of Atlantis (1994)B"MacGyver: Trail to Doomsday (1994)BMacbeth (2015)B/Macbeth (a.k.a. Tragedy of Macbeth, The) (1971)BMachete (2010)B Machete Kills (Machete 2) (2013)B/Machine Girl, The (Kataude mashin gâru) (2008)BMack, The (1973)BMackenna's Gold (1969)BMad City (1997)BMad Dog and Glory (1993)BMad Hot Ballroom (2005)BMad Love (1995)BMad Max (1979)B!Mad Max Beyond Thunderdome (1985)BMad Max: Fury Road (2015)BMadagascar (2005)B)Madagascar 3: Europe's Most Wanted (2012)B"Madagascar: Escape 2 Africa (2008)BMadame Bovary (1991)BMadame Sousatzka (1988)BMade (2001)BMade in America (1993)BMade in Dagenham (2010)BMade in Heaven (1987)BMade of Honor (2008)BMadeline (1998)BMadhouse (1990)BMadly in Love (1981)B"Madness of King George, The (1994)BMadonna: Truth or Dare (1991)BMaelström (2000)BMagdalene Sisters, The (2002)BMaggie (2015)BMaggie's Plan (2015)BMagic Mike (2012)BMagic Mike XXL (2015)BMagic in the Moonlight (2014)B!Magnificent Ambersons, The (1942)BMagnificent Seven, The (1960)BMagnolia (1999)BMagnum Force (1973)BMaid in Manhattan (2002)BMaid to Order (1987)BMaiden Heist, The (2009)B/Maidens in Uniform (Mädchen in Uniform) (1931)BMajestic, The (2001)BMajor Dundee (1965)BMajor League (1989)BMajor League II (1994)B'Major League: Back to the Minors (1998)BMajor Payne (1995)BMajor and the Minor, The (1942)BMake Way for Tomorrow (1937)BMaking Mr. Right (1987)BMaking a Murderer (2015)BMaking the Grade (1984)BMalcolm X (1992)BMale Hunt (1964)BMaleficent (2014)BMalibu's Most Wanted (2003)BMalice (1993)BMallrats (1995)BMaltese Falcon, The (1941)B4Maltese Falcon, The (a.k.a. Dangerous Female) (1931)BMalèna (2000)BMambo Italiano (2003)BMambo Kings, The (1992)BMamma Mia! (2008)B#Mamma Mia: Here We Go Again! (2018)BMan Apart, A (2003)B7Man Bites Dog (C'est arrivé près de chez vous) (1992)B\Man Escaped, A (Un  condamné à mort s'est échappé ou Le vent souffle où il veut) (1956)BMan Trouble (1992)BMan Up (2015)B'Man Vanishes, A (Ningen Johatsu) (1967)B"Man Who Came to Dinner, The (1942)BMan Who Cried, The (2000)B!Man Who Fell to Earth, The (1976)B#Man Who Knew Too Little, The (1997)B!Man Who Knew Too Much, The (1934)B!Man Who Knew Too Much, The (1956)BEMan Who Planted Trees, The (Homme qui plantait des arbres, L') (1987)B(Man Who Shot Liberty Valance, The (1962)B Man Who Wasn't There, The (2001)B!Man Who Would Be King, The (1975)BMan Without a Face, The (1993)B:Man Without a Past, The (Mies vailla menneisyyttä) (2002)B1Man and a Woman, A (Un homme et une femme) (1966)BMan for All Seasons, A (1966)BMan from Earth, The (2007)B#Man from Elysian Fields, The (2001)B Man from Snowy River, The (1982)B Man in the Iron Mask, The (1998)B!Man in the White Suit, The (1951)BMan of Aran (1934)BMan of No Importance, A (1994)BMan of Steel (2013)BMan of Tai Chi (2013)BMan of the House (1995)BMan of the House (2005)BMan of the Year (1995)BMan of the Year (2006)BMan on Fire (2004)BMan on High Heels (2014)BMan on Wire (2008)BMan on a Ledge (2012)B Man on the Flying Trapeze (1935)BMan on the Moon (1999)B,Man on the Train (Homme du train, L') (2002)BMan with Two Brains, The (1983)B#Man with the Golden Arm, The (1955)B#Man with the Golden Gun, The (1974)B#Man with the Iron Fists, The (2012)BAMan with the Movie Camera, The (Chelovek s kino-apparatom) (1929)BMan's Best Friend (1993)BMan, The (2005)BManchester by the Sea (2016)B Manchurian Candidate, The (1962)B Manchurian Candidate, The (2004)B$Mandela: Long Walk to Freedom (2013)BManderlay (2005)BManhattan (1979)BManhattan Murder Mystery (1993)BManhattan Project, The (1986)BManhunter (1986)BManiac (2012)BManiac Cop (1988)BManiac Cop 2 (1990)BManic (2001)BMannequin (1987)BMannequin 2: On the Move (1991)B.Manon of the Spring (Manon des sources) (1986)BMansfield Park (1999)BManufactured Landscapes (2006)B8Manufacturing Consent: Noam Chomsky and the Media (1992)B.Many Adventures of Winnie the Pooh, The (1977)BMaps to the Stars (2014)BMarat/Sade (1966)BMarathon Man (1976)BMarauders (2016)B7March of the Penguins (Marche de l'empereur, La) (2005)BMargaret (2011)BMargin Call (2011)BMargot at the Wedding (2007)BMaria Bamford: Old BabyB2Maria Bamford: The Special Special Special! (2012)B8Maria Full of Grace (Maria, Llena eres de gracia) (2004)BMariachi, El (1992)BMarie Antoinette (2006)BMarine, The (2006)B0Marius and Jeanette (Marius et Jeannette) (1997)BMark of Zorro, The (1940)BMarked for Death (1990)BMarley & Me (2008)BMarley (2012)BMarnie (1964)B.Marooned in Iraq (Gomgashtei dar Aragh) (2002)B>Marriage of Maria Braun, The (Ehe der Maria Braun, Die) (1979)BMarried to the Mob (1988)BMars Attacks! (1996)BMars Needs Moms (2011)BMartha Marcy May Marlene (2011)BMartin (1977)B&Martin Lawrence Live: Runteldat (2002)BMarty (1955)B$Marvel One-Shot: Agent Carter (2013)BMarvel One-Shot: Item 47 (2012)BMarvin's Room (1996)BMarwencol (2010)BMary Poppins (1964)BMary Reilly (1996)B1Mary Shelley's Frankenstein (Frankenstein) (1994)BMary and Max (2009)BMary of Scotland (1936)BMask (1985)BMask of Zorro, The (1998)BMask, The (1994)BMasked & Anonymous (2003)BMasked Avengers (1981)B#Masque of the Red Death, The (1964)BMasquerade (1988)BMassu Engira Maasilamani (2015)B6Master and Commander: The Far Side of the World (2003)BMaster of Disguise, The (2002)BHMaster of the Flying Guillotine (Du bi quan wang da po xue di zi) (1975)BMaster, The (2012)BMasterminds (1997)BMasterminds (2016)BMasters of the Universe (1987)BMatador, The (2005)B8Match Factory Girl, The (Tulitikkutehtaan tyttö) (1990)BMatch Point (2005)BMatchMaker, The (1997)BMatchstick Men (2003)BMaterial Girls (2006)BMatewan (1987)BMatilda (1996)BMatinee (1993)BMatrix Reloaded, The (2003)BMatrix Revolutions, The (2003)BMatrix, The (1999)BMaurice (1987)BMaverick (1994)B
Max (2002)BMax Dugan Returns (1983)BMax Keeble's Big Move (2001)BMax Manus (2008)BMax Payne (2008)BJMaxed Out: Hard Times, Easy Credit and the Era of Predatory Lenders (2006)BMaximum Overdrive (1986)BMaximum Ride (2016)BMaximum Risk (1996)B
May (2002)B&Maya Lin: A Strong Clear Vision (1994)BMaybe Baby (2000)BMayhem (2017)B Mayor of the Sunset Strip (2003)BMaz Jobrani: Immigrant (2017)BMaze Runner, The (2014)B!Maze Runner: Scorch Trials (2015)B"Maze Runner: The Death Cure (2018)BMcCabe & Mrs. Miller (1971)BMcFarland, USA (2015)BMcHale's Navy (1997)BMe Him Her (2015)BMe Myself I (2000)BMe Without You (2001)B%Me and Earl and the Dying Girl (2015)B&Me and You and Everyone We Know (2005)BMe and you (io e te) (2012)BMe, Myself & Irene (2000)BMean Creek (2004)BMean Girls (2004)BMean Machine (2001)BMean Streets (1973)BMeantime (1984)BMeatballs (1979)BMeatballs 4 (1992)BMeatballs III (1987)BMeatballs Part II (1984)BMechanic, The (2011)BMedallion, The (2003)BMedicine Man (1992)BMediterraneo (1991)BMeet Dave (2008)BMeet Joe Black (1998)BMeet John Doe (1941)BMeet Me in St. Louis (1944)BMeet Wally Sparks (1997)BMeet the Applegates (1991)BMeet the Feebles (1989)BMeet the Fockers (2004)BMeet the Parents (2000)BMeet the Robinsons (2007)BMeet the Spartans (2008)B!Mega Shark vs. Crocosaurus (2010)BMegamind (2010)BMelancholia (2011)BMelinda and Melinda (2004)BMelvin and Howard (1980)BMemento (2000)BMemoirs of a Geisha (2005)B"Memoirs of an Invisible Man (1992)BMemories (Memorîzu) (1995)BMemories of Me (1988)B*Memories of Murder (Salinui chueok) (2003)BMemphis Belle (1990)BMen & Chicken (2015)B"Men Who Stare at Goats, The (2009)BMen at Work (1990)B Men in Black (a.k.a. MIB) (1997)B3Men in Black II (a.k.a. MIIB) (a.k.a. MIB 2) (2002)B-Men in Black III (M.III.B.) (M.I.B.³) (2012)BMen of Honor (2000)BMen with Brooms (2002)BMen, Women & Children (2014)BMenace II Society (1993)BMental (2012)BMephisto (1981)BMerantau (2009)BMerchant of Venice, The (2004)BMerci Patron ! (2016)BMercury Plains (2016)BMercury Rising (1998)BMerlin (1998)BMermaids (1990)BMerry Madagascar (2009)BMeshes of the Afternoon (1943)B4Mesrine: Killer Instinct (L'instinct de mort) (2008)B6Mesrine: Public Enemy #1 (L'ennemi public n°1) (2008)BMessage in a Bottle (1999)BMessenger, The (2009)B/Messenger: The Story of Joan of Arc, The (1999)BMessengers, The (2007)B$Metal: A Headbanger's Journey (2005)B&Metallica: Some Kind of Monster (2004)BMeteor (1979)BMeteor Man, The (1993)BMetro (1997)BMetroland (1997)BMetropia (2009)BMetropolis (1927)BMetropolis (2001)BMetropolitan (1990)BMexican, The (2001)BMezzo Forte (1998)BMiami Blues (1990)BMiami Rhapsody (1995)BMiami Vice (2006)BMichael (1996)BMichael Clayton (2007)BMichael Collins (1996)B!Michael Jackson's Thriller (1983)B Michael Jordan to the Max (2000)BMickey Blue Eyes (1999)B%Mickey's Once Upon a Christmas (1999)B)Mickey's The Prince and the Pauper (1990)B(Micmacs (Micmacs à tire-larigot) (2009)B6Microcosmos (Microcosmos: Le peuple de l'herbe) (1996)BMicrowave Massacre (1983)BMiddle Men (2009)BMidnight Chronicles (2009)BMidnight Clear, A (1992)BMidnight Cowboy (1969)BMidnight Express (1978)BMidnight Meat Train, The (2008)BMidnight Run (1988)BMidnight Special (2015)BMidnight in Paris (2011)B.Midnight in the Garden of Good and Evil (1997)B!Midsummer Night's Dream, A (1935)B&Midsummer Night's Sex Comedy, A (1982)BMidway (1976)BMighty Aphrodite (1995)BMighty Ducks, The (1992)BMighty Heart, A (2007)BMighty Joe Young (1949)BMighty Joe Young (1998)B.Mighty Morphin Power Rangers: The Movie (1995)BMighty Wind, A (2003)BMighty, The (1998)B%Mike & Dave Need Wedding Dates (2016)B$Mike Bassett: England Manager (2001)BMike's New Car (2002)BMilagro Beanfield War (1988)BMildred Pierce (1945)BMildred Pierce (2011)BMilk (2008)BMilk Money (1994)BMilk and Honey (2003)BMillennium (1989)B(Millennium Actress (Sennen joyû) (2001)BMiller's Crossing (1990)BMillion Dollar Arm (2014)BMillion Dollar Baby (2004)B Million Dollar Hotel, The (2001)BMillions (2004)BMimic (1997)BMimino (1977)BMina Tannenbaum (1994)BMind Game (2004)BMindhunters (2004)BMini's First Time (2006)BMinions (2015)BMinnie and Moskowitz (1971)BMinority Report (2002)BMinus Man, The (1999)BMiracle (2004)BMiracle Mile (1989)BMiracle Worker, The (1962)B7Miracle of Marcelino, The (Marcelino pan y vino) (1955)B%Miracle of Morgan's Creek, The (1944)BMiracle on 34th Street (1947)BMiracle on 34th Street (1994)B*Miracles - Mr. Canton and Lady Rose (1989)B Mirror Has Two Faces, The (1996)BMirror Mirror (2012)BMirror, The (Zerkalo) (1975)BMirrorMask (2005)BMirrors (2008)BMischief (1985)BMisery (1990)BMisfits, The (1961)B4Misfortunates, The (De helaasheid der dingen) (2009)BMiss Congeniality (2000)B.Miss Congeniality 2: Armed and Fabulous (2005)BMiss March (2009)BMiss Meadows (2014)BMiss Nobody (2010)B2Miss Peregrine's Home for Peculiar Children (2016)BMiss Potter (2006)BMiss Representation (2011)BMiss Sloane (2016)BMissing (1982)BMissing in Action (1984)B)Missing in Action 2: The Beginning (1985)BMissing, The (2003)BMission to Mars (2000)BMission, The (1986)BMission: Impossible (1996)B$Mission: Impossible - Fallout (2018)B+Mission: Impossible - Ghost Protocol (2011)B)Mission: Impossible - Rogue Nation (2015)BMission: Impossible II (2000)BMission: Impossible III (2006)BMississippi Burning (1988)BMississippi Masala (1991)BMist, The (2007)BMister Roberts (1955)BMistress America (2015)BMisérables, Les (1995)BMisérables, Les (1998)BMisérables, Les (2000)BMisérables, Les (2012)BMitchell (1975)BMixed Nuts (1994)BMo' Better Blues (1990)BMo' Money (1992)BMoana (2016)BMobsters (1991)BMoby Dick (1956)BMod Squad, The (1999)BModern Problems (1981)BModern Times (1936)BMogambo (1953)BMojave (2015)BMoll Flanders (1996)BMolly's Game (2017)B!Mom and Dad Save the World (1992)BMom's Night Out (2014)BMommie Dearest (1981)BMommy (2014)BMon Oncle (My Uncle) (1958)BMon oncle d'Amérique (1980)BMona Lisa (1986)BMona Lisa Smile (2003)BMonday (2000)B-Mondays in the Sun (Lunes al sol, Los) (2002)BMondo Cane (1962)B7Money Money Money (L'aventure, c'est l'aventure) (1972)BMoney Monster (2016)BMoney Pit, The (1986)BMoney Talks (1997)BMoney Train (1995)BMoneyball (2011)BMongol (2007)BMonkey Business (1952)BMonkey Shines (1988)BMonkey Trouble (1994)BMonkeybone (2001)BAMonsieur Ibrahim (Monsieur Ibrahim et les fleurs du Coran) (2003)BMonsieur Lazhar (2011)BMonsieur Verdoux (1947)BMonsoon Wedding (2001)BMonster (2003)BMonster House (2006)BMonster Squad, The (1987)BMonster in a Box (1992)BMonster's Ball (2001)B Monster, The (Mostro, Il) (1994)BMonster-in-Law (2005)BMonsters (2010)BMonsters University (2013)BMonsters vs. Aliens (2009)BMonsters, Inc. (2001)BMonte Carlo (2011)BMonterey Pop (1968)B.Monty Python Live at the Hollywood Bowl (1982)B&Monty Python and the Holy Grail (1975)B@Monty Python's And Now for Something Completely Different (1971)B#Monty Python's Life of Brian (1979)B)Monty Python's The Meaning of Life (1983)BMonument Ave. (1998)BMonuments Men, The (2014)B'Mood Indigo (L'écume des jours) (2013)BMoon (2009)BMoon Over Parador (1988)B	MoonlightBMoonlight Mile (2002)BMoonraker (1979)BMoonrise Kingdom (2012)BMoonstruck (1987)BMoonwalker (1988)BMoonwalkers (2015)BMore (1998)BMore American Graffiti (1979)BMorning After, The (1986)BMorning Glory (2010)BMorons From Outer Space (1985)BXMortadelo & Filemon: The Big Adventure (La gran aventura de Mortadelo y Filemón) (2003)BMortal Kombat (1995)B"Mortal Kombat: Annihilation (1997)B(Mortal Kombat: The Journey Begins (1995)BMortal Thoughts (1991)BMortdecai (2015)BMortuary (1983)BMorvern Callar (2002)B@Moscow Does Not Believe in Tears (Moskva slezam ne verit) (1979)BMoscow on the Hudson (1984)BMosquito Coast, The (1986)B(Most Hated Family in America, The (2007)B#Mostly Martha (Bella Martha) (2001)BMotel Hell (1980)BMother (1996)BMother (Madeo) (2009)BMother Night (1996)BMother! (2017)BMotherhood (2009)BMothman Prophecies, The (2002)BMothra (Mosura) (1961)B7Motorcycle Diaries, The (Diarios de motocicleta) (2004)BMouchette (1967)BMoulin Rouge (2001)BMountains of the Moon (1990)BMouse Hunt (1997)BMouse That Roared, The (1959)BMoustache, La (2005)BMovie 43 (2013)BMozart and the Whale (2005)BMr Hublot (2013)BMr. & Mrs. Smith (1941)BMr. & Mrs. Smith (2005)BMr. 3000 (2004)BMr. Baseball (1992)BMr. Bean's Holiday (2007)B+Mr. Blandings Builds His Dream House (1948)BMr. Brooks (2007)B<Mr. Death: The Rise and Fall of Fred A. Leuchter, Jr. (1999)BMr. Deeds (2002)BMr. Deeds Goes to Town (1936)BMr. Destiny (1990)BMr. Holland's Opus (1995)BMr. Holmes (2015)BMr. Jealousy (1997)BMr. Magoo (1997)BMr. Mom (1983)BMr. Nanny (1993)B$Mr. Nice Guy (Yat goh ho yan) (1997)BMr. Nobody (2009)BMr. Peabody & Sherman (2014)BMr. Popper's Penguins (2011)BMr. Right (2016)BMr. Saturday Night (1992)BMr. Skeffington (1944)B#Mr. Smith Goes to Washington (1939)BMr. Wonderful (1993)BMr. Woodcock (2007)BMr. Wrong (1996)B2Mrs. Brown (a.k.a. Her Majesty, Mrs. Brown) (1997)BMrs. Dalloway (1997)BMrs. Doubtfire (1993)BMrs. Henderson Presents (2005)BMrs. Miniver (1942)B)Mrs. Parker and the Vicious Circle (1994)BMrs. Winterbourne (1996)BMuch Ado About Nothing (1993)BMuch Ado About Nothing (2012)B
Mud (2012)BMudbound (2017)BMudge Boy, The (2003)BMulan (1998)BMulan II (2004)BMulholland Dr. (1999)BMulholland Drive (2001)BMulholland Falls (1996)BMultiplicity (1996)BMumford (1999)BMummy Returns, The (2001)BMummy, The (1932)BMummy, The (1959)BMummy, The (1999)B-Mummy: Tomb of the Dragon Emperor, The (2008)BMunchies (1987)BMunich (2005)BMunna bhai M.B.B.S. (2003)B"Muppet Christmas Carol, The (1992)B,Muppet Christmas: Letters to Santa, A (2008)BMuppet Movie, The (1979)BMuppet Treasure Island (1996)BMuppets From Space (1999)BMuppets Most Wanted (2014)B"Muppets Take Manhattan, The (1984)BMuppets, The (2011)BMurder at 1600 (1997)BMurder by Death (1976)BMurder by Numbers (2002)BMurder in the First (1995)B6Murder on a Sunday Morning (Un coupable idéal) (2001)B#Murder on the Orient Express (1974)B#Murder on the Orient Express (2017)BMurderball (2005)BMuriel's Wedding (1994)BMurphy's Romance (1985)BMusa the Warrior (Musa) (2001)BMuse, The (1999)BMusic Box (1989)BMusic From Another Room (1998)BMusic Man, The (1962)BMusic and Lyrics (2007)BMusic of the Heart (1999)BMusketeer, The (2001)BMust Love Dogs (2005)BMutant Aliens (2001)BMutant Chronicles (2008)BMute Witness (1994)BMutiny on the Bounty (1935)B:My Afternoons with Margueritte (La tête en friche) (2010)B$My Architect: A Son's Journey (2003)B*My Best Fiend (Mein liebster Feind) (1999)BMy Best Friend's Girl (2008)BMy Best Friend's Wedding (1997)BMy Big Fat Greek Wedding (2002)B!My Big Fat Greek Wedding 2 (2016)BMy Bloody Valentine (1981)BMy Bloody Valentine 3-D (2009)BMy Blue Heaven (1990)BMy Blueberry Nights (2007)BMy Bodyguard (1980)BMy Boss's Daughter (2003)BMy Boyfriend's Back (1993)BMy Cousin Vinny (1992)B#My Crazy Life (Mi vida loca) (1993)BMy Demon Lover (1987)BMy Dinner with André (1981)BMy Dog Skip (1999)BMy Fair Lady (1964)BMy Family (1995)B,My Father and My Son (Babam ve oglum) (2005)BMy Father the Hero (1994)B1My Father the Hero (Mon père, ce héros.) (1991)B1My Father's Glory (La gloire de mon père) (1990)BMy Favorite Martian (1999)BMy Favorite Wife (1940)BMy Favorite Year (1982)BMy Fellow Americans (1996)BMy First Mister (2001)BMy Flesh and Blood (2003)BMy Giant (1998)BMy Girl (1991)BMy Girl 2 (1994)BMy Kid Could Paint That (2007)B9My Left Eye Sees Ghosts (Ngo joh aan gin diy gwai) (2002)BMy Left Foot (1989)BMy Life (1993)BMy Life Without Me (2003)B)My Life as McDull (Mak dau goo si) (2001)B+My Life as a Dog (Mitt liv som hund) (1985)B'My Life in Pink (Ma vie en rose) (1997)BMy Life in Ruins (2009)BMy Love (2006)B'My Lucky Stars (Fuk sing go jiu) (1985)BMy Man Godfrey (1936)BMy Man Godfrey (1957)B4My Mother's Castle (Château de ma mère, Le) (1990)BMy Name Is Bruce (2007)BMy Name Is Joe (1998)B,My Neighbor Totoro (Tonari no Totoro) (1988)BMy Own Private Idaho (1991)B+My Sassy Girl (Yeopgijeogin geunyeo) (2001)BMy Science Project (1985)BMy Scientology Movie (2016)BMy Sister's Keeper (2009)BMy Son the Fanatic (1997)B My Stepmother Is an Alien (1988)BMy Super Ex-Girlfriend (2006)BMy Tutor (1983)B4My Voyage to Italy (Il mio viaggio in Italia) (1999)B7My Wife is an Actress (Ma Femme est une Actrice) (2001)BMysterious Skin (2004)BMystery Date (1991)BMystery Men (1999)B.Mystery Science Theater 3000: The Movie (1996)BMystery Train (1989)B>Mystery of the Third Planet, The (Tayna tretey planety) (1981)BMystery, Alaska (1999)BMystic Pizza (1988)BMystic River (2003)B!Mystère à la Tour Eiffel (2015)B!Ménage (Tenue de soirée) (1986)BNacho Libre (2006)BNadine (1987)BNadja (1994)BNaked (1993)B.Naked Gun 2 1/2: The Smell of Fear, The (1991)B)Naked Gun 33 1/3: The Final Insult (1994)B6Naked Gun: From the Files of Police Squad!, The (1988)BNaked Lunch (1991)B1Name of the Rose, The (Name der Rose, Der) (1986)BNamesake, The (2006)BNancy Drew (2007)BNanny Diaries, The (2007)BNanny McPhee (2005)BNapoleon Dynamite (2004)BNaqoyqatsi (2002)BNarc (2002)BNarcopolis (2014)BNashville (1975)B Nasu: Summer in Andalusia (2003)B!National Lampoon's Bag Boy (2007)BHNational Lampoon's Lady Killers (National Lampoon's Gold Diggers) (2003)B%National Lampoon's Senior Trip (1995)B"National Lampoon's Vacation (1983)B$National Lampoon's Van Wilder (2002)BNational Security (2003)BNational Treasure (2004)B)National Treasure: Book of Secrets (2007)BNational Velvet (1944)BNative Son (1986)BNativity Story, The (2006)BNatural Born Killers (1994)BNatural, The (1984)BNature Calls (2012)BENausicaä of the Valley of the Wind (Kaze no tani no Naushika) (1984)BNavigator, The (1924)BNavy Seals (1990)BNeal Brennan: 3 Mics (2017)BNear Dark (1987)BNebraska (2013)BNecessary Roughness (1991)BNed Kelly (2003)BNeds (2010)BNeed for Speed (2014)BNeedful Things (1993)BNegotiator, The (1998)BNeighbors (1981)BNeighbors (2014)B#Neighbors 2: Sorority Rising (2016)BNell (1994)BNelly & Monsieur Arnaud (1995)BNeo Tokyo (1987)BNeon Bull (2015)BbNeon Genesis Evangelion: Death & Rebirth (Shin seiki Evangelion Gekijô-ban: Shito shinsei) (1997)BsNeon Genesis Evangelion: The End of Evangelion (Shin seiki Evangelion Gekijô-ban: Air/Magokoro wo, kimi ni) (1997)BNerve (2016)BNet, The (1995)BNetwork (1976)BNevada Smith (1966)BNever Back Down (2008)BNever Been Kissed (1999)BNever Cry Wolf (1983)BNever Die Alone (2004)BNever Let Me Go (2010)BNever Say Never Again (1983)B2NeverEnding Story II: The Next Chapter, The (1990)B!NeverEnding Story III, The (1994)BNeverEnding Story, The (1984)B0New Adventures of Pippi Longstocking, The (1988)BNew Guy, The (2002)BNew Jersey Drive (1995)BNew Kids Nitro (2011)B3New One-Armed Swordsman, The (Xin du bi dao) (1971)B-New Police Story (Xin jing cha gu shi) (2004)BNew Rose Hotel (1998)BNew Waterford Girl (1999)BNew World, The (2005)BNew Year's Eve (2011)B)New York Cop (Nyû Yôku no koppu) (1993)BNew York Stories (1989)BNew York, I Love You (2009)BNew York, New York (1977)BNewsies (1992)BNewton Boys, The (1998)BNext (2007)BNext Best Thing, The (2000)BNext Friday (2000)BNext Karate Kid, The (1994)BNext Stop Wonderland (1998)BNext Three Days, The (2010)BNext of Kin (1989)BNicholas Nickleby (2002)B'Nick Fury: Agent of S.H.I.E.L.D. (1998)B)Nick and Norah's Infinite Playlist (2008)BNick of Time (1995)BNico Icon (1995)B Nico and Dani (Krámpack) (2000)BNicotina (2003)BNight Flier (1997)BNight Guards (2016)BNight Listener, The (2006)B0Night Porter, The (Portiere di notte, Il) (1974)BNight Shift (1982)B"Night Watch (Nochnoy dozor) (2004)BNight and Day (1946)B)Night and Fog (Nuit et brouillard) (1955)BNight at the Museum (2006)B5Night at the Museum: Battle of the Smithsonian (2009)B.Night at the Museum: Secret of the Tomb (2014)BNight at the Opera, A (1935)BNight at the Roxbury, A (1998)B,Night in the Life of Jimmy Reardon, A (1988)BNight of the Comet (1984)BNight of the Creeps (1986)BNight of the Hunter, The (1955)BNight of the Iguana, The (1964)BNight of the Lepus (1972)BNight of the Living Dead (1968)BNight of the Living Dead (1990)B=Night of the Shooting Stars (Notte di San Lorenzo, La) (1982)BNight on Earth (1991)BNight to Remember, A (1958)BNight, The (Notte, La) (1960)BNightbreed (1990)BNightcrawler (2014)BNighthawks (1981)B&Nightmare Before Christmas, The (1993)B5Nightmare on Elm Street 2: Freddy's Revenge, A (1985)B3Nightmare on Elm Street 3: Dream Warriors, A (1987)B5Nightmare on Elm Street 4: The Dream Master, A (1988)B4Nightmare on Elm Street 5: The Dream Child, A (1989)B!Nightmare on Elm Street, A (1984)B!Nightmare on Elm Street, A (2010)B/Nights of Cabiria (Notti di Cabiria, Le) (1957)BNightwatch (1997)BNim's Island (2008)BNina Takes a Lover (1994)BNina's Heavenly Delights (2006)B$Nine Lives of Tomas Katz, The (2000)BNine Months (1995)B!Nine Queens (Nueve reinas) (2000)B#Nine to Five (a.k.a. 9 to 5) (1980)BNines, The (2007)BNinja (2009)BNinja Assassin (2009)B'Ninja Scroll (Jûbei ninpûchô) (1995)BNinja: Shadow of a Tear (2013)BNinotchka (1939)BNinth Gate, The (1999)BNirvana (1997)BNixon (1995)BNo Country for Old Men (2007)B#No Direction Home: Bob Dylan (2005)BNo End in Sight (2007)BNo Escape (1994)BNo Game No Life: Zero (2017)BNo Holds Barred (1989)BNo Man's Land (1987)BNo Man's Land (2001)BNo Mercy (1986)BNo Reservations (2007)BNo Small Affair (1984)BNo Strings Attached (2011)BNo Such Thing (2001)BNo Way Jose (2015)BNo Way Out (1987)B*No. 1 Ladies' Detective Agency, The (2008)BNoah (2014)B&Nobody Knows (Dare mo shiranai) (2004)B*Nobody Loves Me (Keiner liebt mich) (1994)BBNobody Speak: Hulk Hogan, Gawker and Trials of a Free Press (2017)BNobody's Fool (1994)BNocturnal AnimalsBNoin 7 veljestä (1968)BNoises Off... (1992)BNon-Stop (2014)BNorbit (2007)B6Norm Macdonald: Hitler's Dog, Gossip & Trickery (2017)BNorma Rae (1979)BNormal Life (1996)BNorte, El (1984)BNorth & South (2004)BNorth (1994)BNorth Country (2005)BNorth Dallas Forty (1979)B%North Pole: Open For Christmas (2015)BNorth by Northwest (1959)BNorthanger Abbey (2007)BNorthfork (2003)BNorthmen - A Viking Saga (2014)BNorthwest Passage (1940)B8Nosferatu (Nosferatu, eine Symphonie des Grauens) (1922)B;Nosferatu the Vampyre (Nosferatu: Phantom der Nacht) (1979)BNot Another Teen Movie (2001)B,Not One Less (Yi ge dou bu neng shao) (1999)B Not Suitable for Children (2012)BNot Without My Daughter (1991)B*Not on the Lips (Pas sur la bouche) (2003)BNotebook, The (2004)BNotes on a Scandal (2006)BNothing (2003)BNothing But Trouble (1991)BNothing Personal (1995)BNothing in Common (1986)B-Nothing to Declare (Rien à déclarer) (2010)BNothing to Lose (1994)BNothing to Lose (1997)BNotorious (1946)BNotorious (2009)B!Notorious Bettie Page, The (2005)BNotorious C.H.O. (2002)BNotting Hill (1999)BNovember (2004)BNovocaine (2001)BNow You See Me (2013)BNow You See Me 2 (2016)BNow and Then (1995)BNow, Voyager (1942)BNowhere (1997)B.Nowhere in Africa (Nirgendwo in Afrika) (2001)B!Nowitzki: The Perfect Shot (2014)BNumber 23, The (2007)BNuns on the Run (1990)BNuremberg (2000)BNurse Betty (2000)BNut Job, The (2014)B%Nutty Professor II: The Klumps (2000)BNutty Professor, The (1963)BNutty Professor, The (1996)BNymphomaniac: Volume I (2013)BNymphomaniac: Volume II (2013)BO (2001)B!O Brother, Where Art Thou? (2000)BO.J.: Made in America (2016)BOH in Ohio, The (2006)BOT: Our Town (2002)BOasis (2002)BObject of Beauty, The (1991)B"Object of My Affection, The (1998)BObjective, Burma! (1945)BOblivion (2013)BOblivion 2: Backlash (1996)BObserve and Report (2009)BObsessed (2009)BObsession (1965)BObsession (1976)BOcean's Eleven (2001)B)Ocean's Eleven (a.k.a. Ocean's 11) (1960)BOcean's Thirteen (2007)BOcean's Twelve (2004)BOceans (Océans) (2009)BOcho apellidos vascos (2014)BOctagon, The (1980)BOctober Sky (1999)BOctopussy (1983)BOculus (2013)BOdd Couple II, The (1998)BOdd Couple, The (1968)B%Odd Life of Timothy Green, The (2012)BOdessa File, The (1974)BOf Human Bondage (1934)BOf Mice and Men (1939)BOf Mice and Men (1992)BOffice Christmas Party (2016)BOffice Romance (1977)BOffice Space (1999)B"Officer and a Gentleman, An (1982)B0Official Story, The (La historia oficial) (1985)BOgre, The (Unhold, Der) (1996)B"Oh Boy (A Coffee in Berlin) (2012)BOh, God! (1977)BOh, God! Book II (1980)BOh, God! You Devil (1984)BOh, Hello: On Broadway (2017)BOkja (2017)BOklahoma! (1955)BOld Boy (2003)BOld Dogs (2009)BEOld Lady and the Pigeons, The (La vieille dame et les pigeons) (1997)BOld Man and the Sea, The (1958)BOld Men: Robbers (1971)BOld School (2003)BOld Yeller (1957)BOldboy (2013)BOliver & Company (1988)BOliver Twist (1948)BOliver Twist (2005)BOliver! (1968)BOlympus Has Fallen (2013)BOmega Code, The (1999)BOmega Doom (1996)BOmega Man, The (1971)BOmen, The (1976)BOmen, The (2006)BOn Any Sunday (1971)BOn Golden Pond (1981)B&On Her Majesty's Secret Service (1969)BOn a Clear Day (2005)BOn the Beach (1959)BEOn the Other Side of the Tracks (De l'autre côté du périph) (2012)BOn the Ropes (1999)BOn the Town (1949)B0On the Trail of the Bremen Town Musicians (1973)BOn the Waterfront (1954)BOnce (2006)BOnce Bitten (1985)B"Once Upon a Time in America (1984)B0Once Upon a Time in China (Wong Fei Hung) (1991)BPOnce Upon a Time in China II (Wong Fei-hung Ji Yi: Naam yi dong ji keung) (1992)BLOnce Upon a Time in China III (Wong Fei-hung tsi sam: Siwong tsangba) (1993)B!Once Upon a Time in Mexico (2003)B'Once Upon a Time in the Midlands (2002)B=Once Upon a Time in the West (C'era una volta il West) (1968)B/Once Upon a Time... When We Were Colored (1995)BOnce Were Warriors (1994)B&Once a Thief (Zong heng si hai) (1991)BOne Crazy Summer (1986)BOne Day (2011)BOne Day in September (1999)BOne False Move (1992)BOne Fine Day (1996)B&One Flew Over the Cuckoo's Nest (1975)BOne Hour Photo (2002)BOne I Love, The (2014)BOne Man Band (2005)B&One Missed Call (Chakushin ari) (2003)BOne Night at McCool's (2001)BOne Tough Cop (1998)BOne True Thing (1998)BOne Week (1920)BOne for the Money (2012)BOne, The (2001)BOne, Two, Three (1961)B+One-Armed Swordsman, The (Dubei dao) (1967)BOne-Eyed Jacks (1961)B6One-Way Ticket to Mombasa (Menolippu Mombasaan) (2002)BOnegin (1999)B*Ong-Bak: The Thai Warrior (Ong Bak) (2003)BOnibaba (1964)BOnion Movie, The (2008)BOnly Angels Have Wings (1939)BOnly God Forgives (2013)BOnly Lovers Left Alive (2013)BAOnly Old Men Are Going to Battle (V boy idut odni stariki) (1973)B)Only Yesterday (Omohide poro poro) (1991)BOnly You (1994)BOnly the Lonely (1991)BOnly the Strong (1993)BOoops! Noah is Gone... (2015)B)Open Hearts (Elsker dig for evigt) (2002)BOpen Range (2003)BOpen Season (2006)BOpen Water (2003)BOpen Water 2: Adrift (2006)B%Open Your Eyes (Abre los ojos) (1997)BOpera (1987)B0Operation 'Y' & Other Shurik's Adventures (1965)BOperation Dumbo Drop (1995)BOperation Petticoat (1959)BOpposite of Sex, The (1998)BOrange County (2002)BOrca: The Killer Whale (1977)B.Orchestra Rehearsal (Prova d'orchestra) (1978)BOrder, The (2001)BOrdet (Word, The) (1955)BOrdinary Decent Criminal (2000)BOrdinary Miracle (1978)BOrdinary People (1980)BOrgazmo (1997)B$Original Kings of Comedy, The (2000)BOriginal Sin (2001)BOrlando (1992)BOrphan (2009)B$Orphanage, The (Orfanato, El) (2007)BOsama (2003)BOscar (1967)BOscar (1991)B1Oscar and Lucinda (a.k.a. Oscar & Lucinda) (1997)BOsmosis Jones (2001)BOtello (1986)BOthello (1995)B<Othello (Tragedy of Othello: The Moor of Venice, The) (1952)BOther Boleyn Girl, The (2008)BOther Guys, The (2010)BOther People's Money (1991)BOther Sister, The (1999)BOther Woman, The (2014)BOthers, The (2001)BOur Brand Is Crisis (2015)BOur Family Wedding (2010)BOur Hospitality (1923)BOur Idiot Brother (2011)B=Our Lady of the Assassins (Virgen de los sicarios, La) (2000)BOur Lips Are Sealed (2000)BOur Man Flint (1965)BOur Town (1940)BOut Cold (1989)BOut Cold (2001)BOut of Africa (1985)BOut of Sight (1998)BOut of Time (2003)BOut of the Past (1947)BOut to Sea (1997)BOut-of-Towners, The (1999)BOutbreak (1995)B3Outfoxed: Rupert Murdoch's War on Journalism (2004)BOutland (1981)BOutlander (2008)BOutlaw Josey Wales, The (1976)BOutpost (2008)BOutrageous Fortune (1987)BOutside Providence (1999)BOutsiders, The (1983)BOutsourced (2006)BOver the Garden Wall (2013)BOver the Hedge (2006)BOver the Top (1987)BOverboard (1987)BOvernight Delivery (1998)B+Oversimplification of Her Beauty, An (2012)BOwning Mahowny (2003)BOx-Bow Incident, The (1943)BOxygen (1999)B Oz the Great and Powerful (2013)BP.S. (2004)BP.S. I Love You (2007)B
PCU (1994)B	PK (2014)BPacific Heights (1990)BPacific Rim (2013)BPacific Rim: Uprising (2018)BPacifier, The (2005)BPackage, The (1989)BPact, The (2012)BPaddington (2014)BPaddington 2 (2017)BPagemaster, The (1994)BPaid in Full (2002)BPain & Gain (2013)BPaint Your Wagon (1969)BPainted Skin (2008)BPainted Veil, The (2006)BPaisan (Paisà) (1946)BPajama Game, The (1957)BPale Rider (1985)BPalindromes (2004)BPallbearer, The (1996)BPalm Beach Story, The (1942)BPalmetto (1998)BPalookaville (1996)B
Pan (2015)B0Pan's Labyrinth (Laberinto del fauno, El) (2006)BPandorum (2009)BPanic (2000)BPanic Room (2002)BPaparazzi (2004)B&Paper Birds (Pájaros de papel) (2010)BPaper Chase, The (1973)BPaper Clips (2004)BPaper Heart (2009)BPaper Man (2009)BPaper Moon (1973)BPaper Towns (2015)BPaper, The (1994)BPaperhouse (1988)BPaperman (2012)BPapillon (1973)BPaprika (Papurika) (2006)BParaNorman (2012)BParadine Case, The (1947)BParadise (1982)B#Paradise Lost 2: Revelations (2000)B!Paradise Lost 3: Purgatory (2011)B;Paradise Lost: The Child Murders at Robin Hood Hills (1996)BParadise Now (2005)BParadise Road (1997)BParadox (2010)BParanoid Park (2007)BParanormal Activity (2009)BParanormal Activity 2 (2010)BParanormal Activity 3 (2011)BParanormal Activity 4 (2012)BParasite (1982)BParasyte: Part 1 (2014)BParasyte: Part 2 (2015)BParent Trap, The (1961)BParent Trap, The (1998)BParental Guidance (2012)BParenthood (1989)BParis Is Burning (1990)B+Paris, I Love You (Paris, je t'aime) (2006)BParis, Texas (1984)BParticle Fever (2013)BPartisan (2015)BPartly Cloudy (2009)B Party 2, The (Boum 2, La) (1982)BParty Girl (1995)BParty Monster (2003)BParty, The (1968)BParty, The (Boum, La) (1980)BPassage to India, A (1984)BPassenger 57 (1992)B-Passenger, The (Professione: reporter) (1975)BPassengers (2016)BPassion (2012)BPassion Fish (1992)B)Passion of Anna, The (Passion, En) (1969)B@Passion of Joan of Arc, The (Passion de Jeanne d'Arc, La) (1928)B!Passion of the Christ, The (2004)B$Pat Garrett and Billy the Kid (1973)BPat and Mike (1952)BPatch Adams (1998)BPatch of Blue, A (1965)BPatersonBPathology (2008)BPaths of Glory (1957)BPatlabor 2: The Movie (1993)B@Patlabor: The Movie (Kidô keisatsu patorebâ: The Movie) (1989)B"Patrik Age 1.5 (Patrik 1,5) (2008)BPatriot Games (1992)BPatriot, The (1998)BPatriot, The (2000)BPatti Rocks (1988)BPatton (1970)B+Patton Oswalt: My Weakness Is Strong (2009)B5Patton Oswalt: Tragedy Plus Comedy Equals Time (2014)BPaul (2011)BPaul Blart: Mall Cop (2009)BPaul Blart: Mall Cop 2 (2015)BPaulie (1998)B1Pauline at the Beach (Pauline à la Plage) (1983)BPawn (2013)BPawn Sacrifice (2015)BPawnbroker, The (1964)BPay It Forward (2000)BPayback (1999)BPaycheck (2003)BPeaceful Warrior (2006)BPeacekeeper, The (1997)BPeacemaker, The (1997)BPeanuts Movie, The (2015)BPearl Harbor (2001)BPearl Jam Twenty (2011)BPecker (1998)BPee-wee's Big Adventure (1985)BPeeping Tom (1960)BPeggy Sue Got Married (1986)B Pekka ja Pätkä Suezilla (1958)B&Pekka ja Pätkä salapoliiseina (1957)BPelican Brief, The (1993)B,Pelle the Conqueror (Pelle erobreren) (1987)BPelé: Birth of a Legend (2016)BPenelope (2006)BPenguins of Madagascar (2014)BPenn & Teller Get Killed (1989)BPenny Serenade (1941)BPeople I Know (2002)B#People That Time Forgot, The (1977)B#People Under the Stairs, The (1991)BPeople Will Talk (1951)B"People vs. Larry Flynt, The (1996)B9Percy Jackson & the Olympians: The Lightning Thief (2010)B%Percy Jackson: Sea of Monsters (2013)BPerez Family, The (1995)BPerfect (1985)BPerfect Blue (1997)BPerfect Candidate, A (1996)B;Perfect Crime, The (Crimen Ferpecto) (Ferpect Crime) (2004)BPerfect Getaway, A (2009)BPerfect Man, The (2005)BPerfect Murder, A (1998)B)Perfect Plan, A (Plan parfait, Un) (2012)BPerfect Score, The (2004)BPerfect Sense (2011)BPerfect Storm, The (2000)BPerfect World, A (1993)BPerformance (1970)B'Perfume: The Story of a Murderer (2006)B'Perks of Being a Wallflower, The (2012)BPermanent Midnight (1998)BPersepolis (2007)BPersona (1966)BPersonal Velocity (2002)BPersuasion (1995)BPersuasion (2007)B%Pervert's Guide to Cinema, The (2006)B'Pervert's Guide to Ideology, The (2012)BPest, The (1997)BPet Sematary (1989)BPet Sematary II (1992)BPete's Dragon (1977)BPete's Dragon (2016)BPeter Pan (1953)BPeter Pan (1960)BPeter Pan (2003)BPeter's Friends (1992)BPeyton Place (1957)BPhantasm (1979)BPhantasm II (1988)B%Phantasm III: Lord of the Dead (1994)BPhantasm IV: Oblivion (1998)BPhantom Thread (2017)BPhantom Tollbooth, The (1970)B Phantom of the Opera, The (2004)BPhantom of the Paradise (1974)BPhantom, The (1996)BPhantoms (1998)B"Phenomena (a.k.a. Creepers) (1985)BPhenomenon (1996)BPhil Spector (2013)BPhiladelphia (1993)B#Philadelphia Experiment, The (1984)BPhiladelphia Story, The (1940)BPhilomena (2013)B;Phineas and Ferb the Movie: Across the 2nd Dimension (2011)BPhir Hera Pheri (2006)BPhone Booth (2002)B	Pi (1998)BPianist, The (2002)B'Piano Teacher, The (La pianiste) (2001)BPiano, The (1993)BPickpocket (1959)BPickup on South Street (1953)BPicnic (1955)BPicnic at Hanging Rock (1975)B!Picture Bride (Bijo photo) (1994)BPicture Perfect (1997)B"Picture of Dorian Gray, The (1945)BPie in the Sky (1996)BPieces of April (2003)BPierrot le fou (1965)BPiglet's Big Movie (2003)BPillow Book, The (1996)BPillow Talk (1959)BPineapple Express (2008)BPink Cadillac (1989)BPink Flamingos (1972)BPink Floyd: The Wall (1982)BPink Panther 2, The (2009)B&Pink Panther Strikes Again, The (1976)BPink Panther, The (1963)BPink Panther, The (2006)BPinocchio (1940)BPinocchio (2002)BPiper (2016)BPiranha (1978)BPiranha (Piranha 3D) (2010)B&Piranha 3DD (a.k.a. Piranha DD) (2012)BPiranha II: The Spawning (1981)BPirate Movie, The (1982)BPirate Radio (2009)B Pirates of Silicon Valley (1999)B/Pirates of the Caribbean: At World's End (2007)B1Pirates of the Caribbean: Dead Man's Chest (2006)B7Pirates of the Caribbean: Dead Men Tell No Tales (2017)B2Pirates of the Caribbean: On Stranger Tides (2011)B=Pirates of the Caribbean: The Curse of the Black Pearl (2003)B$Pirates! Band of Misfits, The (2012)BPit and the Pendulum (1961)BPitch Black (2000)BPitch Perfect (2012)BPitch Perfect 2 (2015)BPitfall (Otoshiana) (1962)BPixel Perfect (2004)BPixels (2015)B"Place Beyond the Pines, The (2012)BPlace in the Sun, A (1951)BPlaces in the Heart (1984)BPlain Clothes (1988)BPlan 9 from Outer Space (1959)BPlanes (2013)B#Planes, Trains & Automobiles (1987)BPlanes: Fire & Rescue (2014)BPlanet 51 (2009)BPlanet Earth (2006)BPlanet Earth II (2016)BPlanet Terror (2007)BPlanet of the Apes (1968)BPlanet of the Apes (2001)BPlastic (2014)BPlatoon (1986)BPlay It Again, Sam (1972)BPlay Misty for Me (1971)B"Play Time (a.k.a. Playtime) (1967)BPlay the Game (2009)BPlayer, The (1992)BPlaying God (1997)BPlaying It Cool (2014)BPlaying by Heart (1998)BPlaying for Keeps (2012)B/Playing the Victim (Izobrazhaya zhertvu) (2006)BPleasantville (1998)B#Please Don't Eat the Daisies (1960)BPlease Give (2010)BPledge, The (2001)BPlunkett & MaCleane (1999)BPocahontas (1995)B-Pocahontas II: Journey to a New World (1998) BPocketful of Miracles (1961)BPoetic Justice (1993)BPoint Blank (1967)BPoint Break (1991)BPoint of No Return (1993)BPoison Ivy (1992)BPoison Ivy II (1996)B Poison Ivy: New Seduction (1997)B4Pokemon 4 Ever (a.k.a. Pokémon 4: The Movie) (2002)BPoker Night (2014)BPokémon 3: The Movie (2001)BPokémon Heroes (2003)BPokémon the Movie 2000 (2000)B Pokémon: The First Movie (1998)BPolar Express, The (2004)BPolice Academy (1984)B/Police Academy 2: Their First Assignment (1985)B)Police Academy 3: Back in Training (1986)B+Police Academy 4: Citizens on Patrol (1987)B0Police Academy 5: Assignment: Miami Beach (1988)B)Police Academy 6: City Under Siege (1989)B(Police Academy: Mission to Moscow (1994)B'Police Story (Ging chaat goo si) (1985)B2Police Story 2 (Ging chaat goo si juk jaap) (1988)BPolish Wedding (1998)BPollock (2000)BPollyanna (1960)BPoltergeist (1982)B%Poltergeist II: The Other Side (1986)BPoltergeist III (1988)BPolyester (1981)BPolytechnique (2009)BHPom Poko (a.k.a. Raccoon War, The) (Heisei tanuki gassen pompoko) (1994)BPompatus of Love, The (1996)BPonette (1996)BPontypool (2008)B"Ponyo (Gake no ue no Ponyo) (2008)BPoolhall Junkies (2002)BPootie Tang (2001)B%Pope of Greenwich Village, The (1984)BPopeye (1980)B)Popstar: Never Stop Never Stopping (2016)B2Porco Rosso (Crimson Pig) (Kurenai no buta) (1992)BPork Chop Hill (1959)BPorky in Wackyland (1938)BPorky's (1982)BPorky's Hare Hunt (1938)BPorky's II: The Next Day (1983)BPorky's Revenge (1985)B)Pornstar: The Legend of Ron Jeremy (2001)BPortrait of a Lady, The (1996)BPoseidon (2006)BPoseidon Adventure, The (1972)BPossession (2002)B&Postman Always Rings Twice, The (1946)B&Postman Always Rings Twice, The (1981)BPostman, The (1997)B!Postman, The (Postino, Il) (1994)BPowaqqatsi (1988)BPowder (1995)BPowder Blue (2009)BPower Rangers (2017)BAPower of Nightmares, The: The Rise of the Politics of Fear (2004)BPower of One, The (1992)BPower/Rangers (2015)BPowerpuff Girls, The (2002)BPractical Magic (1998)B Prairie Home Companion, A (2006)BPrancer (1989)BPrayers for Bobby (2009)BPreacher's Wife, The (1996)BPrecious (2009)BPrecious Cargo (2016)BPredator (1987)BPredator 2 (1990)BPredators (2010)BPredestination (2014)BPrefontaine (1997)BPrelude to a Kiss (1992)BPremium Rush (2012)BPremonition (2007)BPresidio, The (1988)BPrestige, The (2006)BPresto (2008)BPresumed Innocent (1990)BPretty One, The (2013)BPretty Persuasion (2005)BPretty Woman (1990)BPretty in Pink (1986)BPrey for Rock & Roll (2003)BPrice of Milk, The (2000)BPriceless (Hors de prix) (2006)BPride & Prejudice (2005)BPride (2007)BPride (2014)BPride and Glory (2008)BPride and Prejudice (1940)BPride and Prejudice (1995)B&Pride and Prejudice and Zombies (2016)B Pride of the Yankees, The (1942)BPriest (1994)BPriest (2011)B(Priklyucheniya Kapitana Vrungelya (1979)BPrimal Fear (1996)BPrimary Colors (1998)BPrime (2005)BPrime Suspect 2 (1992)BPrime Suspect 3 (1993)B(Prime Suspect 6: The Last Witness (2003)B$Prime Suspect: The Lost Child (1995)B%Prime of Miss Jean Brodie, The (1969)BPrimer (2004)BPrimeval (2007)BPrince & Me, The (2004)BPrince of Darkness (1987)BPrince of Egypt, The (1998)B*Prince of Persia: The Sands of Time (2010)BPrince of Tides, The (1991)BPrincess (Prinsessa) (2010)B+Princess Blade, The (Shura Yukihime) (2001)BPrincess Bride, The (1987)BPrincess Caraboo (1994)B0Princess Diaries 2: Royal Engagement, The (2004)BPrincess Diaries, The (2001)B(Princess Mononoke (Mononoke-hime) (1997)B!Princess and the Frog, The (2009)B#Princess and the Pirate, The (1944)BDPrincess and the Warrior, The (Krieger und die Kaiserin, Der) (2000)BPrincipal, The (1987)B$Prison Break: The Final Break (2009)BPrisoners (2013)BPrivate Benjamin (1980)BPrivate Eyes, The (1981)B+Private Life of Sherlock Holmes, The (1970)B&Private Lives of Pippa Lee, The (2009)BPrivate Parts (1997)BPrivate Resort (1985)BPrivate School (1983)BPrizzi's Honor (1985)BProblem Child (1990)BProblem Child 2 (1991)BProducers, The (1968)BProducers, The (2005)B+Professional, The (Le professionnel) (1981)BProgram, The (1993)BProject A ('A' gai waak) (1983)B(Project A 2 ('A' gai wak juk jap) (1987)BProject Almanac (2015)BProject X (1968)BProject X (1987)BProject X (2012)BProm Night (1980)BProm Night (2008)B*Prom Night IV: Deliver Us From Evil (1992)BPrometheus (2012)B!Promise, The (La promesse) (1996)BPromised Land (2012)BPromises (2001)BProof (2005)BProof of Life (2000)BProphecy, The (1995)B Prophet, A (Un Prophète) (2009)BProposal, The (2009)BProposition, The (2005)BProtector, The (1985)B;Protector, The (a.k.a. Warrior King) (Tom yum goong) (2005)BProtocol (1984)BProzac Nation (2001)BPsycho (1960)BPsycho (1998)BPsycho Beach Party (2000)BPsycho II (1983)BPsycho III (1986)BPublic Enemies (2009)BPublic Enemy, The (1931)BPublic Eye, The (1992)BPuffy Chair, The (2006)BPulp Fiction (1994)BPulse (2006)BPulse (Kairo) (2001)BPump Up the Volume (1990)BPumping Iron (1977)BPumpkin (2002)BPumpkinhead (1988)BPunch-Drunk Love (2002)BPunchline (1988)BPuncture (2011)BPunisher, The (1989)BPunisher, The (2004)BPunisher: War Zone (2008)BPuppet Master (1989)BPuppet Master 4 (1993)B)Puppet Master 5: The Final Chapter (1994)BPuppet Master II (1991)B*Puppet Master III: Toulon's Revenge (1991)BPuppet Masters, The (1994)B/Pure Formality, A (Pura formalità, Una) (1994)BPurgatory (1999)BPurge, The (2013)BPurge: Anarchy, The (2014)B"Purple Butterfly (Zi hudie) (2003)BPurple Rain (1984)B Purple Rose of Cairo, The (1985)BPursuit of Happiness (2001)B Pursuit of Happyness, The (2006)BPush (2009)BPusher (1996)B(Pusher II: With Blood on My Hands (2004)B)Pusher III: I'm the Angel of Death (2005)BPushing Hands (Tui shou) (1992)BPushing Tin (1999)BPuss in Boots (2011)B-Puss in Boots (Nagagutsu o haita neko) (1969)B'Puss in Boots: The Three Diablos (2012)BPygmalion (1938)B!Pyromaniac's Love Story, A (1995)BPépé le Moko (1937)BQuadrophenia (1979)BQuantum of Solace (2008)BQuatermass and the Pit (1967)B&Queen Margot (Reine Margot, La) (1994)BQueen of Versailles, The (2012)BQueen of the Damned (2002)BQuest (2017)BQuest for Camelot (1998)B)Quest for Fire (Guerre du feu, La) (1981)BQuest, The (1996)BQuick Change (1990)BQuick and the Dead, The (1995)BQuicksilver (1986)BQuiet American, The (2002)BQuiet Earth, The (1985)BQuiet Man, The (1952)BQuigley Down Under (1990)BQuills (2000)BQuiz Show (1994)BQuo Vadis (1951)BR.I.P.D. (2013)BRKO 281 (1999)B	RV (2006)BRabbit Hole (2010)BRabbit-Proof Fence (2002)BRabbits (2002)BRace (2016)BRace to Witch Mountain (2009)BRachel Getting Married (2008)BRacing Stripes (2005)BRadio (2003)BRadio Day (2008)BRadio Days (1987)BRadio Flyer (1992)BRadioland Murders (1994)BRage of Honor (1987)BRage: Carrie 2, The (1999)BRaging Bull (1980)BRagtime (1981)BNRaiders of the Lost Ark (Indiana Jones and the Raiders of the Lost Ark) (1981)B.Raiders of the Lost Ark: The Adaptation (1989)BRailway Children, The (1970)BRain (2001)BRain Man (1988)BRaining Stones (1993)BRainmaker, The (1997)BRaise Your Voice (2004)B<Raise the Red Lantern (Da hong deng long gao gao gua) (1991)BRaise the Titanic (1980)BRaisin in the Sun, A (1961)BRaising Arizona (1987)BRaising Cain (1992)BRaising Helen (2004)BRaising Victor Vargas (2002)BRambo (Rambo 4) (2008)BRambo III (1988)B!Rambo: First Blood Part II (1985)BRamona and Beezus (2010)BRampage (2018)B
Ran (1985)BRandom Harvest (1942)BRandom Hearts (1999)BRango (2011)BRansom (1996)BRape Me (Baise-moi) (2000)BRapid Fire (1992)BRapture, The (1991)BRapture-Palooza (2013)BRare Birds (2001)B4Rare Exports: A Christmas Tale (Rare Exports) (2010)BRashomon (Rashômon) (1950)BRat Race (2001)BRatatouille (2007)BRatchet & Clank (2016)BRaven, The (2012)BRavenous (1999)BRaw Deal (1986)BRawhead Rex (1986)B
Ray (2004)BRazor's Edge, The (1984)BRe-Animator (1985)BReader, The (2008)BReady Player OneBReady to Rumble (2000)B$Ready to Wear (Pret-A-Porter) (1994)BReal Blonde, The (1997)BReal Genius (1985)BReal Life (1979)BReal McCoy, The (1993)BReal Steel (2011)BReal Women Have Curves (2002)BReality (2014)BReality Bites (1994)BReaping, The (2007)BRear Window (1954)BRebecca (1940)BRebel Without a Cause (1955)BRebound (2005)BRebound, The (2009)BRecess: School's Out (2001)BReckless (1995)BReckless Kelly (1994)BReckoning, The (2004)BRecount (2008)BRecruit, The (2003)B
Red (2010)BRed 2 (2013)BRed Army (2014)B Red Badge of Courage, The (1951)B*Red Balloon, The (Ballon rouge, Le) (1956)BRed Beard (Akahige) (1965)BRed Cliff (Chi bi) (2008)B8Red Cliff Part II (Chi Bi Xia: Jue Zhan Tian Xia) (2009)BRed Corner (1997)BRed Dawn (1984)BRed Dawn (2012)BRed Dragon (2002)BRed Eye (2005)BRed Flag (2012)BRed Heat (1988)BRed Hill (2010)BRed Lights (Feux rouges) (2004)BRed Planet (2000)BRed Riding Hood (2011)BRed River (1948)BRed Rock West (1992)BRed Shoes, The (1948)BRed Sonja (1985)B#Red Sorghum (Hong gao liang) (1987)BRed State (2011)BRed Tails (2012)B)Red Violin, The (Violon rouge, Le) (1998)BRedbelt (2008)BRedemption (Hummingbird) (2013)BRedline (2009)BReds (1981)B1Reefer Madness (a.k.a. Tell Your Children) (1938)B(Reefer Madness: The Movie Musical (2005)BRef, The (1994)BReform School Girls (1986)BRegarding Henry (1991)BRegret to Inform (1998)BReign Over Me (2007)BReign of Assassins (2010)BReign of Fire (2002)BReindeer Games (2000)BRelative Fear (1994)BRelic, The (1997)BReligulous (2008)BRemains of the Day, The (1993)BRemember Me (2010)B$Remember Me (Ricordati di me) (2003)BRemember the Titans (2000)B*Remo Williams: The Adventure Begins (1985)BRenaissance (2006)BRenaissance Man (1994)BReno 911!: Miami (2007)BRent (2005)BRent-A-Cop (1988)BRent-a-Kid (1995)BReplacement Killers, The (1998)BReplacements, The (2000)BRepo Man (1984)BRepo Men (2010)BRepossessed (1990)BReptilicus (1961)BRepulsion (1965)BRequiem (2006)BRequiem for a Dream (2000)B Requiem for a Heavyweight (1962)B%Requiem for the American Dream (2015)BRescue Dawn (2006)BRescuers Down Under, The (1990)BRescuers, The (1977)BReservoir Dogs (1992)BResident Evil (2002)BResident Evil: Afterlife (2010)B Resident Evil: Apocalypse (2004)B Resident Evil: Extinction (2007)B!Resident Evil: Retribution (2012)BResolution (2012)BRespiro (2002)BRestoration (1995)BRestrepo (2010)BRetroactive (1997)B!Return from Witch Mountain (1978)BReturn of Jafar, The (1994)BAReturn of Martin Guerre, The (Retour de Martin Guerre, Le) (1982)B%Return of the Living Dead, The (1985)B$Return of the Musketeers, The (1989)B(Return of the One-Armed Swordsman (1969)B&Return of the Pink Panther, The (1975)BReturn of the Secaucus 7 (1980)BReturn to Me (2000)BReturn to Never Land (2002)BReturn to Oz (1985)BReturn to Paradise (1998)BReturn to Sender (2015)BAReturn to Snowy River (a.k.a. The Man From Snowy River II) (1988)B Return to Treasure Island (1988)B Return to the Blue Lagoon (1991)BReturn with Honor (1998)B$Return, The (Vozvrashcheniye) (2003)BReturner (Ritaanaa) (2002)BRevenant, The (2009)BRevenge (1990)BRevenge for Jolly! (2012)B#Revenge of the Green Dragons (2014)BRevenge of the Nerds (1984)B1Revenge of the Nerds II: Nerds in Paradise (1987)B4Revenge of the Nerds III: The Next Generation (1992)B-Revenge of the Nerds IV: Nerds in Love (1994)B"Revenge of the Pink Panther (1978)BReversal of Fortune (1990)BRevolution (1985)BRevolution OS (2001)BMRevolution Will Not Be Televised, The (a.k.a. Chavez: Inside the Coup) (2003)BRevolutionary Road (2008)BRevolver (2005)BRewrite, The (2014)BRichard III (1995)B-Richard Pryor Live on the Sunset Strip (1982)BRichie Rich (1994)B?Rick and Morty: State of Georgia Vs. Denver Fenton Allen (2016)BRicki and the Flash (2015)B!Ricky Gervais Live 3: Fame (2007)B"Ricky Gervais Live: Animals (2003)BRiddick (2013)BRide Along (2014)BRide Along 2 (2016)BRide the High Country (1962)BRide with the Devil (1999)BRidicule (1996)BRiding Giants (2004)BRiding in Cars with Boys (2001)B)Rififi (Du rififi chez les hommes) (1955)BRight Stuff, The (1983)BRighteous Kill (2008)B-Riki-Oh: The Story of Ricky (Lik Wong) (1991)BRing Two, The (2005)BRing of Terror (1962)BRing, The (1927)BRing, The (2002)BRinger, The (2005)BRingu (Ring) (1998)BRingu 0: Bâsudei (2000)BRink, The (1916)B
Rio (2011)BRio 2 (2014)BRio Bravo (1959)BRio Grande (1950)BRipley's Game (2002)BRise of the Footsoldier (2007)BRise of the Guardians (2012)B%Rise of the Planet of the Apes (2011)BRisen (2016)BRising Sun (1993)BRisk (2016)BRisky Business (1983)BRiver Runs Through It, A (1992)BRiver Wild, The (1994)BRiver's Edge (1986)BRiver, The (1984)BRivers and Tides (2001)BRize (2005)BRo.Go.Pa.G. (1963)BRoad House (1989)BRoad Trip (2000)B$Road Warrior, The (Mad Max 2) (1981)BRoad to El Dorado, The (2000)BRoad to Guantanamo, The (2006)BRoad to Morocco (1942)BRoad to Perdition (2002)BRoad to Wellville, The (1994)BRoad, The (2009)BRob Roy (1995)BRoberta (1935)BRobin Hood (1973)BRobin Hood (2010)B Robin Hood: Men in Tights (1993)B$Robin Hood: Prince of Thieves (1991)B'Robin Williams: Live on Broadway (2002)BRobin and Marian (1976)B$Robin-B-Hood (Bo bui gai wak) (2006)BRobinson Crusoe on Mars (1964)BRoboCop (1987)BRoboCop (2014)BRoboCop 2 (1990)BRoboCop 3 (1993)BRoboGeisha (Robo-geisha) (2009)BRobot & Frank (2012)B)Robot Carnival (Roboto kânibauru) (1987)BRobot Jox (1990)BRobot Overlords (2014)BRobots (2005)B7Rocco and His Brothers (Rocco e i suoi fratelli) (1960)BRock School (2005)BRock Star (2001)BRock of Ages (2012)BRock the Kasbah (2015)BRock, The (1996)BRock-A-Doodle (1991)BRocker, The (2008)BRocket Science (2007)B)Rocket Singh: Salesman of the Year (2009)B$RocketMan (a.k.a. Rocket Man) (1997)BRocketeer, The (1991)BRocknRolla (2008)BRocky (1976)BRocky Balboa (2006)B%Rocky Horror Picture Show, The (1975)BRocky II (1979)BRocky III (1982)BRocky IV (1985)BRocky V (1990)BRoger & Me (1989)BRoger Dodger (2002)BRogue (2007)B#Rogue One: A Star Wars Story (2016)BRole Models (2008)BRoll Bounce (2005)BRollerball (1975)BRollerball (2002)BRollercoaster (1977)B:Rollo and the Woods Sprite (Rölli ja metsänhenki) (2001)BRoman Holiday (1953)BRoman J. Israel, Esq. (2017)BRomance (1999)BRomancing the Stone (1984)BRomantics, The (2010)B?Rome, Open City (a.k.a. Open City) (Roma, città aperta) (1945)BRomeo Is Bleeding (1993)BRomeo Must Die (2000)BRomeo and Juliet (1968)BRomper Stomper (1992)B-Romy and Michele's High School Reunion (1997)BRonin (1998)BRookie of the Year (1993)BRookie, The (1990)BRookie, The (2002)BRoom (2015)BRoom at the Top (1959)BRoom for Romeo Brass, A (1999)B)Room in Rome (Habitación en Roma) (2010)BRoom with a View, A (1986)BRoom, The (2003)BRoommate, The (2011)BRoommates (1995)BRoots (1977)BRope (1948)B0Rory O'Shea Was Here (Inside I'm Dancing) (2004)B4Rory Scovel Tries Stand-Up for the First Time (2017)BRose Red (2002)BRose Tattoo, The (1955)BRosemary's Baby (1968)B,Rosencrantz and Guildenstern Are Dead (1990)BRosetta (1999)BRosewood (1997)BRough Magic (1995)BRough Night (2017)BRounders (1998)BRoxanne (1987)BRoyal Flash (1975)BRoyal Tenenbaums, The (2001)BRoyal Wedding (1951)BRubber (2010)B!Ruby & Quentin (Tais-toi!) (2003)BRuby Red (2013)BRuby Sparks (2012)BRuby in Paradise (1993)BRudderless (2014)BRude Boy (1980)B&Rudolph, the Red-Nosed Reindeer (1964)BRudy (1993)BRugrats Movie, The (1998)B"Rugrats in Paris: The Movie (2000)BRuins, The (2008)BRules of Attraction, The (2002)BRules of Engagement (2000)B0Rules of the Game, The (La règle du jeu) (1939)BRuling Class, The (1972)BRum Diary, The (2011)B*Rumble in the Bronx (Hont faan kui) (1995)BRumor Has It... (2005)B
Run (1991)BRun All Night (2015)BRun Fatboy Run (2007)B Run Lola Run (Lola rennt) (1998)BRun Silent Run Deep (1958)BRun of the Country, The (1995)BRunaway (1984)BRunaway Brain (1995) BRunaway Bride (1999)BRunaway Jury (2003)BRunaway Train (1985)BRunaways, The (2010)BRundown, The (2003)BRunner Runner (2013)BRunning Man, The (1987)BRunning Scared (1980)BRunning Scared (1986)BRunning Scared (2006)BRunning With Scissors (2006)BRunning on Empty (1988)BRush (1991)BRush (2013)BRush Hour (1998)BRush Hour 2 (2001)BRush Hour 3 (2007)BRushmore (1998)BRussia House, The (1990)B8Russians Are Coming, the Russians Are Coming, The (1966)B)Rust and Bone (De rouille et d'os) (2012)BRuthless People (1986)B#Ryuzo and the Seven Henchmen (2015)BS.F.W. (1994)BS.W.A.T. (2003)BSLC Punk! (1998)B!SORI: Voice from the Heart (2016)B0SUBWAYStories: Tales from the Underground (1997)BSabotage (1936)BSaboteur (1942)BSabrina (1954)BSabrina (1995)BSacrament, The (2013)B!Sacrifice (Zhao shi gu er) (2010)B-Sacrifice, The (Offret - Sacraficatio) (1986)BSafe (1995)BSafe (2012)BSafe Haven (2013)BSafe House (2012)BSafety Last! (1923)BSafety Not Guaranteed (2012)BSafety of Objects, The (2001)BSahara (2005)BSaint Ralph (2004)BSaint, The (1997)BSaints and Soldiers (2003)BSalaam Bombay! (1988)B"Salmon Fishing in the Yemen (2011)BISalo, or The 120 Days of Sodom (Salò o le 120 giornate di Sodoma) (1976)BSalt (2010)BSalton Sea, The (2002)BSalvador (1986)BSalvation Boulevard (2011)BSalvation, The (2014)B"Samouraï, Le (Godson, The) (1967)BSamsara (2011)B!Samurai Assassin (Samurai) (1965)B<Samurai Rebellion (Jôi-uchi: Hairyô tsuma shimatsu) (1967)BSan Andreas (2015)BSan Francisco (1936)BSand Pebbles, The (1966)BSandlot, The (1993)BSandpiper, The (1965)BSands of Iwo Jima (1949)BSandy Wexler (2017)B"Sanjuro (Tsubaki Sanjûrô) (1962)B)Sansho the Bailiff (Sanshô dayû) (1954)B?Santa Claus Is a Stinker (Le Père Noël est une ordure) (1982)BSanta Claus: The Movie (1985)BSanta Clause 2, The (2002)B-Santa Clause 3: The Escape Clause, The (2006)BSanta Clause, The (1994)BSanta Sangre (1989)BSanta's Little Helper (2015)BSapphire Blue (2014)BSarafina! (1992)BBSaragossa Manuscript, The (Rekopis znaleziony w Saragossie) (1965)B&Sarah Silverman: Jesus Is Magic (2005)BSatanic (2016)BSatin Rouge (2002)BSaturday Night Fever (1977)BSaturn 3 (1980)BSausage Party (2016)B(Savage Nights (Nuits fauves, Les) (1992)BSavages (2012)BSavages, The (2007)BSavannah Smiles (1982)BSave the Last Dance (2001)B(Saved by the Bell: Hawaiian Style (1992)BSaved! (2004)BSaving Christmas (2014)BSaving Face (2004)BSaving Grace (2000)BSaving Mr. Banks (2013)BSaving Private Ryan (1998)BSaving Santa (2013)B$Saving Silverman (Evil Woman) (2001)BSavior (1998)B
Saw (2003)B
Saw (2004)BSaw II (2005)BSaw III (2006)BSaw IV (2007)BSaw V (2008)BSaw VI (2009)B%Saw VII 3D - The Final Chapter (2010)BSay Anything... (1989)BSay It Isn't So (2001)BScalphunters, The (1968)BScanner Darkly, A (2006)BScanners (1981)BScaramouche (1952)BScarface (1932)BScarface (1983)BScarlet Letter, The (1995)BScary Movie (2000)BScary Movie 2 (2001)BScary Movie 3 (2003)BScary Movie 4 (2006)B8Scenes From a Marriage (Scener ur ett äktenskap) (1973)BScenes from a Mall (1991)B6Scenes from the Class Struggle in Beverly Hills (1989)BPScent of Green Papaya, The (Mùi du du xhan - L'odeur de la papaye verte) (1993)BScent of a Woman (1992)BSchindler's List (1993)BSchizopolis (1996)BSchlussmacher (2013)BSchool Daze (1988)BSchool Ties (1992)BSchool for Scoundrels (2006)B4School of Flesh, The (École de la chair, L') (1998)BSchool of Rock (2003)B4Science of Sleep, The (La science des rêves) (2006)BScooby-Doo (2002)B'Scooby-Doo 2: Monsters Unleashed (2004)B Scooby-Doo Goes Hollywood (1979)B"Scooby-Doo! Abracadabra-Doo (2010)B,Scooby-Doo! Curse of the Lake Monster (2010)B,Scooby-Doo! and the Loch Ness Monster (2004)B(Scooby-Doo! and the Samurai Sword (2009)BScoop (2006)BScorched (2003)BScore, The (2001)BScorpio (1973)BScotland, Pa. (2001)B"Scott Pilgrim vs. the World (2010)BScout, The (1994)B,Scouts Guide to the Zombie Apocalypse (2015)BScratch (2001)BScream (1996)BScream 2 (1997)BScream 3 (2000)BScream 4 (2011)BScreamers (1995)BScrewed (2000)BScrooged (1988)B$Sea Inside, The (Mar adentro) (2004)BSea of Love (1989)BSeabiscuit (2003)BSearch Party (2014)BSearchers, The (1956)B"Searching for Bobby Fischer (1993)BSearching for Sugar Man (2012)BSeason of the Witch (2011)B6Sebastian Maniscalco: What's Wrong with People? (2012)BSecondhand Lions (2003)BSeconds (1966)BSecret Admirer (1985)BSecret Agent (1936)BSecret Agent, The (1996)B"Secret Ballot (Raye makhfi) (2001)BSecret Garden, The (1993)BSecret Life of Bees, The (2008)B'Secret Life of Walter Mitty, The (1947)B'Secret Life of Walter Mitty, The (2013)B Secret Life of Words, The (2005)B$Secret Lives of Dentists, The (2002)B)Secret Policeman's Other Ball, The (1982)BSecret Society (2002)BSecret Window (2004)B>Secret World of Arrietty, The (Kari-gurashi no Arietti) (2010)BSecret in Their Eyes (2015)B9Secret in Their Eyes, The (El secreto de sus ojos) (2009)BSecret of Kells, The (2009)BBSecret of My Succe$s, The (a.k.a. The Secret of My Success) (1987)BSecret of NIMH, The (1982)B Secret of Roan Inish, The (1994)BSecretariat (2010)BSecretary (2002)BSecrets & Lies (1996)B2Secrets of a Soul (Geheimnisse einer Seele) (1926)B4Seducing Doctor Lewis (Grande séduction, La) (2003)B See No Evil, Hear No Evil (1989)B&Seed of Chucky (Child's Play 5) (2004)B&Seeker: The Dark Is Rising, The (2007)BSeeking Justice (2011)B0Seeking a Friend for the End of the World (2012)BSeems Like Old Times (1980)BSelena (1997)B(Self-criticism of a Bourgeois Dog (2017)BSelf/less (2015)BSelfish Giant, The (2013)BSelma (2014)BSemi-Pro (2008)BSend Me No Flowers (1964)BSenna (2010)BSense and Sensibility (1995)BSenseless (1998)BSentinel, The (2006)B.Separation, A (Jodaeiye Nader az Simin) (2011)BSeptember (1987)B$Serbian Film, A (Srpski film) (2010)BSerendipity (2001)BSerenity (2005)BSergeant York (1941)BSerial Mom (1994)BSeries 7: The Contenders (2001)BSerious Man, A (2009)B#Serpent and the Rainbow, The (1988)BSerpico (1973)BServing Sara (2002)B;Serving in Silence: The Margarethe Cammermeyer Story (1995)BSession 9 (2001)B%Sessions, The (Surrogate, The) (2012)BSet It Off (1996)BSeve (2014)BSeven (a.k.a. Se7en) (1995)B&Seven Brides for Seven Brothers (1954)BSeven Days in May (1964)BSeven Pounds (2008)BSeven Psychopaths (2012)B+Seven Samurai (Shichinin no samurai) (1954)BSeven Sisters (2017)BSeven Up! (1964)BSeven Year Itch, The (1955)BSeven Years in Tibet (1997)B#Seven-Per-Cent Solution, The (1976)B/Seventh Seal, The (Sjunde inseglet, Det) (1957)BSeventh Sign, The (1988)BSeventh Son (2014)BSeverance (2006)BSex Drive (2008)BSex Ed (2014)BSex Tape (2014)B'Sex and Lucia (Lucía y el sexo) (2001)BSex and the City (2008)BSex and the City 2 (2010)BSex, Drugs & Taxation (2013)BSex, Lies, and Videotape (1989)BSexy Beast (2000)BSgt. Bilko (1996)BShadow Conspiracy (1997)BShadow Dancer (2012)BShadow World (2016)BShadow of a Doubt (1943)BShadow of the Thin Man (1941)BShadow of the Vampire (2000)BShadow, The (1994)BShadowlands (1993)BShadows and Fog (1991)BShaft (1971)BShaft (2000)BShaggy D.A., The (1976)BShaggy Dog, The (1959)BShaggy Dog, The (2006)B!Shake Hands with the Devil (2007)BShakes the Clown (1992)BShakespeare Behind Bars (2005)BShakespeare in Love (1998)BShall We Dance (1937)BShall We Dance? (2004)B(Shall We Dance? (Shall We Dansu?) (1996)BShallow Grave (1994)BShallow Hal (2001)BShame (2011)BShame (Skammen) (1968)BShampoo (1975)BShane (1953)BShanghai Kiss (2007)BShanghai Knights (2003)BShanghai Noon (2000)BShanghai Surprise (1986)B4Shanghai Triad (Yao a yao yao dao waipo qiao) (1995)B'Shaolin Soccer (Siu lam juk kau) (2001)B#Shaolin Temple (Shao Lin si) (1976)BShape of Things, The (2003)BShark Night 3D (2011)BShark Tale (2004)BSharknado (2013)BSharknado 3: Oh Hell No! (2015)B#Sharknado 4: The 4th Awakens (2016)BSharkwater (2006)BShattered (1991)BShattered Glass (2003)BShaun of the Dead (2004)BShaun the Sheep Movie (2015)B Shawshank Redemption, The (1994)BShe Wore a Yellow Ribbon (1949)BShe's All That (1999)BShe's Gotta Have It (1986)BShe's Having a Baby (1988)BShe's Out of Control (1989)BShe's Out of My League (2010)BShe's So Lovely (1997)BShe's the Man (2006)BShe's the One (1996)BShe-Devil (1989)BSheena (1984)BShelter (2007)BSheltering Sky, The (1990)BShenandoah (1965)B#Shepherd: Border Patrol, The (2008)B!Sherlock - A Study in Pink (2010)BSherlock Holmes (2009)B3Sherlock Holmes and Dr. Watson: Acquaintance (1979)B,Sherlock Holmes and the Secret Weapon (1942)B)Sherlock Holmes: A Game of Shadows (2011)B'Sherlock Holmes: Dressed to Kill (1946)B'Sherlock Holmes: Terror by Night (1946)B*Sherlock Holmes: The Woman in Green (1945)BSherlock Jr. (1924)B%Sherlock: The Abominable Bride (2016)BSherryBaby (2006)BShiloh (1997)BShin Godzilla (2016)BShine (1996)BShine a Light (2008)BShining Through (1992)BShining, The (1980)BShip of Fools (1965)BShipping News, The (2001)BShiri (Swiri) (1999)BShock Corridor (1963)BShogun Assassin (1980)BShoot 'Em Up (2007)BShooter (2007)B.Shooting Dogs (a.k.a. Beyond the Gates) (2005)BShooting Fish (1997)BShootist, The (1976)B"Shop Around the Corner, The (1940)BShopgirl (2005)BShort Circuit (1986)BShort Circuit 2 (1988)BShort Cuts (1993)B=Short Film About Killing, A (Krótki film o zabijaniu) (1988)B8Short Film About Love, A (Krótki film o milosci) (1988)BShort Term 12 (2013)BShortbus (2006)BShot Caller (2017)BShot in the Dark, A (1964)BShotgun Stories (2007)BShow Boat (1951)B$Show Me Love (Fucking Åmål) (1998)BShower (Xizao) (1999)BShowgirls (1995)BShowtime (2002)BShrek (2001)BShrek 2 (2004)B<Shrek Forever After (a.k.a. Shrek: The Final Chapter) (2010)BShrek the Halls (2007)BShrek the Third (2007)BShrink (2009)BShrooms (2007)BShut Up & Sing (2006)BShutter Island (2010)BSiam Sunset (1999)BSibling Rivalry (1990)BSicario (2015)BSicko (2007)BSid and Nancy (1986)BSide Effects (2013)BSide by Side (2012)BSidekicks (1992)BSidewalks of New York (2001)BSidewalls (Medianeras) (2011)BSideways (2004)BSiege, The (1998)BSightseers (2012)BSign of Four, The (1987)BSignal, The (2007)BSignal, The (2014)BSigns (2002)BSilence (2016)B Silence of the Lambs, The (1991)BSilence, The (Tystnaden) (1963)BSilent Hill (2006)B!Silent Hill: Revelation 3D (2012)BSilent Movie (1976)B!Silent Night, Deadly Night (1984)BSilent Running (1972)BSilk Stockings (1957)BSilkwood (1983)B3Silver Bullet (Stephen King's Silver Bullet) (1985)BSilver Linings Playbook (2012)BSilver Spoon (2014)BSilver Streak (1976)BSilverado (1985)BSimon Birch (1998)BSimon Sez (1999)BSimone (S1m0ne) (2002)BSimpatico (1999)BSimple Plan, A (1998)BSimple Twist of Fate, A (1994)BSimple Wish, A (1997)BSimply Irresistible (1999)BSimpsons Movie, The (2007)B)Simpsons: The Longest Daycare, The (2012)BSin City (2005)B#Sin City: A Dame to Kill For (2014)BSin Nombre (2009)B&Sinbad and the Eye of the Tiger (1977)B'Sinbad: Legend of the Seven Seas (2003)BSing (2016)BSing Street (2016)BSingin' in the Rain (1952)B'Single Girl, A (Fille seule, La) (1995)BSingle Man, A (2009)BSingle White Female (1992)BSingles (1992)BSinister (2012)BSintel (2010)BSirens (1994)BSister Act (1992)B&Sister Act 2: Back in the Habit (1993)B/Sisterhood of the Traveling Pants 2, The (2008)B-Sisterhood of the Traveling Pants, The (2005)BSisters (1973)BSisters (2015)BSisters (Syostry) (2001)BSitter, The (2011)BSix Days Seven Nights (1998)B Six Degrees of Separation (1993)BSix-String Samurai (1998)BSixteen Candles (1984)BSixth Sense, The (1999)BSkeleton Key, The (2005)BSki School (1991)BSkin Deep (1989)B/Skin I Live In, The (La piel que habito) (2011)BSkipped Parts (2000)BSkulls, The (2000)B,Sky Captain and the World of Tomorrow (2004)B'Sky Crawlers, The (Sukai kurora) (2008)BSky High (2003)BSky High (2005)BSkyfall (2012)BSkyline (2010)BSlacker (1991)BSlackers (2002)BSlammin' Salmon, The (2009)BSlap Shot (1977)BSlasher (2004)BSlaughterhouse-Five (1972)BSleepaway Camp (1983)BSleeper (1973)BSleepers (1996)BSleeping Beauty (1959)BSleeping with the Enemy (1991)BSleepless in Seattle (1993)BSleepwalkers (1992)BSleepy Hollow (1999)BSleuth (1972)BSleuth (2007)BSliding Doors (1998)BSling Blade (1996)BSlither (2006)BSliver (1993)BSlow Learners (2015)BSlow West (2015)B Slumber Party Massacre II (1987)B!Slumber Party Massacre III (1990)B"Slumber Party Massacre, The (1982)BSlumdog Millionaire (2008)B"Slums of Beverly Hills, The (1998)BSmall Soldiers (1998)BSmall Time Crooks (2000)BSmart People (2008)BSmashed (2012)BSmiley's People (1982)B$Smiling Fish and Goat on Fire (1999)BSmilla's Sense of Snow (1997)BSmoke (1995)BSmoke Signals (1998)BSmokey and the Bandit (1977)BSmokey and the Bandit II (1980)B Smokey and the Bandit III (1983)BSmokin' Aces (2006)BSmooth Talk (1985)BSmurfs 2, The (2013)BSmurfs, The (2011)BSnake Eyes (1998)BSnake Pit, The (1948)B4Snake in the Eagle's Shadow (Se ying diu sau) (1978)BSnakes on a Plane (2006)BSnapper, The (1993)BSnatch (2000)BSnatched (2017)BSneakers (1992)BSniper (1993)BSnipes (2001)BSnitch (2013)BSnow Angels (2007)BSnow Day (2000)BSnow Dogs (2002)BSnow Falling on Cedars (1999)BSnow Walker, The (2003)BSnow White (1916)B"Snow White and the Huntsman (2012)B&Snow White and the Seven Dwarfs (1937)BSnowden (2016)B#Snowflake, the White Gorilla (2011)BSnowman, The (1982)BSnowpiercer (2013)B'Snowtown (Snowtown Murders, The) (2011)B#So I Married an Axe Murderer (1993)BSoapdish (1991)BSocial Network, The (2010)BSoft Fruit (1999)BSolace (2015)BSolaris (2002)BSolaris (Solyaris) (1972)BSolas (1999)BSoldier (1998)BSoldier's Story, A (1984)BSolo (1996)BSolo: A Star Wars Story (2018)BSoloist, The (2009)BSolyaris (1968)B'Some Folks Call It a Sling Blade (1993)B Some Guy Who Kills People (2011)BSome Kind of Wonderful (1987)BSome Like It Hot (1959)BSome Mother's Son (1996)BSomebody to Love (1994)BSomeone Like You (2001)BSomeone Marry Barry (2014)BSomeone to Watch Over Me (1987)BSomers Town (2008)BSomething Borrowed (2011)BSomething New (2006)B&Something Wicked This Way Comes (1983)BSomething Wild (1986)BSomething to Talk About (1995)BSomething's Gotta Give (2003)BSomewhere (2010)BSomewhere in Time (1980)BSommersby (1993)BSon in Law (1993)BSon of Flubber (1963)BSon of God (2014)BSon of Rambow (2007)BSon of a Gun (2014)B.Son of the Bride (Hijo de la novia, El) (2001)BSon of the Mask (2005)BSon of the Sheik, The (1926)B.Son's Room, The (Stanza del figlio, La) (2001)BSonatine (Sonachine) (1993)BSong of Bernadette, The (1943)B0Song of the Little Road (Pather Panchali) (1955)BSong of the Sea (2014)BSong of the South (1946)BSong of the Thin Man (1947)BBSongs From the Second Floor (Sånger från andra våningen) (2000)BSons of the Desert (1933)BGSophie Scholl: The Final Days (Sophie Scholl - Die letzten Tage) (2005)BSophie's Choice (1982)B!Sorcerer's Apprentice, The (2010)B2Sorority Babes in the Slimeball Bowl-O-Rama (1988)BSorority Boys (2002)BSorority House Massacre (1986)B!Sorority House Massacre II (1990)BSorrow (2015)BSorry to Bother You (2018)BSorry, Wrong Number (1948)BSoul Food (1997)BSoul Man (1986)BSoul Plane (2004)BSoul Surfer (2011)BSound of Music, The (1965)BSound of My Voice (2011)BSound of Thunder, A (2005)BISound of the Mountain (Thunder of the Mountain, The) (Yama no oto) (1954)BSource Code (2011)BSource, The (1999)BSouth Pacific (1958)B+South Park: Bigger, Longer and Uncut (1999)B"South Park: Imaginationland (2008)BSouthbound (2016)BSouthland Tales (2006)BSouthpaw (2015)BSoylent Green (1973)BSpace Battleship Yamato (2010)BSpace Buddies (2009)BSpace Cowboys (2000)BSpace Jam (1996)BSpace Truckers (1996)BSpaceCamp (1986)BSpaceballs (1987)BSpaced Invaders (1990)B4Spacehunter: Adventures in the Forbidden Zone (1983)BSpanglish (2004)B3Spanish Apartment, The (L'auberge espagnole) (2002)BSpanish Prisoner, The (1997)BSpanking the Monkey (1994)BSpartacus (1960)BSpartan (2004)BSpawn (1997)BSpecial (2006)B1Special Day, A (Giornata particolare, Una) (1977)BSpecialist, The (1994)BSpecies (1995)BSpecies II (1998)BSpecies III (2004)BSpectre (2015)BSpeechless (1994)BSpeed (1994)BSpeed 2: Cruise Control (1997)BSpeed Racer (2008)BSpellbound (1945)BSpellbound (2002)BSpellbound (2011)BSphere (1998)BSpice World (1997)BSpider (2002)BSpider-Man (2002)BSpider-Man 2 (2004)BSpider-Man 3 (2007)B!Spiderwick Chronicles, The (2008)BSpies Like Us (1985)BSpiral (2007)BSpiral (2018)BSpirit Camp (2009)BSpirit, The (2008)B'Spirit: Stallion of the Cimarron (2002)B4Spirited Away (Sen to Chihiro no kamikakushi) (2001)BSpirits of the Dead (1968)BSpitfire Grill, The (1996)BSplash (1984)BSplendor in the Grass (1961)BSplice (2009)BSplinter (2008)BSplit (2017)B'SpongeBob SquarePants Movie, The (2004)BSpotlight (2015)BSpread (2009)BSpriggan (Supurigan) (1998)BSpring (2015)BSpring Forward (1999)BXSpring, Summer, Fall, Winter... and Spring (Bom yeoreum gaeul gyeoul geurigo bom) (2003)BSpun (2001)B
Spy (2015)BSpy Game (2001)BSpy Hard (1996)BSpy Kids (2001)B,Spy Kids 2: The Island of Lost Dreams (2002)BSpy Kids 3-D: Game Over (2003)BSpy Next Door, The (2010)B)Spy Who Came in from the Cold, The (1965)BSpy Who Loved Me, The (1977)BSquid and the Whale, The (2005)BSquirm (1976)B3St Trinian's 2: The Legend of Fritton's Gold (2009)BSt. Elmo's Fire (1985)BSt. Trinian's (2007)BSt. Vincent (2014)BStage Beauty (2004)BStage Door (1937)BStage Fright (1950)BStagecoach (1939)BStake Land (2010)BStakeout (1987)BStalag 17 (1953)BStalingrad (1993)BStalingrad (2013)BStalker (1979)BStan Helsing (2009)BStand Up Guys (2012)BStand and Deliver (1988)BStand by Me (1986)BStand, The (1994)BStander (2003)B(Standing in the Shadows of Motown (2002)BStandoff (2016)BStanley & Iris (1990)B*Stanley Kubrick: A Life in Pictures (2001)BStar Is Born, A (1937)BStar Is Born, A (1954)BStar Maps (1997)BStar Trek (2009)BStar Trek Beyond (2016)B&Star Trek II: The Wrath of Khan (1982)B*Star Trek III: The Search for Spock (1984)B$Star Trek IV: The Voyage Home (1986)BStar Trek Into Darkness (2013)B&Star Trek V: The Final Frontier (1989)B-Star Trek VI: The Undiscovered Country (1991)BStar Trek: First Contact (1996)BStar Trek: Generations (1994)BStar Trek: Insurrection (1998)BStar Trek: Nemesis (2002)B$Star Trek: The Motion Picture (1979)B0Star Wars: Episode I - The Phantom Menace (1999)B3Star Wars: Episode II - Attack of the Clones (2002)B3Star Wars: Episode III - Revenge of the Sith (2005)B)Star Wars: Episode IV - A New Hope (1977)B5Star Wars: Episode V - The Empire Strikes Back (1980)B1Star Wars: Episode VI - Return of the Jedi (1983)B1Star Wars: Episode VII - The Force Awakens (2015)B Star Wars: The Clone Wars (2008)BStar Wars: The Last Jedi (2017)B$Starcrash (a.k.a. Star Crash) (1978)BStardust (2007)BStardust Memories (1980)BStargate (1994)BStargate: Continuum (2008)BStarman (1984)BStarship Troopers (1997)B2Starship Troopers 2: Hero of the Federation (2004)BStarsky & Hutch (2004)BStarsuckers (2009)B&Start the Revolution Without Me (1970)BStarter for 10 (2006)BStartup.com (2001)BState Property 2 (2005)BState and Main (2000)BState of Grace (1990)BState of Play (2009)BStaten Island (2009)BStation Agent, The (2003)BStay (2005)BStay Alive (2006)BStay Tuned (1992)BStaying Alive (1983)BSteal Big, Steal Little (1995)BStealing Beauty (1996)BStealing Harvard (2002)BStealing Home (1988)B%Stealing Rembrandt (Rembrandt) (2003)BStealth (2005)B$Steam of Life (Miesten vuoro) (2010)B&Steam: The Turkish Bath (Hamam) (1997)BSteamboat Bill, Jr. (1928)BSteamboat Willie (1928)BSteamboy (Suchîmubôi) (2004)BSteel (1997)BSteel Magnolias (1989)B'Stefan Zweig: Farewell to Europe (2016)B5Steins;Gate the Movie: The Burden of Déjà vu (2013)B8Stendhal Syndrome, The (Sindrome di Stendhal, La) (1996)BStep Brothers (2008)BStep Into Liquid (2002)BStep Up (2006)BStep Up 2 the Streets (2008)BStepfather, The (1987)BStepford Wives, The (1975)BStepford Wives, The (2004)BStepmom (1998)BSteve Jobs (2015)B)Steve Jobs: The Man in the Machine (2015)BStevie (2002)BStick It (2006)BStigmata (1999)BStill Alice (2014)BStill Crazy (1998)B(Still Walking (Aruitemo aruitemo) (2008)BSting, The (1973)BStingray Sam (2009)BStir Crazy (1980)BStir of Echoes (1999)BStitch! The Movie (2003)B)Stoked: The Rise and Fall of Gator (2002)BStoker (2013)B-Stolen Children (Ladro di bambini, Il) (1992)BStolen Summer (2002)BStomp the Yard (2007)BStone (2010)BStone Reader (2002)BStoned (2005)BStonewall (2015)B Stoning of Soraya M., The (2008)BStop Making Sense (1984)B!Stop! Or My Mom Will Shoot (1992)BStop-Loss (2008)BStorks (2016)B%Story of Film: An Odyssey, The (2011)B%Story of O, The (Histoire d'O) (1975)BStory of Us, The (1999)B.Story of Women (Affaire de femmes, Une) (1988)BLStory of the Weeping Camel, The (Geschichte vom weinenden Kamel, Die) (2003)BStorytelling (2001)BStrada, La (1954)BStraight Outta Compton (2015)BStraight Story, The (1999)BStrange Brew (1983)B)Strange Circus (Kimyô na sâkasu) (2005)BStrange Days (1995)B(Strange Love of Martha Ivers, The (1946)BStrange Magic (2015)BStrange Wilderness (2008)BStrangeland (1998)BStranger Than Paradise (1984)BStranger in the House (1997)BStranger than Fiction (2006)BStranger, The (1946)BStrangers on a Train (1951)BStrangers with Candy (2005)BStrangers, The (2008)BStraw Dogs (1971)B3Strawberry and Chocolate (Fresa y chocolate) (1993)BStray Dog (Nora inu) (1949)BStreet Fighter (1994)BNStreet Fighter II: The Animated Movie (Sutorîto Faitâ II gekijô-ban) (1994)BStreet Kings (2008)B Streetcar Named Desire, A (1951)BStretch (2014)BStrictly Ballroom (1992)BStrictly Sexual (2008)B6Strike! (a.k.a. All I Wanna Do, The Hairy Bird) (1998)BStriking Distance (1993)BStripes (1981)BStriptease (1996)BStroszek (1977)BStuart Little (1999)BStuart Little 2 (2002)B(Stuart Little 3: Call of the Wild (2005)BStuart Saves His Family (1995)BStuck (2007)BStuck in Love (2012)BStuck on You (2003)BStunt Man, The (1980)BStupids, The (1996)BStyle Wars (1983)BSubUrbia (1997)BSubmarine (2010)BSubstitute, The (1996)BSuburban Commando (1991)BSubway (1985)BSucker Punch (2011)BSudden Death (1995)BSudden Impact (1983)BSuddenly (1954)BSuddenly, Last Summer (1959)BSuffragette (2015)BSugar & Spice (2001)BSugar Hill (1994)BSugar Town (1999)BSugarland Express, The (1974)B%Suicide Club (Jisatsu saakuru) (2001)BSuicide Kings (1997)BSuicide Squad (2016)BSukiyaki Western Django (2008)BSullivan's Travels (1941)BSully (2016)BSum of All Fears, The (2002)BSum of Us, The (1994)BSummer Catch (2001)BSummer Place, A (1959)BSummer Rental (1985)BSummer School (1987)B Summer Wars (Samâ wôzu) (2009)BSummer of Sam (1999)B'Summer's Tale, A (Conte d'été) (1996)BSun Alley (Sonnenallee) (1999)BSunflower (Xiang ri kui) (2005)BSunless (Sans Soleil) (1983)B$Sunrise: A Song of Two Humans (1927)B-Sunset Blvd. (a.k.a. Sunset Boulevard) (1950)BSunset Limited, The (2011)BSunset Park (1996)BSunshine (1999)BSunshine (2007)BSunshine Cleaning (2008)BSunshine State (2002)BSuper (2010)BSuper 8 (2011)BSuper High Me (2007)BSuper Mario Bros. (1993)BSuper Size Me (2004)BSuper Troopers (2001)BSuper, The (1991)BSuperFly (2018)BSuperbad (2007)BRSupercop (Police Story 3: Supercop) (Jing cha gu shi III: Chao ji jing cha) (1992)B.Supercop 2 (Project S) (Chao ji ji hua) (1993)BSuperfast! (2015)BSupergirl (1984)BSuperhero Movie (2008)BSuperman (1978)BSuperman II (1980)BSuperman III (1983)B'Superman IV: The Quest for Peace (1987)BSuperman Returns (2006)B&Superman/Batman: Public Enemies (2009)BSuperman/Doomsday (2007) BSupernova (2000)BSuperstar (1999)BSure Thing, The (1985)BSurf Nazis Must Die (1987)BSurf's Up (2007)B4Suriyothai (a.k.a. Legend of Suriyothai, The) (2001)BSurrogates (2009)BSurvive Style 5+ (2004)BSurviving Christmas (2004)BSurviving the Game (1994)BSurvivor (2015)BSuspect Zero (2004)BSuspicion (1941)BSuspiria (1977)BSuture (1993)BSwamp Thing (1982)B Swamp, The (Ciénaga, La) (2001)BSwan Princess, The (1994)BSwarm, The (1978)BSweeney Todd (2006)B5Sweeney Todd: The Demon Barber of Fleet Street (2007)BSweet Bird of Youth (1962)BSweet Charity (1969)BSweet Dreams (1985)BSweet Hereafter, The (1997)BSweet Home Alabama (2002)BSweet Liberty (1986)BSweet November (2001)BSweet Sixteen (2002)BSweet Smell of Success (1957)BSweet and Lowdown (1999)BSweetest Thing, The (2002)BSweetgrass (2009)BSweetie (1989)BSwelter (2014)BSwept Away (2002)BNSwept Away (Travolti da un insolito destino nell'azzurro mare d'Agosto) (1975)BSwept from the Sea (1997)BSwimfan (2002)BSwimming Pool (2003)BSwimming with Sharks (1995)BSwing Kids (1993)BSwing Time (1936)BSwingers (1996)BSwiss Army Man (2016)BSwiss Family Robinson (1960)BSwitch, The (2010)BSwitchback (1997)B0Sword Art Online The Movie: Ordinal Scale (2017)BSword in the Stone, The (1963)B-Sword of Doom, The (Dai-bosatsu tôge) (1966)BSword of Vengeance (2014)B+Sword of the Beast (Kedamono no ken) (1965)B5Sword of the Stranger (Sutorejia: Mukô hadan) (2007)BSwordfish (2001)BSydney (Hard Eight) (1996)BSydney White (2007)BSylvia (2003)B7Sympathy for Mr. Vengeance (Boksuneun naui geot) (2002)BSympathy for the Devil (1968)B Sympathy for the Underdog (1971)BSynecdoche, New York (2008)BSyriana (2005)BSyrup (2013)B$T-Rex: Back to the Cretaceous (1998)B!T2 3-D: Battle Across Time (1996)BT2: Trainspotting (2017)BTHX 1138 (1971)B*TMNT (Teenage Mutant Ninja Turtles) (2007)BTV Set, The (2006)BTable 19 (2017)BTabu (2012)BTadpole (2002)BATae Guk Gi: The Brotherhood of War (Taegukgi hwinalrimyeo) (2004)B
Tag (2018)BTailor of Panama, The (2001)BUTake Aim at the Police Van (Sono gosôsha wo nerae: 'Jûsangô taihisen' yori) (1960)BTake Me Home Tonight (2011)BTake Shelter (2011)B!Take This Job and Shove It (1981)BTake This Waltz (2011)BTake the Lead (2006)BTake the Money and Run (1969)BTaken (2008)BTaken 2 (2012)BTaken 3 (2015)BTakers (2010)BTaking Care of Business (1990)BTaking Lives (2004)BTaking Sides (2001)BTaking Woodstock (2009)B"Taking of Pelham 1 2 3, The (2009)B*Taking of Pelham One Two Three, The (1974)BTale of Despereaux, The (2008)B>Tale of Princess Kaguya, The (Kaguyahime no monogatari) (2013)BTale of Two Cities, A (1935)B2Tale of Two Sisters, A (Janghwa, Hongryeon) (2003)BTalent for the Game (1991)BTalented Mr. Ripley, The (1999)B7Tales from the Crypt Presents: Bordello of Blood (1996)B2Tales from the Crypt Presents: Demon Knight (1995)B)Tales from the Darkside: The Movie (1990)BTales from the Hood (1995)BTales of Manhattan (1942)BTalk Radio (1988)BTalk of the Town, The (1942)B#Talk to Her (Hable con Ella) (2002)BTall Guy, The (1989)BTall Man, The (2012)BTall Tale (1995)B2Talladega Nights: The Ballad of Ricky Bobby (2006)BTaming of the Shrew, The (1967)BTammy (2014)BTampopo (1985)BTangerine (2015)BTangerines (2013)BTangled (2010)BTangled Ever After (2012)BTango & Cash (1989)BTango (1998)BTanguy (2001)BTank Girl (1995)BTao of Steve, The (2000)BTape (2001)BTapeheads (1988)BTaps (1981)BTarantula (1955)BTarnation (2003)BTarzan (1999)BTarzan and the Lost City (1998)B'Taste of Cherry (Ta'm e guilass) (1997)B&Tattooed Life (Irezumi ichidai) (1965)BTaxi (1998)BTaxi (2004)BTaxi 2 (2000)BTaxi 3 (2003)BTaxi 4 (2007)BTaxi Driver (1976)BTaxi to the Dark Side (2007)BTea with Mussolini (1999)BTeacher's Pet (1958)BTeaching Mrs. Tingle (1999)B'Teahouse of the August Moon, The (1956)B!Team America: World Police (2004)BTears for Sale (2008)BTears of the Sun (2003)B
Ted (2012)BTed 2 (2015)BTeddy Bear (Mis) (1981)BTeen Wolf (1985)B#Teenage Mutant Ninja Turtles (1990)B#Teenage Mutant Ninja Turtles (2014)B>Teenage Mutant Ninja Turtles II: The Secret of the Ooze (1991)B'Teenage Mutant Ninja Turtles III (1993)B7Teenage Mutant Ninja Turtles: Out of the Shadows (2016)B4Teenage Mutant Ninja Turtles: Turtles Forever (2009)BTeeth (2007)B)Tekkonkinkreet (Tekkon kinkurîto) (2006)BTeknolust (2002)B*Tell No One (Ne le dis à personne) (2006)BTemple Grandin (2010)B Temptress Moon (Feng Yue) (1996)BTen Commandments, The (1956)BTen, The (2007)B)Tenacious D in The Pick of Destiny (2006)B"Tenant, The (Locataire, Le) (1976)BTenchi Muyô! In Love (1996)BTender Mercies (1983)BTenebre (1982)BTequila Sunrise (1988)BTerminal Velocity (1994)BTerminal, The (2004)B!Terminator 2: Judgment Day (1991)B)Terminator 3: Rise of the Machines (2003)BTerminator Genisys (2015)BTerminator Salvation (2009)BTerminator, The (1984)BTerms of Endearment (1983)BTerri (2011)B5Terrorist, The (a.k.a. Malli) (Theeviravaathi) (1998)BBTestament of Dr. Mabuse, The (Das Testament des Dr. Mabuse) (1933)BTetro (2009)B#Tetsuo, the Ironman (Tetsuo) (1988)B
Tex (1982)B0Texas - Doc Snyder hält die Welt in Atem (1993)BTexas Chainsaw 3D (2013)B%Texas Chainsaw Massacre 2, The (1986)B#Texas Chainsaw Massacre, The (1974)B#Texas Chainsaw Massacre, The (2003)B2Texas Chainsaw Massacre: The Beginning, The (2006)BfTexas Chainsaw Massacre: The Next Generation (a.k.a. The Return of the Texas Chainsaw Massacre) (1994)BTexas Rangers (2001)BThank You for Smoking (2006)BThat Awkward Moment (2014)BThat Darn Cat (1997)BThat Darn Cat! (1965)BThat Demon Within (2014)BThat Munchhausen (1979)BAThat Obscure Object of Desire (Cet obscur objet du désir) (1977)BThat Sugar Film (2014)BThat Thing You Do! (1996)BThat Touch of Mink (1962)BThat's Entertainment (1974)BThat's My Boy (2012)BThe 5th Wave (2016)BThe Accountant (2016)BThe Adderall Diaries (2015)B3The Adventures of Sherlock Holmes and Doctor WatsonBPThe Adventures of Sherlock Holmes and Doctor Watson: King of Blackmailers (1980)BRThe Adventures of Sherlock Holmes and Doctor Watson: The Hunt for the Tiger (1980)BQThe Adventures of Sherlock Holmes and Doctor Watson: The Treasures of Agra (1983)BIThe Adventures of Sherlock Holmes and Dr. Watson: Bloody Signature (1979)BVThe Adventures of Sherlock Holmes and Dr. Watson: The Hound of the Baskervilles (1981)BThe African Doctor (2016)BThe Alamo (2004)B The Amazing Screw-On Head (2006)BThe Amazing Spider-Man 2 (2014)BThe Angry Birds Movie (2016)BThe Artist (2011)BThe BFG (2016)B:The Barkley Marathons: The Race That Eats Its Young (2015)B#The Beast of Hollow Mountain (1956)BThe Beguiled (2017)BThe Big Bus (1976)BThe Big Sick (2017)BThe Blue Lagoon (1949)BThe Blue Planet (2001)BThe Book of Life (2014)BThe Boss (2016)BThe Boss Baby (2017)BThe Boy Next Door (2015)BThe Boy and the Beast (2015)BThe Brain (1969)BThe Brand New Testament (2015)B The Bremen Town Musicians (1969)BThe Brothers Grimsby (2016)BThe Butterfly Effect (2004)B*The Butterfly Effect 3: Revelations (2009)B"The Cave of the Golden Rose (1991)BThe Chumscrubber (2005)BThe Circle (2016)BThe Clapper (2018)BThe Cloverfield Paradox (2018)BThe Cobbler (2015)BThe Commuter (2018)BThe Conjuring 2 (2016)B The Count of Monte Cristo (2002)BThe Crew (2016)BThe D Train (2015)BThe DUFF (2015)BThe Danish Girl (2015)BThe Dark Tower (2017)BThe Dark Valley (2014)BThe Darkest Minds (2018)BThe Deadly Bees (1967)BThe Death of Louis XIV (2016)BThe Death of Stalin (2017)BThe Devil's Advocate (1997)BThe Devil's Candy (2015)BThe Diary of Anne Frank (1959)BThe Diary of Anne Frank (2009)BThe Disaster Artist (2017)BThe Do-Over (2016)BThe Dressmaker (2015)BThe Drop (2014)BThe Duke of Burgundy (2014)BThe Edge of Seventeen (2016)BThe Editor (2015)BThe Electric Hotel (1908)BThe Emoji Movie (2017)BThe Emperor's Club (2002)BThe End of the Tour (2015)BThe Escort (2015)BThe Even Stevens Movie (2003)BThe Expendables 3 (2014)BThe Eye: Infinity (2005)BThe FP (2012)BThe Face of an Angel (2015)B!The Falcon and the Snowman (1985)BThe Fate of the Furious (2017)BThe Fault in Our Stars (2014)BThe Final Girls (2015)BThe Finest Hours (2016)B-The Flash 2 - Revenge of the Trickster (1991)BThe Fool (2014)BThe Forbidden Dance (1990)BThe Forgotten Space (2010)BThe Founder (2016)BThe Fox and the Hound 2 (2006)B!The Fundamentals of Caring (2016)BThe Gallows (2015)BThe Gambler (2014)BThe Gift (2015)BThe Girl on the Train (2016)B"The Girl with All the Gifts (2016)BThe Girls (1961)B'The Godfather Trilogy: 1972-1990 (1992)B"The Golden Voyage of Sinbad (1973)BThe Good Boy (2016)BThe Good Dinosaur (2015)BThe Gracefield Incident (2015)BThe Grandmother (1970)BThe Great Hypnotist (2014)BThe Great Raid (2005)BThe Great Train Robbery (1903)BThe Great Train Robbery (1978)BThe Greatest Showman (2017)BThe Green Inferno (2014)BThe Green Prince (2014)BThe Hairdresser (2010)BThe Handmaiden (2016)BThe Hateful Eight (2015)BThe Hero (2017)BThe Hitman's Bodyguard (2017)B0The Hobbit: The Battle of the Five Armies (2014)B$The Hound of the Baskervilles (1988)BThe House (2017)BThe Hundred-Foot Journey (2014)BThe Hunger (1983)BThe Hunger Games (2012)B&The Hunger Games: Catching Fire (2013)B,The Hunger Games: Mockingjay - Part 1 (2014)B,The Hunger Games: Mockingjay - Part 2 (2015)BThe Hungover Games (2014)B The Huntsman Winter's War (2016)BThe Idolmaker (1980)BThe Imitation Game (2014)B&The Importance of Being Earnest (1952)BThe Infiltrator (2016)BThe Intern (2015)BThe Interview (2014)BThe Island (2006)B The Jane Austen Book Club (2007)B4The Jinx: The Life and Deaths of Robert Durst (2015)BThe Jungle Book (2016)B!The Lair of the White Worm (1988)BThe Last Five Years (2014)BThe Last Witch Hunter (2015)BThe Legend of Tarzan (2016)BThe Lego Batman Movie (2017)BThe Lego Movie (2014)BThe Little Prince (2015)B&The Little World of Don Camillo (1952)BThe Lobster (2015)BThe Loft (2014)BThe Longest Ride (2015)BThe Longest Week (2014)B%The Lord's Lantern in Budapest (1999)BThe Lost Room (2006)BThe Love Bug (1997)BThe Lovers (2015)BThe Machinist (2004)B3The Madagascar Penguins in a Christmas Caper (2005)BThe Magic Ring (1982)BThe Magician (1958)BThe Magnificent Ruffians (1979)BThe Magnificent Seven (2016)BThe Maid's Room (2014)BThe Malibu Bikini Shop (1986)B%The Man Who Killed Don Quixote (2018)B The Man Who Knew Infinity (2016)BThe Man from Nowhere (2010)BThe Man from U.N.C.L.E. (2015)BThe Man in the Moon (1991)BThe Martian (2015)BThe Meddler (2016)BThe Meyerowitz Stories (2017)BThe Monkey King (1964)BThe Mule (2014)BThe Mummy (2017)BThe Natural Love (1996)BThe Neon Demon (2016)BThe Nice Guys (2016)BThe Night Before (1988)BThe Night Before (2015)B'The Night Is Short, Walk on Girl (2017)B%The Nut Job 2: Nutty by Nature (2017)BThe OABThe Odyssey (1997)BThe Opposite Sex (2014)BThe Overnight (2015)BThe Pacific (2010)BThe Perfect Guy (2015)B The Plague of the Zombies (1966)BThe Players Club (1998)BThe Post (2017)BThe Prime Gig (2000)B!The Professional: Golgo 13 (1983)BThe Pumaman (1980)B"The Punisher: Dirty Laundry (2012)BThe Purge: Election Year (2016)BThe Purple Sea (2009)BThe Putin Interviews (2017)BThe Queen (2006)BThe Quiet Family (1998)B*The Rabbi's Cat (Le chat du rabbin) (2011)BThe Raid 2: Berandal (2014)BThe Raid: Redemption (2011)BThe Red Turtle (2016)B The Return of Don Camillo (1953)BThe Revenant (2015)BThe Ridiculous 6 (2015)BThe Road Within (2014)BBThe Rocky Horror Picture Show: Let's Do the Time Warp Again (2016)BThe Runner (2015)BThe Salt of the Earth (2014)BThe Scorpion King (2002)B,The Second Best Exotic Marigold Hotel (2015)B%The Second Renaissance Part II (2003)BThe Secret Life of Pets (2016)BThe Shallows (2016)BThe Shape of Water (2017)BThe Shining (1997)BThe Silence of the Hams (1994)BThe Skeleton Twins (2014)BThe Space Between Us (2016)BThe Spectacular Now (2013)BThe Spiral Staircase (1945)BThe Spirit of Christmas (1995)BThe Square (2017)BThe Squeeze (2015)B%The Stanford Prison Experiment (2015)B$The Star Wars Holiday Special (1978)BThe Survivalist (2015)B#The Tale of the Bunny Picnic (1986)B"The Taming of the Scoundrel (1980)BThe Theory of Everything (2014)BThe Thief (1997)BThe Thinning (2016)B$The Town that Dreaded Sundown (2014)B4The True Memoirs of an International Assassin (2016)BThe Trust (2016)B/The Unauthorized Saved by the Bell Story (2014)BThe Voices (2014)BThe Void (2016)BThe Wailing (2016)BThe Wait (2015)BThe Walk (2015)BThe Way (2010)BThe Wedding Ringer (2015)BThe Wild One (1953)BThe Witch (2015)BThe Wolfpack (2015)BThe Wooden Horse (1950)BThe Year My Voice Broke (1987)BThelma & Louise (1991)BThem (Ils) (2006)BThem! (1954)BThemroc (1973)BTheodore Rex (1995)BThere Once Was a Dog (1982)BThere Will Be Blood (2007)BThere Will Come a Day (2013)B#There's Something About Mary (1998)B&Theremin: An Electronic Odyssey (1993)BThesis (Tesis) (1996)BThey (2002)B;They Call Me Bruce? (a.k.a. A Fistful of Chopsticks) (1982)BThey Call Me Trinity (1971)BThey Came Together (2014)BThey Drive by Night (1940)BThey Live (1988)BThey Might Be Giants (1971)B%They Shoot Horses, Don't They? (1969)BThief (1981)BThief of Bagdad, The (1924)BThief of Bagdad, The (1940)B&Thief of Paris, The (Le voleur) (1967)BThieves (Voleurs, Les) (1996)BThin Blue Line, The (1988)B)Thin Line Between Love and Hate, A (1996)BThin Man Goes Home, The (1945)BThin Man, The (1934)BThin Red Line, The (1998)BThing Called Love, The (1993)B$Thing from Another World, The (1951)B Thing with Two Heads, The (1972)BThing, The (1982)BThing, The (2011)B%Thing: Terror Takes Shape, The (1998)B1Things You Can Tell Just by Looking at Her (2000)B.Things to Do in Denver When You're Dead (1995)BThink Like a Man (2012)BThink Like a Man Too (2014)BThinner (1996)BThird Man, The (1949)BThird Miracle, The (1999)BThirst (Bakjwi) (2009)BThirteen (2003)BGThirteen Conversations About One Thing (a.k.a. 13 Conversations) (2001)BThirteen Days (2000)B/Thirteen Ghosts (a.k.a. Thir13en Ghosts) (2001)BThirteenth Floor, The (1999)B/Thirty-Two Short Films About Glenn Gould (1993)BThis Boy's Life (1993)B!This Film Is Not Yet Rated (2006)BThis Is 40 (2012)BThis Is England (2006)BThis Is My Father (1998)BThis Is Spinal Tap (1984)B This Is Where I Leave You (2014)BThis Is the End (2013)BThis Island Earth (1955)BThis Means War (2012)BThis Must Be the Place (2011)B!This Property is Condemned (1966)BThis So-Called Disaster (2003)B%This World, Then the Fireworks (1997)BThomas Crown Affair, The (1968)BThomas Crown Affair, The (1999)BThor (2011)BThor: Ragnarok (2017)BThor: The Dark World (2013)BThoroughly Modern Millie (1967)BThose Happy Days (2006)B5Those Magnificent Men in Their Flying Machines (1965)BThousand Acres, A (1997)BThousand Clowns, A (1965)BThousand Words, A (2012)B0Three Billboards Outside Ebbing, Missouri (2017)B/Three Burials of Melquiades Estrada, The (2006)BThree Caballeros, The (1945)B0Three Colors: Blue (Trois couleurs: Bleu) (1993)B0Three Colors: Red (Trois couleurs: Rouge) (1994)B/Three Colors: White (Trzy kolory: Bialy) (1994)B6Three Days of the Condor (3 Days of the Condor) (1975)BThree Faces of Eve, The (1957)BThree Fugitives (1989)BThree Kings (1999)BThree Men and a Baby (1987)B6Three Men and a Cradle (3 hommes et un couffin) (1985)B"Three Men and a Little Lady (1990)BThree Musketeers, The (1948)BThree Musketeers, The (1973)BThree Musketeers, The (1993)BThree Musketeers, The (2011)BThree O'Clock High (1987)B0Three Outlaw Samurai (Sanbiki no samurai) (1964)BThree Stooges, The (2012)BThree Wishes (1995)B Three from Prostokvashino (1978)BThree to Tango (1999)BThreesome (1994)BThrill of It All, The (1963)B%Throne of Blood (Kumonosu jô) (1957)B2Through a Glass Darkly (Såsom i en spegel) (1961)B!Throw Momma from the Train (1987)BThumbelina (1994)BThumbsucker (2005)BThunderball (1965)BThunderbirds (2004)B Thunderbolt and Lightfoot (1974)BThursday (1998)BTiMER (2009)BTickling Giants (2017)BTideland (2005)B*Tie Me Up! Tie Me Down! (¡Átame!) (1990)B/Tie Xi Qu: West of the Tracks (Tiexi qu) (2003)BTiger Raid (2016)B3Tiger and the Snow, The (La tigre e la neve) (2005)BTigerland (2000)BTigger Movie, The (2000)BTightrope (1984)BTilt (2011)BTim's Vermeer (2013)BTime After Time (1979)BTime Bandits (1981)BTime Code (2000)BTime Lapse (2014)BTime Machine, The (1960)BTime Machine, The (2002)B,Time Masters (Maîtres du temps, Les) (1982)B#Time Out (L'emploi du temps) (2001)B Time Traveler's Wife, The (2009)B+Time of the Gypsies (Dom za vesanje) (1989)BTime to Kill, A (1996)BTimecop (1994)B'Timecrimes (Cronocrímenes, Los) (2007)BTimeline (2003)B Times of Harvey Milk, The (1984)BTin Cup (1996)B(Tin Drum, The (Blechtrommel, Die) (1979)BTin Man (2007)BTin Men (1987)B Tinker Tailor Soldier Spy (2011)B#Tinker, Tailor, Soldier, Spy (1979)BTitan A.E. (2000)BTitanic (1953)BTitanic (1997)BTitanica (1992)BTiticut Follies (1967)BTitus (1999)B)To Be and to Have (Être et avoir) (2002)BTo Be or Not to Be (1942)BTo Catch a Thief (1955)BTo Die For (1995)BTo Do List, The (2013)BTo Each His Own (1946)BTo End All Wars (2001)B&To Gillian on Her 37th Birthday (1996)B#To Grandmother's House We Go (1992)BTo Have and Have Not (1944)BTo Kill a Mockingbird (1962)BTo Live (Huozhe) (1994)BTo Live and Die in L.A. (1985)BTo Rome with Love (2012)BTo Sir with Love (1967)B7To Wong Foo, Thanks for Everything! Julie Newmar (1995)B!Together (Han ni Zai Yiki) (2002)BTogether (Tillsammans) (2000)B Tokyo Decadence (Topâzu) (1992)B)Tokyo Drifter (Tôkyô nagaremono) (1966)BTokyo Godfathers (2003)BTokyo Idols (2017)B'Tokyo Story (Tôkyô monogatari) (1953)BTokyo Tribe (2014)BTokyo! (2008)BTokyo-Ga (1985)BTom & Viv (1994)BTom Horn (1980)BTom Jones (1963)B$Tom Segura: Completely Normal (2014)BTom Segura: Disgraceful (2018)B!Tom Segura: Mostly Stories (2016)BTom and Huck (1995)B'Tom and Jerry: A Nutcracker Tale (2007)B(Tom and Jerry: Shiver Me Whiskers (2006)BTomb Raider (2018)BTomboy (2011)BTombstone (1993)BTomcats (2001)BTommy (1975)BTommy Boy (1995)BTomorrow (2015)BTomorrow Never Dies (1997)BTomorrowland (2015)BToni Erdmann (2016)BToo Big to Fail (2011)BDToo Funny to Fail: The Life and Death of The Dana Carvey Show (2017)BToo Late for Tears (1949)BToo Many Cooks (2014)BTooth Fairy (2010)BTooth Fairy 2 (2012)BTootsie (1982)BTop Five (2014)BTop Gun (1986)BTop Hat (1935)BTop Secret! (1984)BTopaz (1969)BTopkapi (1964)BTopo, El (1970)BTopsy-Turvy (1999)BTora! Tora! Tora! (1970)BTormented (1960)BTorn Curtain (1966)BTornado! (1996)BTorque (2004)BTortilla Soup (2001)BTotal Eclipse (1995)BTotal Recall (1990)BTotal Recall (2012)BTouch (1997)BTouch of Evil (1958)BTouch of Pink (2004)BTouch of Zen, A (Xia nu) (1971)BTouching the Void (2003)BTough Guys (1986)BTouki Bouki (1973)BTourist, The (2010)BTournament, The (2009)BTower Heist (2011)BTowering Inferno, The (1974)BTown & Country (2001)B0Town Called Panic, A (Panique au village) (2009)B4Town is Quiet, The (Ville est tranquille, La) (2000)BTown, The (2010)B@Toxic Avenger Part III: The Last Temptation of Toxie, The (1989)B"Toxic Avenger, Part II, The (1989)BToxic Avenger, The (1985)BToy Soldiers (1991)BToy Story (1995)BToy Story 2 (1999)BToy Story 3 (2010)BToy, The (1982)BToys (1992)BTracers (2015)BTracey Fragments, The (2007)BTrading Places (1983)BTraffic (2000)B Trail of the Pink Panther (1982)BTrailer Park Boys (1999)B#Train of Life (Train de vie) (1998)BTrain to Busan (2016)BTraining Day (2001)BTrainspotting (1996)BTrainwreck (2015)BTraitor (2008)BTrance (2013)BTransamerica (2005)BTranscendence (2014)BTransformers (2007)B&Transformers: Age of Extinction (2014)B%Transformers: Dark of the Moon (2011)B*Transformers: Revenge of the Fallen (2009)BTransformers: The Movie (1986)BTransporter 2 (2005)BTransporter 3 (2008)BTransporter, The (2002)BTranssiberian (2008)BTrapped (2002)BTrapped in Paradise (1994)BTrash Humpers (2009)BTravels of an Ant (1983)BTreasure Island (1950)BTreasure Island (2012)BTreasure Planet (2002)B(Treasure of the Sierra Madre, The (1948)BTree of Life, The (2011)BTrees Lounge (1996)BTrekkies (1997)BTremors (1990)B$Tremors 3: Back to Perfection (2001)B#Tremors 4: The Legend Begins (2004)BTremors II: Aftershocks (1996)B$Trevor Noah: African American (2013)BTrial and Error (1997)BTrial, The (Procès, Le) (1962)B%Trials of Henry Kissinger, The (2002)BTriangle (2009)BTrick 'r Treat (2007)BTrigger Effect, The (1996)BTrilogy of Terror (1975)B%Trinity and Sartana Are Coming (1972)BTrip to Bountiful, The (1985)B4Trip to the Moon, A (Voyage dans la lune, Le) (1902)BTrip, The (2002)BTrip, The (2010)BATriplets of Belleville, The (Les triplettes de Belleville) (2003)BTrippin' (1999)BTristan & Isolde (2006)B-Tristram Shandy: A Cock and Bull Story (2005)BTriumph of Love, The (2001)BTriumph of the Spirit (1989)B0Triumph of the Will (Triumph des Willens) (1934)BTroll 2 (1990)B'Troll Hunter, The (Trolljegeren) (2010)BTron (1982)BTron: Legacy (2010)BTroop Beverly Hills (1989)BTropic Thunder (2008)B.Trou, Le (Hole, The) (Night Watch, The) (1960)BTrouble in Paradise (1932)BTrouble with Harry, The (1955)BTroy (2004)BTrue Crime (1996)BTrue Crime (1999)BTrue Grit (1969)BTrue Grit (2010)BTrue Lies (1994)BTrue Romance (1993)BTrue Stories (1986)BTrue Story (2015)BTruly, Madly, Deeply (1991)BTruman Show, The (1998)BTrumbo (2015)BTrust (1990)BTruth (2015)B#Truth About Cats & Dogs, The (1996)BTruth About Charlie, The (2002)BTsotsi (2005)BTuck Everlasting (2002)BTucker & Dale vs Evil (2010)B$Tucker: The Man and His Dream (1988)BTuesdays with Morrie (1999)BTully (2000)BTupac: Resurrection (2003)BTurbo (2013)BTurbo Kid (2015)B#Turbo: A Power Rangers Movie (1997)BTurbulence (1997)B$Turkish Delight (Turks fruit) (1973)BTurner & Hooch (1989)BTurning Point, The (1977)BTurtle Diary (1985)BOTurtle Power: The Definitive History of the Teenage Mutant Ninja Turtles (2014)B8Turtles Can Fly (Lakposhtha hâm parvaz mikonand) (2004)BTusk (2014)BTuskegee Airmen, The (1995)BTuxedo, The (2002)BTwelfth Night (1996)BTwelve Chairs, The (1970)B)Twelve Monkeys (a.k.a. 12 Monkeys) (1995)BTwelve O'Clock High (1949)BBTwelve Tasks of Asterix, The (Les douze travaux d'Astérix) (1976)BTwilight (1998)BTwilight (2008)B1Twilight Saga: Breaking Dawn - Part 1, The (2011)B1Twilight Saga: Breaking Dawn - Part 2, The (2012)B"Twilight Saga: Eclipse, The (2010)B#Twilight Saga: New Moon, The (2009)B.Twilight Samurai, The (Tasogare Seibei) (2002)BTwilight Zone: The Movie (1983)B%Twin Dragons (Shuang long hui) (1992)BTwin Falls Idaho (1999)B$Twin Peaks: Fire Walk with Me (1992)BTwins (1988)BTwinsters (2015)BTwisted (2004)BTwister (1990)BTwister (1996)B"Two Brothers (Deux frères) (2004)BTwo Can Play That Game (2001)B1Two Days, One Night (Deux jours, une nuit) (2014)BTwo Escobars, The (2010)BTwo Family House (2000)BTwo Girls and a Guy (1997)BTwo Jakes, The (1990)BTwo Moon Junction (1988)BTwo Much (1995)B Two Mules for Sister Sara (1970)BTwo Night Stand (2014)BTwo Weeks Notice (2002)BTwo Women (Ciociara, La) (1960)BTwo for the Money (2005)BTwo if by Sea (1996)B)Tyler Perry's Daddy's Little Girls (2007)B/Tyler Perry's Diary of a Mad Black Woman (2005)B/Tyler Perry's I Can Do Bad All by Myself (2009)BTyrannosaur (2011)BU Turn (1997)BU-571 (2000)BU.S. Marshals (1998)B U.S. vs. John Lennon, The (2006)BU2: Rattle and Hum (1988)B
UHF (1989)B!Ugetsu (Ugetsu monogatari) (1953)B!Ugly Duckling and Me!, The (2006)BUgly Truth, The (2009)BUgly, The (1997)BUlee's Gold (1997)BUltimate Avengers (2006)BUltimate Avengers 2 (2006)BUltraviolet (2006)BUmberto D. (1952)BAUmbrellas of Cherbourg, The (Parapluies de Cherbourg, Les) (1964)BUnHung Hero (2013)B)Unbearable Lightness of Being, The (1988)B4Unbelievable Adventures of Italians in Russia (1974)BUnbreakable (2000)BUnbroken (2014)BUncle Buck (1989)BUncle Nino (2003)BUncommon Valor (1983)BUndead (2003)BUnder Siege (1992)B$Under Siege 2: Dark Territory (1995)BUnder Suspicion (2000)BUnder the Rainbow (1981)BUnder the Sand (2000)BUnder the Skin (2013)BUnder the Tuscan Sun (2003)BUndercover Blues (1993)BUndercover Brother (2002)BUndercurrent (1946)BUnderground (1995)BUnderneath (1995)B,Undertaking Betty (Plots with a View) (2002)BUndertow (2004)BUnderworld (1996)BUnderworld (2003)BUnderworld: Awakening (2012)BUnderworld: Blood Wars (2016)BUnderworld: Evolution (2006)B%Underworld: Rise of the Lycans (2009)BUndisputed (2002)B'Undisputed II: Last Man Standing (2006)B!Undisputed III: Redemption (2010)B!Unedited Footage of a Bear (2014)BUnfaithful (2002)BUnfaithfully Yours (1948)BUnfinished Business (2015)BUnfinished Life, An (2005)BUnforgettable (1996)B6Unforgettable Summer, An (Un été inoubliable) (1994)BUnforgiven (1992)BUnforgiven (2013)BUnforgiven, The (1960)BUnicorn City (2012)BpUnintentional Kidnapping of Mrs. Elfriede Ott, The (Die Unabsichtliche Entführung der Frau Elfriede Ott) (2010)BUninvited, The (2009)B3Union: The Business Behind Getting High, The (2007)BUnited 93 (2006)B#United States of Leland, The (2003)BUniversal Soldier (1992)B*Universal Soldier: Day of Reckoning (2012)B$Universal Soldier: The Return (1999)BUnknown (2006)BUnknown (2011)BUnknown Known, The (2013)BUnknown White Male (2005)BUnlawful Entry (1992)B Unleashed (Danny the Dog) (2005)B4Unprecedented: The 2000 Presidential Election (2002)BUnreasonable Man, An (2006)B"Unsinkable Molly Brown, The (1964)BUnstoppable (2010)BUnstrung Heroes (1995)BUntamed Heart (1993)BUnthinkable (2010)B9Until the End of the World (Bis ans Ende der Welt) (1991)B!Untitled Spider-Man Reboot (2017)BUntouchables, The (1987)BUntraceable (2008)B$Unvanquished, The (Aparajito) (1957)BUnzipped (1995)B	Up (2009)BUp Close and Personal (1996)BUp at the Villa (2000)BUp in the Air (2009)BUpside Down (2012)B.Upside Down: The Creation Records Story (2010)BUpside of Anger, The (2005)BUpstream Color (2013)BUptown Girls (2003)BUrban Cowboy (1980)BUrban Legend (1998)BUrban Legends: Final Cut (2000)BUsed People (1992)BUsual Suspects, The (1995)BV for Vendetta (2006)BV. I. Warshawski (1991)BV/H/S (2012)BV/H/S/2 (2013)BVacancy (2007)BVacation (2015)B"Vacations in Prostokvashino (1980)B"Vagabond (Sans toit ni loi) (1985)BValentine (2001)BValentine's Day (2010)B2Valerian and the City of a Thousand Planets (2017)BValet, The (La doublure) (2006)BValhalla Rising (2009)BValiant (2005)BValkyrie (2008)BValley Girl (1983)BValmont (1989)BVampire Hunter D (1985)B5Vampire Hunter D: Bloodlust (Banpaia hantâ D) (2000)BVampire in Brooklyn (1995)BDVampire in Venice (Nosferatu a Venezia) (Nosferatu in Venice) (1986)BVampires (1998)BVamps (2012)BVan Helsing (2004)BVanilla Sky (2001)BVanishing, The (1993)B!Vanishing, The (Spoorloos) (1988)BVanity Fair (2004)BVantage Point (2008)BVanya on 42nd Street (1994)BVarsity Blues (1999)BVatel (2000)B=Vegas Vacation (National Lampoon's Las Vegas Vacation) (1997)BVelvet Goldmine (1998)BVenom (1982)BVenus (2006)B.Venus in Fur (La Vénus à la fourrure) (2013)BVera Drake (2004)BVerdict, The (1982)BVeronica Guerin (2003)BVeronica Mars (2014)BVersus (2000)BVertical Limit (2000)BVertigo (1958)BVery Bad Things (1998)BVery Brady Sequel, A (1996)B*Very Harold & Kumar 3D Christmas, A (2011)BAVery Long Engagement, A (Un long dimanche de fiançailles) (2004)BVery Potter Musical, A (2009)BVery Potter Sequel, A (2010)BVibes (1988)BVice (2015)BVicky Cristina Barcelona (2008)BVictor Frankenstein (2015)BVictor/Victoria (1982)BVictoria (2015)B)Victory (a.k.a. Escape to Victory) (1981)BVideodrome (1983)B"Vie en Rose, La (Môme, La) (2007)BView from the Top (2003)BView to a Kill, A (1985)BVigilante Diaries (2016)BVillage of the Damned (1960)BVillage of the Damned (1995)BVillage, The (2004)BVillain (1971)B/Vincent Wants to Sea (Vincent will meer) (2010)BViolet & Daisy (2011)BViolets Are Blue... (1986)B$Vir Das: Abroad Understanding (2017)B*Virgin Spring, The (Jungfrukällan) (1960)BVirgin Suicides, The (1999)BViridiana (1961)BVirtuosity (1995)BVirunga (2014)BVirus (1999)B2Visions of Light: The Art of Cinematography (1992)BVisit, The (2000)BVisit, The (2015)BVisitor Q (Bizita Q) (2001)BVisitor, The (2007)B%Visitors, The (Visiteurs, Les) (1993)B9Vitelloni, I (a.k.a. The Young and the Passionate) (1953)BVoices from the List (2004)B.Voices of a Distant Star (Hoshi no koe) (2003)BVolcano (1997)BVolcano High (Whasango) (2001)BVolga - Volga (1938)BVolunteers (1985)BVolver (2006)BVon Ryan's Express (1965)B+Vovka in the Kingdom of Far Far Away (1965)BVow, The (2012)B&Voyage to the Bottom of the Sea (1961)B	W. (2008)BWALL·E (2008)BWackness, The (2008)B$Waco: The Rules of Engagement (1997)BWadjda (2012)BWag the Dog (1997)B2Wages of Fear, The (Salaire de la peur, Le) (1953)BWagons East (1994)BWait Until Dark (1967)BWaiting for 'Superman' (2010)BWaiting for Guffman (1996)BWaiting to Exhale (1995)BWaiting... (2005)BWaitress (2007)BWake Up, Ron Burgundy (2004)BWaking Life (2001)B,Waking Ned Devine (a.k.a. Waking Ned) (1998)B+Wal-Mart: The High Cost of Low Price (2005)B#Walk Among the Tombstones, A (2014)B%Walk Hard: The Dewey Cox Story (2007)BWalk in the Clouds, A (1995)BWalk of Shame (2014)BWalk on the Moon, A (1999)BWalk the Line (2005)BWalk to Remember, A (2002)BWalk, Don't Run (1966)BWalkabout (1971)BWalker (1987)BWalker, The (2007)BWalking Dead, The (1995)BWalking Tall (2004)BWalking and Talking (1996)BWalking with Monsters (2005)BWall Street (1987)B&Wall Street: Money Never Sleeps (2010)B7Wallace & Gromit in The Curse of the Were-Rabbit (2005)B&Wallace & Gromit: A Close Shave (1995)B6Wallace & Gromit: The Best of Aardman Animation (1996)B+Wallace & Gromit: The Wrong Trousers (1993)B9Wallace and Gromit in 'A Matter of Loaf and Death' (2008)BWalled In (2009)B)Waltz with Bashir (Vals im Bashir) (2008)BWanderlust (2012)BWanted (2008)BWar Dance (2007)BWar Dogs (2016)BWar Horse (2011)BWar Machine (2017)BWar Room (2015)BWar Room, The (1993)BWar Zone, The (1999)BWar and Peace (1956)BWar and Peace (2016)B%War for the Planet of the Apes (2017)BWar of the Roses, The (1989)BWar of the Worlds (2005)BWar of the Worlds, The (1953)BWar, The (1994)BWarGames (1983)BWarcraft (2016)BWard 13 (2003)BWarm Bodies (2013)BWarrior (2011)BWarrior's Way, The (2010)B8Warriors of Heaven and Earth (Tian di ying xiong) (2003)BWarriors, The (1979)BWasabi (2001)BWashington Square (1997)BWasp Woman, The (1959)B9Watch Out for the Automobile (Beregis avtomobilya) (1966)BWatch on the Rhine (1943)BWatch, The (2012)B Watcher in the Woods, The (1980)BWatcher, The (2000)BWatching the Detectives (2007)BWatchmen (2009)B-Watchmen: Tales of the Black Freighter (2009)BWater (2005)B+Water Horse: Legend of the Deep, The (2007)BWater for Elephants (2011)BWaterboy, The (1998)BWaterdance, The (1992)BWatermark (2014)BWatership Down (1978)BWaterworld (1995)BWave, The (Welle, Die) (2008)BWay Back, The (2010)B.Way South, The (De weg naar het zuiden) (1981)BWay We Were, The (1973)BQWay of the Dragon, The (a.k.a. Return of the Dragon) (Meng long guo jiang) (1972)BWay of the Gun, The (2000)BWay, Way Back, The (2013)BWaydowntown (2000)BWayne's World (1992)BWayne's World 2 (1993)BWe Are Marshall (2006)BWe Are What We Are (2013)BWe Bought a Zoo (2011)BWe Could Be King (2014)B!We Don't Live Here Anymore (2004)B"We Need to Talk About Kevin (2011)BWe Own the Night (2007)BWe Were Soldiers (2002)B%We're Back! A Dinosaur's Story (1993)BWe're No Angels (1955)BWe're No Angels (1989)BWe're the Millers (2013)BWeather Man, The (2005)BWeather Underground, The (2002)BWebmaster (1998)B$Wedding Banquet, The (Xi yan) (1993)BWedding Crashers (2005)BWedding Date, The (2005)BWedding Planner, The (2001)BWedding Singer, The (1998)B.Weekend (a.k.a. Le Week-end) (Week End) (1967)BWeekend at Bernie's (1989)BWeekend at Bernie's II (1993)BWeird Science (1985)BWeirdsville (2007)BWelcome to Collinwood (2002)BWelcome to Dongmakgol (2005)BWelcome to Happiness (2015)BWelcome to Me (2014)BWelcome to Mooseport (2004)BWelcome to Sarajevo (1997)BWelcome to Woop-Woop (1997)BWelcome to the Dollhouse (1995)BWelcome to the Jungle (2013)B8Welcome to the Sticks (Bienvenue chez les Ch'tis) (2008)BWendigo (2001)BWere the World Mine (2008)BVWes Craven's New Nightmare (Nightmare on Elm Street Part 7: Freddy's Finale, A) (1994)B"West Beirut (West Beyrouth) (1998)BWest Side Story (1961)BWestworld (1973)BWet Hot American Summer (2001)BWhale Rider (2002)BWhat About Bob? (1991)BWhat Dreams May Come (1998)B'What Ever Happened to Baby Jane? (1962)BWhat Happened Was... (1994)B"What Happened, Miss Simone? (2015)BWhat Happens in Vegas... (2008)BQWhat Have I Done to Deserve This? (¿Qué he hecho yo para merecer esto!!) (1984)BWhat If (2013)BWhat Lies Beneath (2000)BWhat Love Is (2007)B What Men Still Talk About (2011)BWhat Men Talk About (2010)B What Planet Are You From? (2000)B1What Time Is It There? (Ni neibian jidian) (2001)B What We Do in the Shadows (2014)BWhat Women Want (2000)BWhat a Girl Wants (2003)BFWhat the #$*! Do We Know!? (a.k.a. What the Bleep Do We Know!?) (2004)B+What to Expect When You're Expecting (2012)B"What's Eating Gilbert Grape (1993)B%What's Love Got to Do with It? (1993)BWhat's New, Pussycat (1965)BWhat's Up, Doc? (1972)BWhat's Up, Tiger Lily? (1966)BWhat's Your Number? (2011)BWhatever (1998)BWhatever It Takes (2000)BWhatever Works (2009)B%Wheels on Meals (Kuai can che) (1984)BWhen Harry Met Sally... (1989)BWhen Night Is Falling (1995)BWhen We First Met (2018)BWhen We Were Kings (1996)BWhen Worlds Collide (1951)BWhen You're Strange (2009)BWhen a Man Loves a Woman (1994)BWhen a Stranger Calls (1979)BWhen a Stranger Calls (2006)BEWhen a Woman Ascends the Stairs (Onna ga kaidan wo agaru toki) (1960)BWhen in Rome (2010)B4When the Cat's Away (Chacun cherche son chat) (1996)B4When the Levees Broke: A Requiem in Four Acts (2006)BWhere Eagles Dare (1968)BWhere the Buffalo Roam (1980)BWhere the Day Takes You (1992)BWhere the Heart Is (2000)BWhere the Money Is (2000)B Where the Wild Things Are (2009)BWhere's Marlowe? (1998)BWhile We're Young (2014)B3While You Were Fighting: A Thor Mockumentary (2016)BWhile You Were Sleeping (1995)BWhile the City Sleeps (1956)BWhip It (2009)BWhiplash (2013)BWhiplash (2014)BWhipped (2000)BWhiskey Tango Foxtrot (2016)B.Whisper of the Heart (Mimi wo sumaseba) (1995)BWhistleblower, The (2010)B+White Balloon, The (Badkonake sefid) (1995)BWhite Chicks (2004)BWhite Christmas (1954)BWhite Dog (1982)BWhite Fang (1991)BWhite Frog (2012)BWhite Heat (1949)BWhite House Down (2013)B White Hunter, Black Heart (1990)BWhite Man's Burden (1995)BWhite Men Can't Jump (1992)BWhite Nights (1985)BWhite Noise (2005)BWhite Oleander (2002)B*White Ribbon, The (Das weiße Band) (2009)BWhite Sands (1992)BWhite Squall (1996)B;White Sun of the Desert, The (Beloe solntse pustyni) (1970)BWhite Water Summer (1987)B(Who Am I (Kein System Ist Sicher) (2014)BWho Am I? (Wo shi shei) (1998)BWho Framed Roger Rabbit? (1988)BWho Is Cletis Tout? (2001)BWho Killed Chea Vichea? (2010)B#Who Killed the Electric Car? (2006)BWho'll Stop the Rain (1978)B&Who's Afraid of Virginia Woolf? (1966)BWho's Harry Crumb? (1989)BWho's That Girl? (1987)B&Who's That Knocking at My Door? (1967)BWhole Nine Yards, The (2000)BWhole Ten Yards, The (2004)BWhole Wide World, The (1996)B!Why Do Fools Fall In Love? (1998)B9Why Don't You Play In Hell? (Jigoku de naze warui) (2013)BWhy Him? (2016)BWhy Man Creates (1968)BWhy Stop Now (2012)BWhy We Fight (2005)BWicked Blood (2014)B!Wicked City (Yôjû toshi) (1987)BWicker Man, The (1973)BWicker Man, The (2006)BWicker Park (2004)BWide Awake (1998)B;Widow of St. Pierre, The (Veuve de Saint-Pierre, La) (2000)BWidows' Peak (1994)BWiener-Dog (2016)B#Wilbur Wants to Kill Himself (2002)BWild (2014)BWild America (1997)BWild Bill (1995)BWild Bunch, The (1969)BWild Card (2015)BWild Child (2008)BWild China (2008)BWild Hogs (2007)BWild Horses (2015)BWild Oats (2016)BWild Orchid (1990)B*Wild Parrots of Telegraph Hill, The (2003)B(Wild Reeds (Les roseaux sauvages) (1994)B+Wild Strawberries (Smultronstället) (1957)BWild Tales (2014)BWild Things (1998)BWild Wild West (1999)BWild at Heart (1990)BWild, The (2006)BWildcats (1986)BWillard (2003)B6William Shakespeare's A Midsummer Night's Dream (1999)B+William Shakespeare's Romeo + Juliet (1996)BWillow (1988)B*Willy Wonka & the Chocolate Factory (1971)BWilly/Milly (1986)BWimbledon (2004)BWin It All (2017)BWin Win (2011)B$Win a Date with Tad Hamilton! (2004)BWinchester '73 (1950)B%Wind Rises, The (Kaze tachinu) (2013)BWind River (2017)B'Wind That Shakes the Barley, The (2006)B6Wind Will Carry Us, The (Bad ma ra khahad bord) (1999)BWind and the Lion, The (1975)BWinds of the Wasteland (1936)BWindtalkers (2002)BWing Commander (1999)B.Winged Migration (Peuple migrateur, Le) (2001)B1Wings of Desire (Himmel über Berlin, Der) (1987)BAWings of Honneamise (Ôritsu uchûgun Oneamisu no tsubasa) (1987)BWings of the Dove, The (1997)BWings, Legs and Tails (1986)B7Winners and Sinners (Qi mou miao ji: Wu fu xing) (1983)BWinnie Pooh (1969)BWinnie the Pooh (2011)B$Winnie the Pooh Goes Visiting (1971)B%Winnie the Pooh and Tigger Too (1974)B+Winnie the Pooh and the Blustery Day (1968)B-Winnie the Pooh and the Day of Concern (1972)B)Winnie the Pooh and the Honey Tree (1966)BWinslow Boy, The (1999)B(Winter Light (Nattvardsgästerna) (1963)BWinter Passing (2005)BWinter in Prostokvashino (1984)BWinter's Bone (2010)BWinter's Tale (2014)BWisdom (1986)BWishmaster (1997)B
Wit (2001)BWitch Hunt (1999)BWitches of Eastwick, The (1987)BWitches, The (1990)B0Witchfinder General (Conquerer Worm, The) (1968)B+With Great Power: The Stan Lee Story (2012)BWith Honors (1994)BWith Six You Get Eggroll (1968)BHWith a Friend Like Harry... (Harry, un ami qui vous veut du bien) (2000)BWithnail & I (1987)BNWithout Warning (a.k.a. Alien Warning) (a.k.a. It Came Without Warning) (1980)BWithout a Clue (1988)BWithout a Paddle (2004)BWitness (1985)B"Witness for the Prosecution (1957)BWiz, The (1978)BWizard of Oz, The (1939)BWizard, The (1989)BWizards (1977)B*Wizards of Waverly Place: The Movie (2009)B%Wizards of the Lost Kingdom II (1989)BWolf (1994)B2Wolf Children (Okami kodomo no ame to yuki) (2012)BWolf Creek (2005)BWolf Man, The (1941)BWolf and Calf (1984)BWolf of Wall Street, The (2013)BWolfman, The (2010)BWolverine, The (2013)B5Woman Is a Woman, A (femme est une femme, Une) (1961)B3Woman Next Door, The (Femme d'à côté, La) (1981)B#Woman Under the Influence, A (1974)BWoman in Black, The (2012)BWoman in Gold (2015)B$Woman in Love (Rubbeldiekatz) (2011)BWoman in Red, The (1984)B(Woman in the Dunes (Suna no onna) (1964)BWoman of Paris, A (1923)BWoman of the Year (1942)BWoman on Top (2000)BWoman, The (2011)BWomen in Trouble (2009)B?Women on the 6th Floor, The (Les Femmes du 6ème Étage) (2010)B[Women on the Verge of a Nervous Breakdown (Mujeres al borde de un ataque de nervios) (1988)BWomen, The (1939)B Won't You Be My Neighbor? (2018)BWonder (2017)BWonder Boys (2000)BWonder Wheel (2017)BWonder Woman (2009)BWonder Woman (2017)BbWonderful, Horrible Life of Leni Riefenstahl, The (Macht der Bilder: Leni Riefenstahl, Die) (1993)BWonderland (1999)BWonderland (2003)BWoods, The (2006)BWoodsman, The (2004)BWordplay (2006)BWords, The (2012)BWorking Girl (1988)B#World According to Garp, The (1982)BWorld Is Not Enough, The (1999)BWorld Trade Center (2006)BWorld Traveler (2001)BWorld War Z (2013)B&World of Apu, The (Apur Sansar) (1959)BWorld of Glory (1991)B!World of Henry Orient, The (1964)BWorld of Tomorrow (2015)B&World on a Wire (Welt am Draht) (1973)BWorld's End, The (2013)B"World's Fastest Indian, The (2005)BWorld's Greatest Dad (2009)BWow! A Talking Fish! (1983)BWoyzeck (1979)BWraith, The (1986)BWrath of the Titans (2012)BWreck-It Ralph (2012)BWrestler, The (2008)BWrinkles (Arrugas) (2011)B!Wristcutters: A Love Story (2006)BWritten on the Wind (1956)BWrong (2012)B Wrong Arm of the Law, The (1963)BWrong Cops (2013)BWrong Man, The (1956)BWrong Turn (2003)BWrong Turn 2: Dead End (2007)BWrongfully Accused (1998)BWuthering Heights (1939)BWuthering Heights (1992)BWyatt Earp (1994)BWyrmwood (2015)B%X-Files: Fight the Future, The (1998)B&X-Files: I Want to Believe, The (2008)BX-Men (2000)BX-Men Origins: Wolverine (2009)BX-Men: Apocalypse (2016)B!X-Men: Days of Future Past (2014)BX-Men: First Class (2011)BX-Men: The Last Stand (2006)BX2: X-Men United (2003)BYankee Doodle Dandy (1942)BYards, The (2000)BYear One (2009)B&Year of Living Dangerously, The (1982)BYear of the Dragon (1985)BYear of the Horse (1997)BYearling, The (1946)B7Yellow Sea, The (a.k.a. The Murderer) (Hwanghae) (2010)BYellow Submarine (1968)BYentl (1983)BYes Man (2008)B!Yes Men Fix the World, The (2009)BYes Men, The (2003)B9Yesterday, Today and Tomorrow (Ieri, oggi, domani) (1963)BYi Yi (2000)BYogi Bear (2010)BYojimbo (1961)B%Yongary: Monster from the Deep (1967)BYou Again (2010)B"You Are the Apple of My Eye (2011)BYou Can Count on Me (2000)B!You Can't Take It with You (1938)B$You Don't Mess with the Zohan (2008)BYou Got Served (2004)BYou Only Live Once (1937)BYou Only Live Twice (1967)B)You Will Meet a Tall Dark Stranger (2010)BYou'll Never Get Rich (1941)BYou're Next (2011)BYou've Got Mail (1998)BYou, Me and Dupree (2006)BYoung Adult (2011)BYoung Doctors in Love (1982)BYoung Einstein (1988)BYoung Frankenstein (1974)BYoung Guns (1988)BYoung Guns II (1990)B(Young People Fucking (a.k.a. YPF) (2007)B%Young Poisoner's Handbook, The (1995)BYoung Sherlock Holmes (1985)BYoung Victoria, The (2009)B1Young and the Damned, The (Olvidados, Los) (1950)BYoungblood (1986)B!Your Friends and Neighbors (1998)BYour Highness (2011)BYour Name. (2016)BYour Sister's Sister (2011)BYours, Mine and Ours (1968)BYours, Mine and Ours (2005)BYouth (2015)BYouth Without Youth (2007)BYouth in Revolt (2009)B+Youth of the Beast (Yaju no seishun) (1963)BZ (1969)BZabriskie Point (1970)B!Zack and Miri Make a Porno (2008)BZapped! (1982)BZathura (2005)BLZatoichi and the Chest of Gold (Zatôichi senryô-kubi) (Zatôichi 6) (1964)BZazie dans le métro (1960)BZebraman (2004)BZed & Two Noughts, A (1985)BZeitgeist: Addendum (2008)B Zeitgeist: Moving Forward (2011)BZeitgeist: The Movie (2007)BZelary (2003)BZelig (1983)BZero Dark Thirty (2012)BZero Effect (1998)BZero Theorem, The (2013)BZZero de conduite (Zero for Conduct) (Zéro de conduite: Jeunes diables au collège) (1933)BZeus and Roxanne (1997)BZipper (2015)BZodiac (2007)BZombeavers (2014)B@Zombie (a.k.a. Zombie 2: The Dead Are Among Us) (Zombi 2) (1979)BZombie Strippers! (2008)BZombieland (2009)BZone 39 (1997)BZone, The (La Zona) (2007)BZookeeper (2011)BZoolander (2001)BZoolander 2 (2016)BZoom (2006)BZoom (2015)BZootopia (2016)BZulu (1964)BZulu (2013)B[REC] (2007)B[REC]² (2009)B[REC]³ 3 Génesis (2012)B6anohana: The Flower We Saw That Day - The Movie (2013)BeXistenZ (1999)B
xXx (2002)BxXx: State of the Union (2005)B¡Three Amigos! (1986)B+À nous la liberté (Freedom for Us) (1931)
??
Const_5Const*
_output_shapes	
:?K*
dtype0	*??
value??B??	?K"??                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_2Const_3*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *"
fR
__inference_<lambda>_2994
?
StatefulPartitionedCall_1StatefulPartitionedCallhash_table_1Const_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *"
fR
__inference_<lambda>_3002
B
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1
?5
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?4
value?4B?4 B?4
?
ranking_model
task
	optimizer
loss
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
?

user_embeddings
movie_embeddings
ratings
	variables
trainable_variables
regularization_losses
	keras_api
?
_ranking_metrics
_prediction_metrics
_label_metrics
_loss_metrics
	variables
trainable_variables
regularization_losses
	keras_api
?
iter
	decay
learning_rateaccumulator?accumulator?accumulator?accumulator? accumulator?!accumulator?"accumulator?#accumulator?
 
8
0
1
2
3
 4
!5
"6
#7
8
0
1
2
3
 4
!5
"6
#7
 
?
	variables
$non_trainable_variables
%metrics
trainable_variables
&layer_regularization_losses
'layer_metrics

(layers
regularization_losses
 
?
)layer-0
*layer_with_weights-0
*layer-1
+	variables
,trainable_variables
-regularization_losses
.	keras_api
?
/layer-0
0layer_with_weights-0
0layer-1
1	variables
2trainable_variables
3regularization_losses
4	keras_api
?
5layer_with_weights-0
5layer-0
6layer_with_weights-1
6layer-1
7layer_with_weights-2
7layer-2
8	variables
9trainable_variables
:regularization_losses
;	keras_api
8
0
1
2
3
 4
!5
"6
#7
8
0
1
2
3
 4
!5
"6
#7
 
?
	variables
<non_trainable_variables
=metrics
trainable_variables
>layer_regularization_losses
?layer_metrics

@layers
regularization_losses

A0
 
 
 
 
 
 
?
	variables
Bnon_trainable_variables
Cmetrics
trainable_variables
Dlayer_regularization_losses
Elayer_metrics

Flayers
regularization_losses
KI
VARIABLE_VALUEAdagrad/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEAdagrad/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEAdagrad/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEembedding_2/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEembedding_3/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_3/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense_3/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_4/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense_4/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_5/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense_5/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
 

A0
 
 

0
1
!
Glookup_table
H	keras_api
b

embeddings
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api

0

0
 
?
+	variables
Mnon_trainable_variables
Nmetrics
,trainable_variables
Olayer_regularization_losses
Player_metrics

Qlayers
-regularization_losses
!
Rlookup_table
S	keras_api
b

embeddings
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api

0

0
 
?
1	variables
Xnon_trainable_variables
Ymetrics
2trainable_variables
Zlayer_regularization_losses
[layer_metrics

\layers
3regularization_losses
h

kernel
bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
h

 kernel
!bias
a	variables
btrainable_variables
cregularization_losses
d	keras_api
h

"kernel
#bias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
*
0
1
 2
!3
"4
#5
*
0
1
 2
!3
"4
#5
 
?
8	variables
inon_trainable_variables
jmetrics
9trainable_variables
klayer_regularization_losses
llayer_metrics

mlayers
:regularization_losses
 
 
 
 


0
1
2
4
	ntotal
	ocount
p	variables
q	keras_api
 

A0
 

Aroot_mean_squared_error
 

r_initializer
 

0

0
 
?
I	variables
snon_trainable_variables
tmetrics
Jtrainable_variables
ulayer_regularization_losses
vlayer_metrics

wlayers
Kregularization_losses
 
 
 
 

)0
*1

x_initializer
 

0

0
 
?
T	variables
ynon_trainable_variables
zmetrics
Utrainable_variables
{layer_regularization_losses
|layer_metrics

}layers
Vregularization_losses
 
 
 
 

/0
01

0
1

0
1
 
?
]	variables
~non_trainable_variables
metrics
^trainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
_regularization_losses

 0
!1

 0
!1
 
?
a	variables
?non_trainable_variables
?metrics
btrainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
cregularization_losses

"0
#1

"0
#1
 
?
e	variables
?non_trainable_variables
?metrics
ftrainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
gregularization_losses
 
 
 
 

50
61
72
SQ
VARIABLE_VALUEtotal8task/_ranking_metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEcount8task/_ranking_metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

n0
o1

p	variables
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
??
VARIABLE_VALUE*Adagrad/embedding_2/embeddings/accumulatorLvariables/0/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adagrad/embedding_3/embeddings/accumulatorLvariables/1/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adagrad/dense_3/kernel/accumulatorLvariables/2/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adagrad/dense_3/bias/accumulatorLvariables/3/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adagrad/dense_4/kernel/accumulatorLvariables/4/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adagrad/dense_4/bias/accumulatorLvariables/5/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adagrad/dense_5/kernel/accumulatorLvariables/6/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adagrad/dense_5/bias/accumulatorLvariables/7/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
r
serving_default_movieIdPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
q
serving_default_userIdPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_2StatefulPartitionedCallserving_default_movieIdserving_default_userId
hash_tableConstembedding_2/embeddingshash_table_1Const_1embedding_3/embeddingsdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference_signature_wrapper_2381
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filename Adagrad/iter/Read/ReadVariableOp!Adagrad/decay/Read/ReadVariableOp)Adagrad/learning_rate/Read/ReadVariableOp*embedding_2/embeddings/Read/ReadVariableOp*embedding_3/embeddings/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp>Adagrad/embedding_2/embeddings/accumulator/Read/ReadVariableOp>Adagrad/embedding_3/embeddings/accumulator/Read/ReadVariableOp6Adagrad/dense_3/kernel/accumulator/Read/ReadVariableOp4Adagrad/dense_3/bias/accumulator/Read/ReadVariableOp6Adagrad/dense_4/kernel/accumulator/Read/ReadVariableOp4Adagrad/dense_4/bias/accumulator/Read/ReadVariableOp6Adagrad/dense_5/kernel/accumulator/Read/ReadVariableOp4Adagrad/dense_5/bias/accumulator/Read/ReadVariableOpConst_6*"
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *&
f!R
__inference__traced_save_3099
?
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filenameAdagrad/iterAdagrad/decayAdagrad/learning_rateembedding_2/embeddingsembedding_3/embeddingsdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/biastotalcount*Adagrad/embedding_2/embeddings/accumulator*Adagrad/embedding_3/embeddings/accumulator"Adagrad/dense_3/kernel/accumulator Adagrad/dense_3/bias/accumulator"Adagrad/dense_4/kernel/accumulator Adagrad/dense_4/bias/accumulator"Adagrad/dense_5/kernel/accumulator Adagrad/dense_5/bias/accumulator*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_restore_3172??
?
?
+__inference_sequential_3_layer_call_fn_2729

inputs
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_14862
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
+__inference_sequential_4_layer_call_fn_1614
string_lookup_3_input
unknown
	unknown_0	
	unknown_1:	?K 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_3_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_15942
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_3_input:

_output_shapes
: 
?
?
F__inference_sequential_4_layer_call_and_return_conditional_losses_2755

inputs>
:string_lookup_3_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_3_none_lookup_lookuptablefindv2_default_value	4
!embedding_3_embedding_lookup_2749:	?K 
identity??embedding_3/embedding_lookup?-string_lookup_3/None_Lookup/LookupTableFindV2?
-string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_3_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2/
-string_lookup_3/None_Lookup/LookupTableFindV2?
string_lookup_3/IdentityIdentity6string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup_3/Identity?
embedding_3/embedding_lookupResourceGather!embedding_3_embedding_lookup_2749!string_lookup_3/Identity:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*4
_class*
(&loc:@embedding_3/embedding_lookup/2749*'
_output_shapes
:????????? *
dtype02
embedding_3/embedding_lookup?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*4
_class*
(&loc:@embedding_3/embedding_lookup/2749*'
_output_shapes
:????????? 2'
%embedding_3/embedding_lookup/Identity?
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2)
'embedding_3/embedding_lookup/Identity_1?
IdentityIdentity0embedding_3/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^embedding_3/embedding_lookup.^string_lookup_3/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2^
-string_lookup_3/None_Lookup/LookupTableFindV2-string_lookup_3/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
+
__inference__destroyer_2968
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
F__inference_sequential_4_layer_call_and_return_conditional_losses_1594

inputs>
:string_lookup_3_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_3_none_lookup_lookuptablefindv2_default_value	#
embedding_3_1590:	?K 
identity??#embedding_3/StatefulPartitionedCall?-string_lookup_3/None_Lookup/LookupTableFindV2?
-string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_3_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2/
-string_lookup_3/None_Lookup/LookupTableFindV2?
string_lookup_3/IdentityIdentity6string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup_3/Identity?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_3/Identity:output:0embedding_3_1590*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_3_layer_call_and_return_conditional_losses_15482%
#embedding_3/StatefulPartitionedCall?
IdentityIdentity,embedding_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp$^embedding_3/StatefulPartitionedCall.^string_lookup_3/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2^
-string_lookup_3/None_Lookup/LookupTableFindV2-string_lookup_3/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_2105
input_1
input_2
sequential_3_2075
sequential_3_2077	$
sequential_3_2079:	? 
sequential_4_2082
sequential_4_2084	$
sequential_4_2086:	?K $
sequential_5_2091:	@? 
sequential_5_2093:	?$
sequential_5_2095:	?@
sequential_5_2097:@#
sequential_5_2099:@
sequential_5_2101:
identity??$sequential_3/StatefulPartitionedCall?$sequential_4/StatefulPartitionedCall?$sequential_5/StatefulPartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_3_2075sequential_3_2077sequential_3_2079*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_14862&
$sequential_3/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallinput_2sequential_4_2082sequential_4_2084sequential_4_2086*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_15942&
$sequential_4/StatefulPartitionedCall\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2-sequential_3/StatefulPartitionedCall:output:0-sequential_4/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
concat?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0sequential_5_2091sequential_5_2093sequential_5_2095sequential_5_2097sequential_5_2099sequential_5_2101*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_5_layer_call_and_return_conditional_losses_17772&
$sequential_5/StatefulPartitionedCall?
IdentityIdentity-sequential_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp%^sequential_3/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:LH
#
_output_shapes
:?????????
!
_user_specified_name	input_2:

_output_shapes
: :

_output_shapes
: 
?]
?
 __inference__traced_restore_3172
file_prefix'
assignvariableop_adagrad_iter:	 *
 assignvariableop_1_adagrad_decay: 2
(assignvariableop_2_adagrad_learning_rate: <
)assignvariableop_3_embedding_2_embeddings:	? <
)assignvariableop_4_embedding_3_embeddings:	?K 4
!assignvariableop_5_dense_3_kernel:	@?.
assignvariableop_6_dense_3_bias:	?4
!assignvariableop_7_dense_4_kernel:	?@-
assignvariableop_8_dense_4_bias:@3
!assignvariableop_9_dense_5_kernel:@.
 assignvariableop_10_dense_5_bias:#
assignvariableop_11_total: #
assignvariableop_12_count: Q
>assignvariableop_13_adagrad_embedding_2_embeddings_accumulator:	? Q
>assignvariableop_14_adagrad_embedding_3_embeddings_accumulator:	?K I
6assignvariableop_15_adagrad_dense_3_kernel_accumulator:	@?C
4assignvariableop_16_adagrad_dense_3_bias_accumulator:	?I
6assignvariableop_17_adagrad_dense_4_kernel_accumulator:	?@B
4assignvariableop_18_adagrad_dense_4_bias_accumulator:@H
6assignvariableop_19_adagrad_dense_5_kernel_accumulator:@B
4assignvariableop_20_adagrad_dense_5_bias_accumulator:
identity_22??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB8task/_ranking_metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB8task/_ranking_metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBLvariables/0/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/1/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/2/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/3/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/4/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/5/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/6/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/7/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_adagrad_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_adagrad_decayIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp(assignvariableop_2_adagrad_learning_rateIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp)assignvariableop_3_embedding_2_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp)assignvariableop_4_embedding_3_embeddingsIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_3_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_3_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_4_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_4_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_5_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_5_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp>assignvariableop_13_adagrad_embedding_2_embeddings_accumulatorIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp>assignvariableop_14_adagrad_embedding_3_embeddings_accumulatorIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp6assignvariableop_15_adagrad_dense_3_kernel_accumulatorIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp4assignvariableop_16_adagrad_dense_3_bias_accumulatorIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp6assignvariableop_17_adagrad_dense_4_kernel_accumulatorIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adagrad_dense_4_bias_accumulatorIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adagrad_dense_5_kernel_accumulatorIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adagrad_dense_5_bias_accumulatorIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_209
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_21f
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_22?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
.__inference_ranking_model_1_layer_call_fn_2651
inputs_0
inputs_1
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	?K 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_18862
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:?????????
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/1:

_output_shapes
: :

_output_shapes
: 
?	
?
+__inference_sequential_5_layer_call_fn_1709
dense_3_input
unknown:	@?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_5_layer_call_and_return_conditional_losses_16942
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????@
'
_user_specified_namedense_3_input
?
?
F__inference_sequential_4_layer_call_and_return_conditional_losses_1553

inputs>
:string_lookup_3_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_3_none_lookup_lookuptablefindv2_default_value	#
embedding_3_1549:	?K 
identity??#embedding_3/StatefulPartitionedCall?-string_lookup_3/None_Lookup/LookupTableFindV2?
-string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_3_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2/
-string_lookup_3/None_Lookup/LookupTableFindV2?
string_lookup_3/IdentityIdentity6string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup_3/Identity?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_3/Identity:output:0embedding_3_1549*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_3_layer_call_and_return_conditional_losses_15482%
#embedding_3/StatefulPartitionedCall?
IdentityIdentity,embedding_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp$^embedding_3/StatefulPartitionedCall.^string_lookup_3/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2^
-string_lookup_3/None_Lookup/LookupTableFindV2-string_lookup_3/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
F__inference_sequential_3_layer_call_and_return_conditional_losses_2707

inputs>
:string_lookup_2_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_2_none_lookup_lookuptablefindv2_default_value	4
!embedding_2_embedding_lookup_2701:	? 
identity??embedding_2/embedding_lookup?-string_lookup_2/None_Lookup/LookupTableFindV2?
-string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_2_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2/
-string_lookup_2/None_Lookup/LookupTableFindV2?
string_lookup_2/IdentityIdentity6string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup_2/Identity?
embedding_2/embedding_lookupResourceGather!embedding_2_embedding_lookup_2701!string_lookup_2/Identity:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*4
_class*
(&loc:@embedding_2/embedding_lookup/2701*'
_output_shapes
:????????? *
dtype02
embedding_2/embedding_lookup?
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*4
_class*
(&loc:@embedding_2/embedding_lookup/2701*'
_output_shapes
:????????? 2'
%embedding_2/embedding_lookup/Identity?
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2)
'embedding_2/embedding_lookup/Identity_1?
IdentityIdentity0embedding_2/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^embedding_2/embedding_lookup.^string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2^
-string_lookup_2/None_Lookup/LookupTableFindV2-string_lookup_2/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?

*__inference_embedding_2_layer_call_fn_2875

inputs	
unknown:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_2_layer_call_and_return_conditional_losses_14402
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_sequential_5_layer_call_and_return_conditional_losses_2801

inputs9
&dense_3_matmul_readvariableop_resource:	@?6
'dense_3_biasadd_readvariableop_resource:	?9
&dense_4_matmul_readvariableop_resource:	?@5
'dense_4_biasadd_readvariableop_resource:@8
&dense_5_matmul_readvariableop_resource:@5
'dense_5_biasadd_readvariableop_resource:
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMulinputs%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_3/BiasAddq
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_3/Relu?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMuldense_3/Relu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_4/BiasAddp
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_4/Relu?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_5/BiasAdds
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
&__inference_dense_3_layer_call_fn_2911

inputs
unknown:	@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_16542
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
.__inference_movielens_model_layer_call_fn_2531
features_movieid
features_userid
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	?K 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_movieidfeatures_useridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_movielens_model_layer_call_and_return_conditional_losses_22302
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
#
_output_shapes
:?????????
*
_user_specified_namefeatures/movieId:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/userId:

_output_shapes
: :

_output_shapes
: 
?	
?
E__inference_embedding_2_layer_call_and_return_conditional_losses_1440

inputs	(
embedding_lookup_1434:	? 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_1434inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*(
_class
loc:@embedding_lookup/1434*'
_output_shapes
:????????? *
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@embedding_lookup/1434*'
_output_shapes
:????????? 2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2230
features

features_1
ranking_model_1_2204
ranking_model_1_2206	'
ranking_model_1_2208:	? 
ranking_model_1_2210
ranking_model_1_2212	'
ranking_model_1_2214:	?K '
ranking_model_1_2216:	@?#
ranking_model_1_2218:	?'
ranking_model_1_2220:	?@"
ranking_model_1_2222:@&
ranking_model_1_2224:@"
ranking_model_1_2226:
identity??'ranking_model_1/StatefulPartitionedCall?
'ranking_model_1/StatefulPartitionedCallStatefulPartitionedCall
features_1featuresranking_model_1_2204ranking_model_1_2206ranking_model_1_2208ranking_model_1_2210ranking_model_1_2212ranking_model_1_2214ranking_model_1_2216ranking_model_1_2218ranking_model_1_2220ranking_model_1_2222ranking_model_1_2224ranking_model_1_2226*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_19802)
'ranking_model_1/StatefulPartitionedCall?
IdentityIdentity0ranking_model_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityx
NoOpNoOp(^ranking_model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2R
'ranking_model_1/StatefulPartitionedCall'ranking_model_1/StatefulPartitionedCall:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_30026
2key_value_init305_lookuptableimportv2_table_handle.
*key_value_init305_lookuptableimportv2_keys0
,key_value_init305_lookuptableimportv2_values	
identity??%key_value_init305/LookupTableImportV2?
%key_value_init305/LookupTableImportV2LookupTableImportV22key_value_init305_lookuptableimportv2_table_handle*key_value_init305_lookuptableimportv2_keys,key_value_init305_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 2'
%key_value_init305/LookupTableImportV2S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identityv
NoOpNoOp&^key_value_init305/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?K:?K2N
%key_value_init305/LookupTableImportV2%key_value_init305/LookupTableImportV2:!

_output_shapes	
:?K:!

_output_shapes	
:?K
?
?
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_2071
input_1
input_2
sequential_3_2041
sequential_3_2043	$
sequential_3_2045:	? 
sequential_4_2048
sequential_4_2050	$
sequential_4_2052:	?K $
sequential_5_2057:	@? 
sequential_5_2059:	?$
sequential_5_2061:	?@
sequential_5_2063:@#
sequential_5_2065:@
sequential_5_2067:
identity??$sequential_3/StatefulPartitionedCall?$sequential_4/StatefulPartitionedCall?$sequential_5/StatefulPartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_3_2041sequential_3_2043sequential_3_2045*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_14452&
$sequential_3/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallinput_2sequential_4_2048sequential_4_2050sequential_4_2052*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_15532&
$sequential_4/StatefulPartitionedCall\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2-sequential_3/StatefulPartitionedCall:output:0-sequential_4/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
concat?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0sequential_5_2057sequential_5_2059sequential_5_2061sequential_5_2063sequential_5_2065sequential_5_2067*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_5_layer_call_and_return_conditional_losses_16942&
$sequential_5/StatefulPartitionedCall?
IdentityIdentity-sequential_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp%^sequential_3/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:LH
#
_output_shapes
:?????????
!
_user_specified_name	input_2:

_output_shapes
: :

_output_shapes
: 
?
?
F__inference_sequential_3_layer_call_and_return_conditional_losses_1445

inputs>
:string_lookup_2_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_2_none_lookup_lookuptablefindv2_default_value	#
embedding_2_1441:	? 
identity??#embedding_2/StatefulPartitionedCall?-string_lookup_2/None_Lookup/LookupTableFindV2?
-string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_2_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2/
-string_lookup_2/None_Lookup/LookupTableFindV2?
string_lookup_2/IdentityIdentity6string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup_2/Identity?
#embedding_2/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_2/Identity:output:0embedding_2_1441*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_2_layer_call_and_return_conditional_losses_14402%
#embedding_2/StatefulPartitionedCall?
IdentityIdentity,embedding_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp$^embedding_2/StatefulPartitionedCall.^string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2^
-string_lookup_2/None_Lookup/LookupTableFindV2-string_lookup_2/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?^
?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2471
features_movieid
features_userid[
Wranking_model_1_sequential_3_string_lookup_2_none_lookup_lookuptablefindv2_table_handle\
Xranking_model_1_sequential_3_string_lookup_2_none_lookup_lookuptablefindv2_default_value	Q
>ranking_model_1_sequential_3_embedding_2_embedding_lookup_2434:	? [
Wranking_model_1_sequential_4_string_lookup_3_none_lookup_lookuptablefindv2_table_handle\
Xranking_model_1_sequential_4_string_lookup_3_none_lookup_lookuptablefindv2_default_value	Q
>ranking_model_1_sequential_4_embedding_3_embedding_lookup_2443:	?K V
Cranking_model_1_sequential_5_dense_3_matmul_readvariableop_resource:	@?S
Dranking_model_1_sequential_5_dense_3_biasadd_readvariableop_resource:	?V
Cranking_model_1_sequential_5_dense_4_matmul_readvariableop_resource:	?@R
Dranking_model_1_sequential_5_dense_4_biasadd_readvariableop_resource:@U
Cranking_model_1_sequential_5_dense_5_matmul_readvariableop_resource:@R
Dranking_model_1_sequential_5_dense_5_biasadd_readvariableop_resource:
identity??9ranking_model_1/sequential_3/embedding_2/embedding_lookup?Jranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2?9ranking_model_1/sequential_4/embedding_3/embedding_lookup?Jranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2?;ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOp?:ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOp?;ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp?:ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOp?;ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp?:ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOp?
Jranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Wranking_model_1_sequential_3_string_lookup_2_none_lookup_lookuptablefindv2_table_handlefeatures_useridXranking_model_1_sequential_3_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2L
Jranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2?
5ranking_model_1/sequential_3/string_lookup_2/IdentityIdentitySranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????27
5ranking_model_1/sequential_3/string_lookup_2/Identity?
9ranking_model_1/sequential_3/embedding_2/embedding_lookupResourceGather>ranking_model_1_sequential_3_embedding_2_embedding_lookup_2434>ranking_model_1/sequential_3/string_lookup_2/Identity:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*Q
_classG
ECloc:@ranking_model_1/sequential_3/embedding_2/embedding_lookup/2434*'
_output_shapes
:????????? *
dtype02;
9ranking_model_1/sequential_3/embedding_2/embedding_lookup?
Branking_model_1/sequential_3/embedding_2/embedding_lookup/IdentityIdentityBranking_model_1/sequential_3/embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*Q
_classG
ECloc:@ranking_model_1/sequential_3/embedding_2/embedding_lookup/2434*'
_output_shapes
:????????? 2D
Branking_model_1/sequential_3/embedding_2/embedding_lookup/Identity?
Dranking_model_1/sequential_3/embedding_2/embedding_lookup/Identity_1IdentityKranking_model_1/sequential_3/embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2F
Dranking_model_1/sequential_3/embedding_2/embedding_lookup/Identity_1?
Jranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2Wranking_model_1_sequential_4_string_lookup_3_none_lookup_lookuptablefindv2_table_handlefeatures_movieidXranking_model_1_sequential_4_string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2L
Jranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2?
5ranking_model_1/sequential_4/string_lookup_3/IdentityIdentitySranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????27
5ranking_model_1/sequential_4/string_lookup_3/Identity?
9ranking_model_1/sequential_4/embedding_3/embedding_lookupResourceGather>ranking_model_1_sequential_4_embedding_3_embedding_lookup_2443>ranking_model_1/sequential_4/string_lookup_3/Identity:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*Q
_classG
ECloc:@ranking_model_1/sequential_4/embedding_3/embedding_lookup/2443*'
_output_shapes
:????????? *
dtype02;
9ranking_model_1/sequential_4/embedding_3/embedding_lookup?
Branking_model_1/sequential_4/embedding_3/embedding_lookup/IdentityIdentityBranking_model_1/sequential_4/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*Q
_classG
ECloc:@ranking_model_1/sequential_4/embedding_3/embedding_lookup/2443*'
_output_shapes
:????????? 2D
Branking_model_1/sequential_4/embedding_3/embedding_lookup/Identity?
Dranking_model_1/sequential_4/embedding_3/embedding_lookup/Identity_1IdentityKranking_model_1/sequential_4/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2F
Dranking_model_1/sequential_4/embedding_3/embedding_lookup/Identity_1|
ranking_model_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
ranking_model_1/concat/axis?
ranking_model_1/concatConcatV2Mranking_model_1/sequential_3/embedding_2/embedding_lookup/Identity_1:output:0Mranking_model_1/sequential_4/embedding_3/embedding_lookup/Identity_1:output:0$ranking_model_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
ranking_model_1/concat?
:ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOpReadVariableOpCranking_model_1_sequential_5_dense_3_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02<
:ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOp?
+ranking_model_1/sequential_5/dense_3/MatMulMatMulranking_model_1/concat:output:0Branking_model_1/sequential_5/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+ranking_model_1/sequential_5/dense_3/MatMul?
;ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOpReadVariableOpDranking_model_1_sequential_5_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOp?
,ranking_model_1/sequential_5/dense_3/BiasAddBiasAdd5ranking_model_1/sequential_5/dense_3/MatMul:product:0Cranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,ranking_model_1/sequential_5/dense_3/BiasAdd?
)ranking_model_1/sequential_5/dense_3/ReluRelu5ranking_model_1/sequential_5/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2+
)ranking_model_1/sequential_5/dense_3/Relu?
:ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOpReadVariableOpCranking_model_1_sequential_5_dense_4_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02<
:ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOp?
+ranking_model_1/sequential_5/dense_4/MatMulMatMul7ranking_model_1/sequential_5/dense_3/Relu:activations:0Branking_model_1/sequential_5/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2-
+ranking_model_1/sequential_5/dense_4/MatMul?
;ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOpReadVariableOpDranking_model_1_sequential_5_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02=
;ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp?
,ranking_model_1/sequential_5/dense_4/BiasAddBiasAdd5ranking_model_1/sequential_5/dense_4/MatMul:product:0Cranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2.
,ranking_model_1/sequential_5/dense_4/BiasAdd?
)ranking_model_1/sequential_5/dense_4/ReluRelu5ranking_model_1/sequential_5/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2+
)ranking_model_1/sequential_5/dense_4/Relu?
:ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOpReadVariableOpCranking_model_1_sequential_5_dense_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02<
:ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOp?
+ranking_model_1/sequential_5/dense_5/MatMulMatMul7ranking_model_1/sequential_5/dense_4/Relu:activations:0Branking_model_1/sequential_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2-
+ranking_model_1/sequential_5/dense_5/MatMul?
;ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOpReadVariableOpDranking_model_1_sequential_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02=
;ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp?
,ranking_model_1/sequential_5/dense_5/BiasAddBiasAdd5ranking_model_1/sequential_5/dense_5/MatMul:product:0Cranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2.
,ranking_model_1/sequential_5/dense_5/BiasAdd?
IdentityIdentity5ranking_model_1/sequential_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp:^ranking_model_1/sequential_3/embedding_2/embedding_lookupK^ranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2:^ranking_model_1/sequential_4/embedding_3/embedding_lookupK^ranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2<^ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOp;^ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOp<^ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp;^ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOp<^ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp;^ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2v
9ranking_model_1/sequential_3/embedding_2/embedding_lookup9ranking_model_1/sequential_3/embedding_2/embedding_lookup2?
Jranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2Jranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV22v
9ranking_model_1/sequential_4/embedding_3/embedding_lookup9ranking_model_1/sequential_4/embedding_3/embedding_lookup2?
Jranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2Jranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV22z
;ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOp;ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOp2x
:ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOp:ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOp2z
;ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp;ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp2x
:ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOp:ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOp2z
;ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp;ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp2x
:ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOp:ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOp:U Q
#
_output_shapes
:?????????
*
_user_specified_namefeatures/movieId:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/userId:

_output_shapes
: :

_output_shapes
: 
?
?
F__inference_sequential_4_layer_call_and_return_conditional_losses_1625
string_lookup_3_input>
:string_lookup_3_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_3_none_lookup_lookuptablefindv2_default_value	#
embedding_3_1621:	?K 
identity??#embedding_3/StatefulPartitionedCall?-string_lookup_3/None_Lookup/LookupTableFindV2?
-string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_3_none_lookup_lookuptablefindv2_table_handlestring_lookup_3_input;string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2/
-string_lookup_3/None_Lookup/LookupTableFindV2?
string_lookup_3/IdentityIdentity6string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup_3/Identity?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_3/Identity:output:0embedding_3_1621*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_3_layer_call_and_return_conditional_losses_15482%
#embedding_3/StatefulPartitionedCall?
IdentityIdentity,embedding_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp$^embedding_3/StatefulPartitionedCall.^string_lookup_3/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2^
-string_lookup_3/None_Lookup/LookupTableFindV2-string_lookup_3/None_Lookup/LookupTableFindV2:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_3_input:

_output_shapes
: 
?	
?
+__inference_sequential_5_layer_call_fn_2842

inputs
unknown:	@?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_5_layer_call_and_return_conditional_losses_16942
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
+__inference_sequential_4_layer_call_fn_2766

inputs
unknown
	unknown_0	
	unknown_1:	?K 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_15532
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
A__inference_dense_4_layer_call_and_return_conditional_losses_2922

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_dense_4_layer_call_fn_2931

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_16712
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2140
features

features_1
ranking_model_1_2114
ranking_model_1_2116	'
ranking_model_1_2118:	? 
ranking_model_1_2120
ranking_model_1_2122	'
ranking_model_1_2124:	?K '
ranking_model_1_2126:	@?#
ranking_model_1_2128:	?'
ranking_model_1_2130:	?@"
ranking_model_1_2132:@&
ranking_model_1_2134:@"
ranking_model_1_2136:
identity??'ranking_model_1/StatefulPartitionedCall?
'ranking_model_1/StatefulPartitionedCallStatefulPartitionedCall
features_1featuresranking_model_1_2114ranking_model_1_2116ranking_model_1_2118ranking_model_1_2120ranking_model_1_2122ranking_model_1_2124ranking_model_1_2126ranking_model_1_2128ranking_model_1_2130ranking_model_1_2132ranking_model_1_2134ranking_model_1_2136*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_18862)
'ranking_model_1/StatefulPartitionedCall?
IdentityIdentity0ranking_model_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityx
NoOpNoOp(^ranking_model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2R
'ranking_model_1/StatefulPartitionedCall'ranking_model_1/StatefulPartitionedCall:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:

_output_shapes
: :

_output_shapes
: 
?
?
A__inference_dense_3_layer_call_and_return_conditional_losses_1654

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
.__inference_movielens_model_layer_call_fn_2501
features_movieid
features_userid
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	?K 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_movieidfeatures_useridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_movielens_model_layer_call_and_return_conditional_losses_21402
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
#
_output_shapes
:?????????
*
_user_specified_namefeatures/movieId:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/userId:

_output_shapes
: :

_output_shapes
: 
?
?
.__inference_ranking_model_1_layer_call_fn_2037
input_1
input_2
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	?K 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_19802
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:LH
#
_output_shapes
:?????????
!
_user_specified_name	input_2:

_output_shapes
: :

_output_shapes
: 
?
?
.__inference_movielens_model_layer_call_fn_2287
movieid

userid
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	?K 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmovieiduseridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_movielens_model_layer_call_and_return_conditional_losses_22302
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	movieId:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserId:

_output_shapes
: :

_output_shapes
: 
?
?
&__inference_dense_5_layer_call_fn_2950

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_16872
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
.__inference_ranking_model_1_layer_call_fn_2681
inputs_0
inputs_1
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	?K 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_19802
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:?????????
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/1:

_output_shapes
: :

_output_shapes
: 
?
9
__inference__creator_2955
identity??
hash_tabley

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name284*
value_dtype0	2

hash_tablec
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: 2

Identity[
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?o
?
__inference__wrapped_model_1420
movieid

useridk
gmovielens_model_ranking_model_1_sequential_3_string_lookup_2_none_lookup_lookuptablefindv2_table_handlel
hmovielens_model_ranking_model_1_sequential_3_string_lookup_2_none_lookup_lookuptablefindv2_default_value	a
Nmovielens_model_ranking_model_1_sequential_3_embedding_2_embedding_lookup_1383:	? k
gmovielens_model_ranking_model_1_sequential_4_string_lookup_3_none_lookup_lookuptablefindv2_table_handlel
hmovielens_model_ranking_model_1_sequential_4_string_lookup_3_none_lookup_lookuptablefindv2_default_value	a
Nmovielens_model_ranking_model_1_sequential_4_embedding_3_embedding_lookup_1392:	?K f
Smovielens_model_ranking_model_1_sequential_5_dense_3_matmul_readvariableop_resource:	@?c
Tmovielens_model_ranking_model_1_sequential_5_dense_3_biasadd_readvariableop_resource:	?f
Smovielens_model_ranking_model_1_sequential_5_dense_4_matmul_readvariableop_resource:	?@b
Tmovielens_model_ranking_model_1_sequential_5_dense_4_biasadd_readvariableop_resource:@e
Smovielens_model_ranking_model_1_sequential_5_dense_5_matmul_readvariableop_resource:@b
Tmovielens_model_ranking_model_1_sequential_5_dense_5_biasadd_readvariableop_resource:
identity??Imovielens_model/ranking_model_1/sequential_3/embedding_2/embedding_lookup?Zmovielens_model/ranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2?Imovielens_model/ranking_model_1/sequential_4/embedding_3/embedding_lookup?Zmovielens_model/ranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2?Kmovielens_model/ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOp?Jmovielens_model/ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOp?Kmovielens_model/ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp?Jmovielens_model/ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOp?Kmovielens_model/ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp?Jmovielens_model/ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOp?
Zmovielens_model/ranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2gmovielens_model_ranking_model_1_sequential_3_string_lookup_2_none_lookup_lookuptablefindv2_table_handleuseridhmovielens_model_ranking_model_1_sequential_3_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2\
Zmovielens_model/ranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2?
Emovielens_model/ranking_model_1/sequential_3/string_lookup_2/IdentityIdentitycmovielens_model/ranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2G
Emovielens_model/ranking_model_1/sequential_3/string_lookup_2/Identity?
Imovielens_model/ranking_model_1/sequential_3/embedding_2/embedding_lookupResourceGatherNmovielens_model_ranking_model_1_sequential_3_embedding_2_embedding_lookup_1383Nmovielens_model/ranking_model_1/sequential_3/string_lookup_2/Identity:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*a
_classW
USloc:@movielens_model/ranking_model_1/sequential_3/embedding_2/embedding_lookup/1383*'
_output_shapes
:????????? *
dtype02K
Imovielens_model/ranking_model_1/sequential_3/embedding_2/embedding_lookup?
Rmovielens_model/ranking_model_1/sequential_3/embedding_2/embedding_lookup/IdentityIdentityRmovielens_model/ranking_model_1/sequential_3/embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*a
_classW
USloc:@movielens_model/ranking_model_1/sequential_3/embedding_2/embedding_lookup/1383*'
_output_shapes
:????????? 2T
Rmovielens_model/ranking_model_1/sequential_3/embedding_2/embedding_lookup/Identity?
Tmovielens_model/ranking_model_1/sequential_3/embedding_2/embedding_lookup/Identity_1Identity[movielens_model/ranking_model_1/sequential_3/embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2V
Tmovielens_model/ranking_model_1/sequential_3/embedding_2/embedding_lookup/Identity_1?
Zmovielens_model/ranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2gmovielens_model_ranking_model_1_sequential_4_string_lookup_3_none_lookup_lookuptablefindv2_table_handlemovieidhmovielens_model_ranking_model_1_sequential_4_string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2\
Zmovielens_model/ranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2?
Emovielens_model/ranking_model_1/sequential_4/string_lookup_3/IdentityIdentitycmovielens_model/ranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2G
Emovielens_model/ranking_model_1/sequential_4/string_lookup_3/Identity?
Imovielens_model/ranking_model_1/sequential_4/embedding_3/embedding_lookupResourceGatherNmovielens_model_ranking_model_1_sequential_4_embedding_3_embedding_lookup_1392Nmovielens_model/ranking_model_1/sequential_4/string_lookup_3/Identity:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*a
_classW
USloc:@movielens_model/ranking_model_1/sequential_4/embedding_3/embedding_lookup/1392*'
_output_shapes
:????????? *
dtype02K
Imovielens_model/ranking_model_1/sequential_4/embedding_3/embedding_lookup?
Rmovielens_model/ranking_model_1/sequential_4/embedding_3/embedding_lookup/IdentityIdentityRmovielens_model/ranking_model_1/sequential_4/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*a
_classW
USloc:@movielens_model/ranking_model_1/sequential_4/embedding_3/embedding_lookup/1392*'
_output_shapes
:????????? 2T
Rmovielens_model/ranking_model_1/sequential_4/embedding_3/embedding_lookup/Identity?
Tmovielens_model/ranking_model_1/sequential_4/embedding_3/embedding_lookup/Identity_1Identity[movielens_model/ranking_model_1/sequential_4/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2V
Tmovielens_model/ranking_model_1/sequential_4/embedding_3/embedding_lookup/Identity_1?
+movielens_model/ranking_model_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2-
+movielens_model/ranking_model_1/concat/axis?
&movielens_model/ranking_model_1/concatConcatV2]movielens_model/ranking_model_1/sequential_3/embedding_2/embedding_lookup/Identity_1:output:0]movielens_model/ranking_model_1/sequential_4/embedding_3/embedding_lookup/Identity_1:output:04movielens_model/ranking_model_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2(
&movielens_model/ranking_model_1/concat?
Jmovielens_model/ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOpReadVariableOpSmovielens_model_ranking_model_1_sequential_5_dense_3_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02L
Jmovielens_model/ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOp?
;movielens_model/ranking_model_1/sequential_5/dense_3/MatMulMatMul/movielens_model/ranking_model_1/concat:output:0Rmovielens_model/ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2=
;movielens_model/ranking_model_1/sequential_5/dense_3/MatMul?
Kmovielens_model/ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOpReadVariableOpTmovielens_model_ranking_model_1_sequential_5_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02M
Kmovielens_model/ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOp?
<movielens_model/ranking_model_1/sequential_5/dense_3/BiasAddBiasAddEmovielens_model/ranking_model_1/sequential_5/dense_3/MatMul:product:0Smovielens_model/ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2>
<movielens_model/ranking_model_1/sequential_5/dense_3/BiasAdd?
9movielens_model/ranking_model_1/sequential_5/dense_3/ReluReluEmovielens_model/ranking_model_1/sequential_5/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2;
9movielens_model/ranking_model_1/sequential_5/dense_3/Relu?
Jmovielens_model/ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOpReadVariableOpSmovielens_model_ranking_model_1_sequential_5_dense_4_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02L
Jmovielens_model/ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOp?
;movielens_model/ranking_model_1/sequential_5/dense_4/MatMulMatMulGmovielens_model/ranking_model_1/sequential_5/dense_3/Relu:activations:0Rmovielens_model/ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2=
;movielens_model/ranking_model_1/sequential_5/dense_4/MatMul?
Kmovielens_model/ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOpReadVariableOpTmovielens_model_ranking_model_1_sequential_5_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02M
Kmovielens_model/ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp?
<movielens_model/ranking_model_1/sequential_5/dense_4/BiasAddBiasAddEmovielens_model/ranking_model_1/sequential_5/dense_4/MatMul:product:0Smovielens_model/ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2>
<movielens_model/ranking_model_1/sequential_5/dense_4/BiasAdd?
9movielens_model/ranking_model_1/sequential_5/dense_4/ReluReluEmovielens_model/ranking_model_1/sequential_5/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2;
9movielens_model/ranking_model_1/sequential_5/dense_4/Relu?
Jmovielens_model/ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOpReadVariableOpSmovielens_model_ranking_model_1_sequential_5_dense_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02L
Jmovielens_model/ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOp?
;movielens_model/ranking_model_1/sequential_5/dense_5/MatMulMatMulGmovielens_model/ranking_model_1/sequential_5/dense_4/Relu:activations:0Rmovielens_model/ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2=
;movielens_model/ranking_model_1/sequential_5/dense_5/MatMul?
Kmovielens_model/ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOpReadVariableOpTmovielens_model_ranking_model_1_sequential_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02M
Kmovielens_model/ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp?
<movielens_model/ranking_model_1/sequential_5/dense_5/BiasAddBiasAddEmovielens_model/ranking_model_1/sequential_5/dense_5/MatMul:product:0Smovielens_model/ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2>
<movielens_model/ranking_model_1/sequential_5/dense_5/BiasAdd?
IdentityIdentityEmovielens_model/ranking_model_1/sequential_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOpJ^movielens_model/ranking_model_1/sequential_3/embedding_2/embedding_lookup[^movielens_model/ranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2J^movielens_model/ranking_model_1/sequential_4/embedding_3/embedding_lookup[^movielens_model/ranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2L^movielens_model/ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOpK^movielens_model/ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOpL^movielens_model/ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOpK^movielens_model/ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOpL^movielens_model/ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOpK^movielens_model/ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2?
Imovielens_model/ranking_model_1/sequential_3/embedding_2/embedding_lookupImovielens_model/ranking_model_1/sequential_3/embedding_2/embedding_lookup2?
Zmovielens_model/ranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2Zmovielens_model/ranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV22?
Imovielens_model/ranking_model_1/sequential_4/embedding_3/embedding_lookupImovielens_model/ranking_model_1/sequential_4/embedding_3/embedding_lookup2?
Zmovielens_model/ranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2Zmovielens_model/ranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV22?
Kmovielens_model/ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOpKmovielens_model/ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOp2?
Jmovielens_model/ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOpJmovielens_model/ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOp2?
Kmovielens_model/ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOpKmovielens_model/ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp2?
Jmovielens_model/ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOpJmovielens_model/ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOp2?
Kmovielens_model/ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOpKmovielens_model/ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp2?
Jmovielens_model/ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOpJmovielens_model/ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOp:L H
#
_output_shapes
:?????????
!
_user_specified_name	movieId:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserId:

_output_shapes
: :

_output_shapes
: 
?
?
F__inference_sequential_3_layer_call_and_return_conditional_losses_1486

inputs>
:string_lookup_2_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_2_none_lookup_lookuptablefindv2_default_value	#
embedding_2_1482:	? 
identity??#embedding_2/StatefulPartitionedCall?-string_lookup_2/None_Lookup/LookupTableFindV2?
-string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_2_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2/
-string_lookup_2/None_Lookup/LookupTableFindV2?
string_lookup_2/IdentityIdentity6string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup_2/Identity?
#embedding_2/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_2/Identity:output:0embedding_2_1482*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_2_layer_call_and_return_conditional_losses_14402%
#embedding_2/StatefulPartitionedCall?
IdentityIdentity,embedding_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp$^embedding_2/StatefulPartitionedCall.^string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2^
-string_lookup_2/None_Lookup/LookupTableFindV2-string_lookup_2/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
A__inference_dense_4_layer_call_and_return_conditional_losses_1671

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_sequential_5_layer_call_and_return_conditional_losses_2825

inputs9
&dense_3_matmul_readvariableop_resource:	@?6
'dense_3_biasadd_readvariableop_resource:	?9
&dense_4_matmul_readvariableop_resource:	?@5
'dense_4_biasadd_readvariableop_resource:@8
&dense_5_matmul_readvariableop_resource:@5
'dense_5_biasadd_readvariableop_resource:
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMulinputs%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_3/BiasAddq
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_3/Relu?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMuldense_3/Relu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_4/BiasAddp
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_4/Relu?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_5/BiasAdds
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
+__inference_sequential_5_layer_call_fn_1809
dense_3_input
unknown:	@?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_5_layer_call_and_return_conditional_losses_17772
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????@
'
_user_specified_namedense_3_input
?
?
__inference__initializer_29816
2key_value_init305_lookuptableimportv2_table_handle.
*key_value_init305_lookuptableimportv2_keys0
,key_value_init305_lookuptableimportv2_values	
identity??%key_value_init305/LookupTableImportV2?
%key_value_init305/LookupTableImportV2LookupTableImportV22key_value_init305_lookuptableimportv2_table_handle*key_value_init305_lookuptableimportv2_keys,key_value_init305_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 2'
%key_value_init305/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identityv
NoOpNoOp&^key_value_init305/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?K:?K2N
%key_value_init305/LookupTableImportV2%key_value_init305/LookupTableImportV2:!

_output_shapes	
:?K:!

_output_shapes	
:?K
?K
?
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_2576
inputs_0
inputs_1K
Gsequential_3_string_lookup_2_none_lookup_lookuptablefindv2_table_handleL
Hsequential_3_string_lookup_2_none_lookup_lookuptablefindv2_default_value	A
.sequential_3_embedding_2_embedding_lookup_2539:	? K
Gsequential_4_string_lookup_3_none_lookup_lookuptablefindv2_table_handleL
Hsequential_4_string_lookup_3_none_lookup_lookuptablefindv2_default_value	A
.sequential_4_embedding_3_embedding_lookup_2548:	?K F
3sequential_5_dense_3_matmul_readvariableop_resource:	@?C
4sequential_5_dense_3_biasadd_readvariableop_resource:	?F
3sequential_5_dense_4_matmul_readvariableop_resource:	?@B
4sequential_5_dense_4_biasadd_readvariableop_resource:@E
3sequential_5_dense_5_matmul_readvariableop_resource:@B
4sequential_5_dense_5_biasadd_readvariableop_resource:
identity??)sequential_3/embedding_2/embedding_lookup?:sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2?)sequential_4/embedding_3/embedding_lookup?:sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2?+sequential_5/dense_3/BiasAdd/ReadVariableOp?*sequential_5/dense_3/MatMul/ReadVariableOp?+sequential_5/dense_4/BiasAdd/ReadVariableOp?*sequential_5/dense_4/MatMul/ReadVariableOp?+sequential_5/dense_5/BiasAdd/ReadVariableOp?*sequential_5/dense_5/MatMul/ReadVariableOp?
:sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Gsequential_3_string_lookup_2_none_lookup_lookuptablefindv2_table_handleinputs_0Hsequential_3_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2<
:sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2?
%sequential_3/string_lookup_2/IdentityIdentityCsequential_3/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2'
%sequential_3/string_lookup_2/Identity?
)sequential_3/embedding_2/embedding_lookupResourceGather.sequential_3_embedding_2_embedding_lookup_2539.sequential_3/string_lookup_2/Identity:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*A
_class7
53loc:@sequential_3/embedding_2/embedding_lookup/2539*'
_output_shapes
:????????? *
dtype02+
)sequential_3/embedding_2/embedding_lookup?
2sequential_3/embedding_2/embedding_lookup/IdentityIdentity2sequential_3/embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@sequential_3/embedding_2/embedding_lookup/2539*'
_output_shapes
:????????? 24
2sequential_3/embedding_2/embedding_lookup/Identity?
4sequential_3/embedding_2/embedding_lookup/Identity_1Identity;sequential_3/embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 26
4sequential_3/embedding_2/embedding_lookup/Identity_1?
:sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2Gsequential_4_string_lookup_3_none_lookup_lookuptablefindv2_table_handleinputs_1Hsequential_4_string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2<
:sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2?
%sequential_4/string_lookup_3/IdentityIdentityCsequential_4/string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2'
%sequential_4/string_lookup_3/Identity?
)sequential_4/embedding_3/embedding_lookupResourceGather.sequential_4_embedding_3_embedding_lookup_2548.sequential_4/string_lookup_3/Identity:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*A
_class7
53loc:@sequential_4/embedding_3/embedding_lookup/2548*'
_output_shapes
:????????? *
dtype02+
)sequential_4/embedding_3/embedding_lookup?
2sequential_4/embedding_3/embedding_lookup/IdentityIdentity2sequential_4/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@sequential_4/embedding_3/embedding_lookup/2548*'
_output_shapes
:????????? 24
2sequential_4/embedding_3/embedding_lookup/Identity?
4sequential_4/embedding_3/embedding_lookup/Identity_1Identity;sequential_4/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 26
4sequential_4/embedding_3/embedding_lookup/Identity_1\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2=sequential_3/embedding_2/embedding_lookup/Identity_1:output:0=sequential_4/embedding_3/embedding_lookup/Identity_1:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
concat?
*sequential_5/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_3_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02,
*sequential_5/dense_3/MatMul/ReadVariableOp?
sequential_5/dense_3/MatMulMatMulconcat:output:02sequential_5/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_3/MatMul?
+sequential_5/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+sequential_5/dense_3/BiasAdd/ReadVariableOp?
sequential_5/dense_3/BiasAddBiasAdd%sequential_5/dense_3/MatMul:product:03sequential_5/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_3/BiasAdd?
sequential_5/dense_3/ReluRelu%sequential_5/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_3/Relu?
*sequential_5/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_4_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02,
*sequential_5/dense_4/MatMul/ReadVariableOp?
sequential_5/dense_4/MatMulMatMul'sequential_5/dense_3/Relu:activations:02sequential_5/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential_5/dense_4/MatMul?
+sequential_5/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+sequential_5/dense_4/BiasAdd/ReadVariableOp?
sequential_5/dense_4/BiasAddBiasAdd%sequential_5/dense_4/MatMul:product:03sequential_5/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential_5/dense_4/BiasAdd?
sequential_5/dense_4/ReluRelu%sequential_5/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_5/dense_4/Relu?
*sequential_5/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02,
*sequential_5/dense_5/MatMul/ReadVariableOp?
sequential_5/dense_5/MatMulMatMul'sequential_5/dense_4/Relu:activations:02sequential_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_5/dense_5/MatMul?
+sequential_5/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_5/dense_5/BiasAdd/ReadVariableOp?
sequential_5/dense_5/BiasAddBiasAdd%sequential_5/dense_5/MatMul:product:03sequential_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_5/dense_5/BiasAdd?
IdentityIdentity%sequential_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp*^sequential_3/embedding_2/embedding_lookup;^sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2*^sequential_4/embedding_3/embedding_lookup;^sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2,^sequential_5/dense_3/BiasAdd/ReadVariableOp+^sequential_5/dense_3/MatMul/ReadVariableOp,^sequential_5/dense_4/BiasAdd/ReadVariableOp+^sequential_5/dense_4/MatMul/ReadVariableOp,^sequential_5/dense_5/BiasAdd/ReadVariableOp+^sequential_5/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2V
)sequential_3/embedding_2/embedding_lookup)sequential_3/embedding_2/embedding_lookup2x
:sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2:sequential_3/string_lookup_2/None_Lookup/LookupTableFindV22V
)sequential_4/embedding_3/embedding_lookup)sequential_4/embedding_3/embedding_lookup2x
:sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2:sequential_4/string_lookup_3/None_Lookup/LookupTableFindV22Z
+sequential_5/dense_3/BiasAdd/ReadVariableOp+sequential_5/dense_3/BiasAdd/ReadVariableOp2X
*sequential_5/dense_3/MatMul/ReadVariableOp*sequential_5/dense_3/MatMul/ReadVariableOp2Z
+sequential_5/dense_4/BiasAdd/ReadVariableOp+sequential_5/dense_4/BiasAdd/ReadVariableOp2X
*sequential_5/dense_4/MatMul/ReadVariableOp*sequential_5/dense_4/MatMul/ReadVariableOp2Z
+sequential_5/dense_5/BiasAdd/ReadVariableOp+sequential_5/dense_5/BiasAdd/ReadVariableOp2X
*sequential_5/dense_5/MatMul/ReadVariableOp*sequential_5/dense_5/MatMul/ReadVariableOp:M I
#
_output_shapes
:?????????
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/1:

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_sequential_4_layer_call_fn_2777

inputs
unknown
	unknown_0	
	unknown_1:	?K 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_15942
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?5
?	
__inference__traced_save_3099
file_prefix+
'savev2_adagrad_iter_read_readvariableop	,
(savev2_adagrad_decay_read_readvariableop4
0savev2_adagrad_learning_rate_read_readvariableop5
1savev2_embedding_2_embeddings_read_readvariableop5
1savev2_embedding_3_embeddings_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopI
Esavev2_adagrad_embedding_2_embeddings_accumulator_read_readvariableopI
Esavev2_adagrad_embedding_3_embeddings_accumulator_read_readvariableopA
=savev2_adagrad_dense_3_kernel_accumulator_read_readvariableop?
;savev2_adagrad_dense_3_bias_accumulator_read_readvariableopA
=savev2_adagrad_dense_4_kernel_accumulator_read_readvariableop?
;savev2_adagrad_dense_4_bias_accumulator_read_readvariableopA
=savev2_adagrad_dense_5_kernel_accumulator_read_readvariableop?
;savev2_adagrad_dense_5_bias_accumulator_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB8task/_ranking_metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB8task/_ranking_metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBLvariables/0/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/1/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/2/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/3/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/4/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/5/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/6/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/7/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_adagrad_iter_read_readvariableop(savev2_adagrad_decay_read_readvariableop0savev2_adagrad_learning_rate_read_readvariableop1savev2_embedding_2_embeddings_read_readvariableop1savev2_embedding_3_embeddings_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopEsavev2_adagrad_embedding_2_embeddings_accumulator_read_readvariableopEsavev2_adagrad_embedding_3_embeddings_accumulator_read_readvariableop=savev2_adagrad_dense_3_kernel_accumulator_read_readvariableop;savev2_adagrad_dense_3_bias_accumulator_read_readvariableop=savev2_adagrad_dense_4_kernel_accumulator_read_readvariableop;savev2_adagrad_dense_4_bias_accumulator_read_readvariableop=savev2_adagrad_dense_5_kernel_accumulator_read_readvariableop;savev2_adagrad_dense_5_bias_accumulator_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *$
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : :	? :	?K :	@?:?:	?@:@:@:: : :	? :	?K :	@?:?:	?@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	? :%!

_output_shapes
:	?K :%!

_output_shapes
:	@?:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 	

_output_shapes
:@:$
 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	? :%!

_output_shapes
:	?K :%!

_output_shapes
:	@?:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: 
?
?
.__inference_movielens_model_layer_call_fn_2167
movieid

userid
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	?K 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmovieiduseridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_movielens_model_layer_call_and_return_conditional_losses_21402
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	movieId:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserId:

_output_shapes
: :

_output_shapes
: 
?K
?
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_2621
inputs_0
inputs_1K
Gsequential_3_string_lookup_2_none_lookup_lookuptablefindv2_table_handleL
Hsequential_3_string_lookup_2_none_lookup_lookuptablefindv2_default_value	A
.sequential_3_embedding_2_embedding_lookup_2584:	? K
Gsequential_4_string_lookup_3_none_lookup_lookuptablefindv2_table_handleL
Hsequential_4_string_lookup_3_none_lookup_lookuptablefindv2_default_value	A
.sequential_4_embedding_3_embedding_lookup_2593:	?K F
3sequential_5_dense_3_matmul_readvariableop_resource:	@?C
4sequential_5_dense_3_biasadd_readvariableop_resource:	?F
3sequential_5_dense_4_matmul_readvariableop_resource:	?@B
4sequential_5_dense_4_biasadd_readvariableop_resource:@E
3sequential_5_dense_5_matmul_readvariableop_resource:@B
4sequential_5_dense_5_biasadd_readvariableop_resource:
identity??)sequential_3/embedding_2/embedding_lookup?:sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2?)sequential_4/embedding_3/embedding_lookup?:sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2?+sequential_5/dense_3/BiasAdd/ReadVariableOp?*sequential_5/dense_3/MatMul/ReadVariableOp?+sequential_5/dense_4/BiasAdd/ReadVariableOp?*sequential_5/dense_4/MatMul/ReadVariableOp?+sequential_5/dense_5/BiasAdd/ReadVariableOp?*sequential_5/dense_5/MatMul/ReadVariableOp?
:sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Gsequential_3_string_lookup_2_none_lookup_lookuptablefindv2_table_handleinputs_0Hsequential_3_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2<
:sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2?
%sequential_3/string_lookup_2/IdentityIdentityCsequential_3/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2'
%sequential_3/string_lookup_2/Identity?
)sequential_3/embedding_2/embedding_lookupResourceGather.sequential_3_embedding_2_embedding_lookup_2584.sequential_3/string_lookup_2/Identity:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*A
_class7
53loc:@sequential_3/embedding_2/embedding_lookup/2584*'
_output_shapes
:????????? *
dtype02+
)sequential_3/embedding_2/embedding_lookup?
2sequential_3/embedding_2/embedding_lookup/IdentityIdentity2sequential_3/embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@sequential_3/embedding_2/embedding_lookup/2584*'
_output_shapes
:????????? 24
2sequential_3/embedding_2/embedding_lookup/Identity?
4sequential_3/embedding_2/embedding_lookup/Identity_1Identity;sequential_3/embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 26
4sequential_3/embedding_2/embedding_lookup/Identity_1?
:sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2Gsequential_4_string_lookup_3_none_lookup_lookuptablefindv2_table_handleinputs_1Hsequential_4_string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2<
:sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2?
%sequential_4/string_lookup_3/IdentityIdentityCsequential_4/string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2'
%sequential_4/string_lookup_3/Identity?
)sequential_4/embedding_3/embedding_lookupResourceGather.sequential_4_embedding_3_embedding_lookup_2593.sequential_4/string_lookup_3/Identity:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*A
_class7
53loc:@sequential_4/embedding_3/embedding_lookup/2593*'
_output_shapes
:????????? *
dtype02+
)sequential_4/embedding_3/embedding_lookup?
2sequential_4/embedding_3/embedding_lookup/IdentityIdentity2sequential_4/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@sequential_4/embedding_3/embedding_lookup/2593*'
_output_shapes
:????????? 24
2sequential_4/embedding_3/embedding_lookup/Identity?
4sequential_4/embedding_3/embedding_lookup/Identity_1Identity;sequential_4/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 26
4sequential_4/embedding_3/embedding_lookup/Identity_1\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2=sequential_3/embedding_2/embedding_lookup/Identity_1:output:0=sequential_4/embedding_3/embedding_lookup/Identity_1:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
concat?
*sequential_5/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_3_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02,
*sequential_5/dense_3/MatMul/ReadVariableOp?
sequential_5/dense_3/MatMulMatMulconcat:output:02sequential_5/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_3/MatMul?
+sequential_5/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+sequential_5/dense_3/BiasAdd/ReadVariableOp?
sequential_5/dense_3/BiasAddBiasAdd%sequential_5/dense_3/MatMul:product:03sequential_5/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_3/BiasAdd?
sequential_5/dense_3/ReluRelu%sequential_5/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_3/Relu?
*sequential_5/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_4_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02,
*sequential_5/dense_4/MatMul/ReadVariableOp?
sequential_5/dense_4/MatMulMatMul'sequential_5/dense_3/Relu:activations:02sequential_5/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential_5/dense_4/MatMul?
+sequential_5/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+sequential_5/dense_4/BiasAdd/ReadVariableOp?
sequential_5/dense_4/BiasAddBiasAdd%sequential_5/dense_4/MatMul:product:03sequential_5/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential_5/dense_4/BiasAdd?
sequential_5/dense_4/ReluRelu%sequential_5/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_5/dense_4/Relu?
*sequential_5/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02,
*sequential_5/dense_5/MatMul/ReadVariableOp?
sequential_5/dense_5/MatMulMatMul'sequential_5/dense_4/Relu:activations:02sequential_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_5/dense_5/MatMul?
+sequential_5/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_5/dense_5/BiasAdd/ReadVariableOp?
sequential_5/dense_5/BiasAddBiasAdd%sequential_5/dense_5/MatMul:product:03sequential_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_5/dense_5/BiasAdd?
IdentityIdentity%sequential_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp*^sequential_3/embedding_2/embedding_lookup;^sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2*^sequential_4/embedding_3/embedding_lookup;^sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2,^sequential_5/dense_3/BiasAdd/ReadVariableOp+^sequential_5/dense_3/MatMul/ReadVariableOp,^sequential_5/dense_4/BiasAdd/ReadVariableOp+^sequential_5/dense_4/MatMul/ReadVariableOp,^sequential_5/dense_5/BiasAdd/ReadVariableOp+^sequential_5/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2V
)sequential_3/embedding_2/embedding_lookup)sequential_3/embedding_2/embedding_lookup2x
:sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2:sequential_3/string_lookup_2/None_Lookup/LookupTableFindV22V
)sequential_4/embedding_3/embedding_lookup)sequential_4/embedding_3/embedding_lookup2x
:sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2:sequential_4/string_lookup_3/None_Lookup/LookupTableFindV22Z
+sequential_5/dense_3/BiasAdd/ReadVariableOp+sequential_5/dense_3/BiasAdd/ReadVariableOp2X
*sequential_5/dense_3/MatMul/ReadVariableOp*sequential_5/dense_3/MatMul/ReadVariableOp2Z
+sequential_5/dense_4/BiasAdd/ReadVariableOp+sequential_5/dense_4/BiasAdd/ReadVariableOp2X
*sequential_5/dense_4/MatMul/ReadVariableOp*sequential_5/dense_4/MatMul/ReadVariableOp2Z
+sequential_5/dense_5/BiasAdd/ReadVariableOp+sequential_5/dense_5/BiasAdd/ReadVariableOp2X
*sequential_5/dense_5/MatMul/ReadVariableOp*sequential_5/dense_5/MatMul/ReadVariableOp:M I
#
_output_shapes
:?????????
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/1:

_output_shapes
: :

_output_shapes
: 
?	
?
E__inference_embedding_3_layer_call_and_return_conditional_losses_2884

inputs	(
embedding_lookup_2878:	?K 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_2878inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*(
_class
loc:@embedding_lookup/2878*'
_output_shapes
:????????? *
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@embedding_lookup/2878*'
_output_shapes
:????????? 2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
A__inference_dense_5_layer_call_and_return_conditional_losses_1687

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
F__inference_sequential_5_layer_call_and_return_conditional_losses_1828
dense_3_input
dense_3_1812:	@?
dense_3_1814:	?
dense_4_1817:	?@
dense_4_1819:@
dense_5_1822:@
dense_5_1824:
identity??dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCalldense_3_inputdense_3_1812dense_3_1814*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_16542!
dense_3/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_1817dense_4_1819*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_16712!
dense_4/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_1822dense_5_1824*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_16872!
dense_5/StatefulPartitionedCall?
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:V R
'
_output_shapes
:?????????@
'
_user_specified_namedense_3_input
?
?
A__inference_dense_3_layer_call_and_return_conditional_losses_2902

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_1980

inputs
inputs_1
sequential_3_1950
sequential_3_1952	$
sequential_3_1954:	? 
sequential_4_1957
sequential_4_1959	$
sequential_4_1961:	?K $
sequential_5_1966:	@? 
sequential_5_1968:	?$
sequential_5_1970:	?@
sequential_5_1972:@#
sequential_5_1974:@
sequential_5_1976:
identity??$sequential_3/StatefulPartitionedCall?$sequential_4/StatefulPartitionedCall?$sequential_5/StatefulPartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCallinputssequential_3_1950sequential_3_1952sequential_3_1954*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_14862&
$sequential_3/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallinputs_1sequential_4_1957sequential_4_1959sequential_4_1961*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_15942&
$sequential_4/StatefulPartitionedCall\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2-sequential_3/StatefulPartitionedCall:output:0-sequential_4/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
concat?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0sequential_5_1966sequential_5_1968sequential_5_1970sequential_5_1972sequential_5_1974sequential_5_1976*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_5_layer_call_and_return_conditional_losses_17772&
$sequential_5/StatefulPartitionedCall?
IdentityIdentity-sequential_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp%^sequential_3/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_29946
2key_value_init283_lookuptableimportv2_table_handle.
*key_value_init283_lookuptableimportv2_keys0
,key_value_init283_lookuptableimportv2_values	
identity??%key_value_init283/LookupTableImportV2?
%key_value_init283/LookupTableImportV2LookupTableImportV22key_value_init283_lookuptableimportv2_table_handle*key_value_init283_lookuptableimportv2_keys,key_value_init283_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 2'
%key_value_init283/LookupTableImportV2S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identityv
NoOpNoOp&^key_value_init283/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2N
%key_value_init283/LookupTableImportV2%key_value_init283/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
?
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_1886

inputs
inputs_1
sequential_3_1856
sequential_3_1858	$
sequential_3_1860:	? 
sequential_4_1863
sequential_4_1865	$
sequential_4_1867:	?K $
sequential_5_1872:	@? 
sequential_5_1874:	?$
sequential_5_1876:	?@
sequential_5_1878:@#
sequential_5_1880:@
sequential_5_1882:
identity??$sequential_3/StatefulPartitionedCall?$sequential_4/StatefulPartitionedCall?$sequential_5/StatefulPartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCallinputssequential_3_1856sequential_3_1858sequential_3_1860*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_14452&
$sequential_3/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallinputs_1sequential_4_1863sequential_4_1865sequential_4_1867*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_15532&
$sequential_4/StatefulPartitionedCall\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2-sequential_3/StatefulPartitionedCall:output:0-sequential_4/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
concat?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0sequential_5_1872sequential_5_1874sequential_5_1876sequential_5_1878sequential_5_1880sequential_5_1882*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_5_layer_call_and_return_conditional_losses_16942&
$sequential_5/StatefulPartitionedCall?
IdentityIdentity-sequential_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp%^sequential_3/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?
?
F__inference_sequential_5_layer_call_and_return_conditional_losses_1847
dense_3_input
dense_3_1831:	@?
dense_3_1833:	?
dense_4_1836:	?@
dense_4_1838:@
dense_5_1841:@
dense_5_1843:
identity??dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCalldense_3_inputdense_3_1831dense_3_1833*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_16542!
dense_3/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_1836dense_4_1838*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_16712!
dense_4/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_1841dense_5_1843*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_16872!
dense_5/StatefulPartitionedCall?
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:V R
'
_output_shapes
:?????????@
'
_user_specified_namedense_3_input
?
?
F__inference_sequential_5_layer_call_and_return_conditional_losses_1777

inputs
dense_3_1761:	@?
dense_3_1763:	?
dense_4_1766:	?@
dense_4_1768:@
dense_5_1771:@
dense_5_1773:
identity??dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_1761dense_3_1763*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_16542!
dense_3/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_1766dense_4_1768*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_16712!
dense_4/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_1771dense_5_1773*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_16872!
dense_5/StatefulPartitionedCall?
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
+__inference_sequential_3_layer_call_fn_1454
string_lookup_2_input
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_2_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_14452
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_2_input:

_output_shapes
: 
?

?
A__inference_dense_5_layer_call_and_return_conditional_losses_2941

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
F__inference_sequential_3_layer_call_and_return_conditional_losses_1517
string_lookup_2_input>
:string_lookup_2_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_2_none_lookup_lookuptablefindv2_default_value	#
embedding_2_1513:	? 
identity??#embedding_2/StatefulPartitionedCall?-string_lookup_2/None_Lookup/LookupTableFindV2?
-string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_2_none_lookup_lookuptablefindv2_table_handlestring_lookup_2_input;string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2/
-string_lookup_2/None_Lookup/LookupTableFindV2?
string_lookup_2/IdentityIdentity6string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup_2/Identity?
#embedding_2/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_2/Identity:output:0embedding_2_1513*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_2_layer_call_and_return_conditional_losses_14402%
#embedding_2/StatefulPartitionedCall?
IdentityIdentity,embedding_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp$^embedding_2/StatefulPartitionedCall.^string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2^
-string_lookup_2/None_Lookup/LookupTableFindV2-string_lookup_2/None_Lookup/LookupTableFindV2:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_2_input:

_output_shapes
: 
?
?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2317
movieid

userid
ranking_model_1_2291
ranking_model_1_2293	'
ranking_model_1_2295:	? 
ranking_model_1_2297
ranking_model_1_2299	'
ranking_model_1_2301:	?K '
ranking_model_1_2303:	@?#
ranking_model_1_2305:	?'
ranking_model_1_2307:	?@"
ranking_model_1_2309:@&
ranking_model_1_2311:@"
ranking_model_1_2313:
identity??'ranking_model_1/StatefulPartitionedCall?
'ranking_model_1/StatefulPartitionedCallStatefulPartitionedCalluseridmovieidranking_model_1_2291ranking_model_1_2293ranking_model_1_2295ranking_model_1_2297ranking_model_1_2299ranking_model_1_2301ranking_model_1_2303ranking_model_1_2305ranking_model_1_2307ranking_model_1_2309ranking_model_1_2311ranking_model_1_2313*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_18862)
'ranking_model_1/StatefulPartitionedCall?
IdentityIdentity0ranking_model_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityx
NoOpNoOp(^ranking_model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2R
'ranking_model_1/StatefulPartitionedCall'ranking_model_1/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	movieId:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserId:

_output_shapes
: :

_output_shapes
: 
?	
?
E__inference_embedding_2_layer_call_and_return_conditional_losses_2868

inputs	(
embedding_lookup_2862:	? 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_2862inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*(
_class
loc:@embedding_lookup/2862*'
_output_shapes
:????????? *
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@embedding_lookup/2862*'
_output_shapes
:????????? 2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?^
?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2426
features_movieid
features_userid[
Wranking_model_1_sequential_3_string_lookup_2_none_lookup_lookuptablefindv2_table_handle\
Xranking_model_1_sequential_3_string_lookup_2_none_lookup_lookuptablefindv2_default_value	Q
>ranking_model_1_sequential_3_embedding_2_embedding_lookup_2389:	? [
Wranking_model_1_sequential_4_string_lookup_3_none_lookup_lookuptablefindv2_table_handle\
Xranking_model_1_sequential_4_string_lookup_3_none_lookup_lookuptablefindv2_default_value	Q
>ranking_model_1_sequential_4_embedding_3_embedding_lookup_2398:	?K V
Cranking_model_1_sequential_5_dense_3_matmul_readvariableop_resource:	@?S
Dranking_model_1_sequential_5_dense_3_biasadd_readvariableop_resource:	?V
Cranking_model_1_sequential_5_dense_4_matmul_readvariableop_resource:	?@R
Dranking_model_1_sequential_5_dense_4_biasadd_readvariableop_resource:@U
Cranking_model_1_sequential_5_dense_5_matmul_readvariableop_resource:@R
Dranking_model_1_sequential_5_dense_5_biasadd_readvariableop_resource:
identity??9ranking_model_1/sequential_3/embedding_2/embedding_lookup?Jranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2?9ranking_model_1/sequential_4/embedding_3/embedding_lookup?Jranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2?;ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOp?:ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOp?;ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp?:ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOp?;ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp?:ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOp?
Jranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Wranking_model_1_sequential_3_string_lookup_2_none_lookup_lookuptablefindv2_table_handlefeatures_useridXranking_model_1_sequential_3_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2L
Jranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2?
5ranking_model_1/sequential_3/string_lookup_2/IdentityIdentitySranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????27
5ranking_model_1/sequential_3/string_lookup_2/Identity?
9ranking_model_1/sequential_3/embedding_2/embedding_lookupResourceGather>ranking_model_1_sequential_3_embedding_2_embedding_lookup_2389>ranking_model_1/sequential_3/string_lookup_2/Identity:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*Q
_classG
ECloc:@ranking_model_1/sequential_3/embedding_2/embedding_lookup/2389*'
_output_shapes
:????????? *
dtype02;
9ranking_model_1/sequential_3/embedding_2/embedding_lookup?
Branking_model_1/sequential_3/embedding_2/embedding_lookup/IdentityIdentityBranking_model_1/sequential_3/embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*Q
_classG
ECloc:@ranking_model_1/sequential_3/embedding_2/embedding_lookup/2389*'
_output_shapes
:????????? 2D
Branking_model_1/sequential_3/embedding_2/embedding_lookup/Identity?
Dranking_model_1/sequential_3/embedding_2/embedding_lookup/Identity_1IdentityKranking_model_1/sequential_3/embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2F
Dranking_model_1/sequential_3/embedding_2/embedding_lookup/Identity_1?
Jranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2Wranking_model_1_sequential_4_string_lookup_3_none_lookup_lookuptablefindv2_table_handlefeatures_movieidXranking_model_1_sequential_4_string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2L
Jranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2?
5ranking_model_1/sequential_4/string_lookup_3/IdentityIdentitySranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????27
5ranking_model_1/sequential_4/string_lookup_3/Identity?
9ranking_model_1/sequential_4/embedding_3/embedding_lookupResourceGather>ranking_model_1_sequential_4_embedding_3_embedding_lookup_2398>ranking_model_1/sequential_4/string_lookup_3/Identity:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*Q
_classG
ECloc:@ranking_model_1/sequential_4/embedding_3/embedding_lookup/2398*'
_output_shapes
:????????? *
dtype02;
9ranking_model_1/sequential_4/embedding_3/embedding_lookup?
Branking_model_1/sequential_4/embedding_3/embedding_lookup/IdentityIdentityBranking_model_1/sequential_4/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*Q
_classG
ECloc:@ranking_model_1/sequential_4/embedding_3/embedding_lookup/2398*'
_output_shapes
:????????? 2D
Branking_model_1/sequential_4/embedding_3/embedding_lookup/Identity?
Dranking_model_1/sequential_4/embedding_3/embedding_lookup/Identity_1IdentityKranking_model_1/sequential_4/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2F
Dranking_model_1/sequential_4/embedding_3/embedding_lookup/Identity_1|
ranking_model_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
ranking_model_1/concat/axis?
ranking_model_1/concatConcatV2Mranking_model_1/sequential_3/embedding_2/embedding_lookup/Identity_1:output:0Mranking_model_1/sequential_4/embedding_3/embedding_lookup/Identity_1:output:0$ranking_model_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
ranking_model_1/concat?
:ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOpReadVariableOpCranking_model_1_sequential_5_dense_3_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02<
:ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOp?
+ranking_model_1/sequential_5/dense_3/MatMulMatMulranking_model_1/concat:output:0Branking_model_1/sequential_5/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+ranking_model_1/sequential_5/dense_3/MatMul?
;ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOpReadVariableOpDranking_model_1_sequential_5_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOp?
,ranking_model_1/sequential_5/dense_3/BiasAddBiasAdd5ranking_model_1/sequential_5/dense_3/MatMul:product:0Cranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,ranking_model_1/sequential_5/dense_3/BiasAdd?
)ranking_model_1/sequential_5/dense_3/ReluRelu5ranking_model_1/sequential_5/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2+
)ranking_model_1/sequential_5/dense_3/Relu?
:ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOpReadVariableOpCranking_model_1_sequential_5_dense_4_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02<
:ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOp?
+ranking_model_1/sequential_5/dense_4/MatMulMatMul7ranking_model_1/sequential_5/dense_3/Relu:activations:0Branking_model_1/sequential_5/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2-
+ranking_model_1/sequential_5/dense_4/MatMul?
;ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOpReadVariableOpDranking_model_1_sequential_5_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02=
;ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp?
,ranking_model_1/sequential_5/dense_4/BiasAddBiasAdd5ranking_model_1/sequential_5/dense_4/MatMul:product:0Cranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2.
,ranking_model_1/sequential_5/dense_4/BiasAdd?
)ranking_model_1/sequential_5/dense_4/ReluRelu5ranking_model_1/sequential_5/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2+
)ranking_model_1/sequential_5/dense_4/Relu?
:ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOpReadVariableOpCranking_model_1_sequential_5_dense_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02<
:ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOp?
+ranking_model_1/sequential_5/dense_5/MatMulMatMul7ranking_model_1/sequential_5/dense_4/Relu:activations:0Branking_model_1/sequential_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2-
+ranking_model_1/sequential_5/dense_5/MatMul?
;ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOpReadVariableOpDranking_model_1_sequential_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02=
;ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp?
,ranking_model_1/sequential_5/dense_5/BiasAddBiasAdd5ranking_model_1/sequential_5/dense_5/MatMul:product:0Cranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2.
,ranking_model_1/sequential_5/dense_5/BiasAdd?
IdentityIdentity5ranking_model_1/sequential_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp:^ranking_model_1/sequential_3/embedding_2/embedding_lookupK^ranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2:^ranking_model_1/sequential_4/embedding_3/embedding_lookupK^ranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2<^ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOp;^ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOp<^ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp;^ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOp<^ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp;^ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2v
9ranking_model_1/sequential_3/embedding_2/embedding_lookup9ranking_model_1/sequential_3/embedding_2/embedding_lookup2?
Jranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV2Jranking_model_1/sequential_3/string_lookup_2/None_Lookup/LookupTableFindV22v
9ranking_model_1/sequential_4/embedding_3/embedding_lookup9ranking_model_1/sequential_4/embedding_3/embedding_lookup2?
Jranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV2Jranking_model_1/sequential_4/string_lookup_3/None_Lookup/LookupTableFindV22z
;ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOp;ranking_model_1/sequential_5/dense_3/BiasAdd/ReadVariableOp2x
:ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOp:ranking_model_1/sequential_5/dense_3/MatMul/ReadVariableOp2z
;ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp;ranking_model_1/sequential_5/dense_4/BiasAdd/ReadVariableOp2x
:ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOp:ranking_model_1/sequential_5/dense_4/MatMul/ReadVariableOp2z
;ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp;ranking_model_1/sequential_5/dense_5/BiasAdd/ReadVariableOp2x
:ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOp:ranking_model_1/sequential_5/dense_5/MatMul/ReadVariableOp:U Q
#
_output_shapes
:?????????
*
_user_specified_namefeatures/movieId:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/userId:

_output_shapes
: :

_output_shapes
: 
?
+
__inference__destroyer_2986
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
F__inference_sequential_4_layer_call_and_return_conditional_losses_1636
string_lookup_3_input>
:string_lookup_3_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_3_none_lookup_lookuptablefindv2_default_value	#
embedding_3_1632:	?K 
identity??#embedding_3/StatefulPartitionedCall?-string_lookup_3/None_Lookup/LookupTableFindV2?
-string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_3_none_lookup_lookuptablefindv2_table_handlestring_lookup_3_input;string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2/
-string_lookup_3/None_Lookup/LookupTableFindV2?
string_lookup_3/IdentityIdentity6string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup_3/Identity?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_3/Identity:output:0embedding_3_1632*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_3_layer_call_and_return_conditional_losses_15482%
#embedding_3/StatefulPartitionedCall?
IdentityIdentity,embedding_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp$^embedding_3/StatefulPartitionedCall.^string_lookup_3/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2^
-string_lookup_3/None_Lookup/LookupTableFindV2-string_lookup_3/None_Lookup/LookupTableFindV2:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_3_input:

_output_shapes
: 
?
?
"__inference_signature_wrapper_2381
movieid

userid
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	?K 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmovieiduseridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__wrapped_model_14202
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	movieId:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserId:

_output_shapes
: :

_output_shapes
: 
?
?
.__inference_ranking_model_1_layer_call_fn_1913
input_1
input_2
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	?K 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_18862
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:LH
#
_output_shapes
:?????????
!
_user_specified_name	input_2:

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_sequential_3_layer_call_fn_1506
string_lookup_2_input
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_2_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_14862
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_2_input:

_output_shapes
: 
?
?
F__inference_sequential_5_layer_call_and_return_conditional_losses_1694

inputs
dense_3_1655:	@?
dense_3_1657:	?
dense_4_1672:	?@
dense_4_1674:@
dense_5_1688:@
dense_5_1690:
identity??dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_1655dense_3_1657*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_16542!
dense_3/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_1672dense_4_1674*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_16712!
dense_4/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_1688dense_5_1690*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_16872!
dense_5/StatefulPartitionedCall?
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
F__inference_sequential_3_layer_call_and_return_conditional_losses_1528
string_lookup_2_input>
:string_lookup_2_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_2_none_lookup_lookuptablefindv2_default_value	#
embedding_2_1524:	? 
identity??#embedding_2/StatefulPartitionedCall?-string_lookup_2/None_Lookup/LookupTableFindV2?
-string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_2_none_lookup_lookuptablefindv2_table_handlestring_lookup_2_input;string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2/
-string_lookup_2/None_Lookup/LookupTableFindV2?
string_lookup_2/IdentityIdentity6string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup_2/Identity?
#embedding_2/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_2/Identity:output:0embedding_2_1524*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_2_layer_call_and_return_conditional_losses_14402%
#embedding_2/StatefulPartitionedCall?
IdentityIdentity,embedding_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp$^embedding_2/StatefulPartitionedCall.^string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2^
-string_lookup_2/None_Lookup/LookupTableFindV2-string_lookup_2/None_Lookup/LookupTableFindV2:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_2_input:

_output_shapes
: 
?
?
+__inference_sequential_4_layer_call_fn_1562
string_lookup_3_input
unknown
	unknown_0	
	unknown_1:	?K 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_3_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_15532
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_3_input:

_output_shapes
: 
?	
?
E__inference_embedding_3_layer_call_and_return_conditional_losses_1548

inputs	(
embedding_lookup_1542:	?K 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_1542inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*(
_class
loc:@embedding_lookup/1542*'
_output_shapes
:????????? *
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@embedding_lookup/1542*'
_output_shapes
:????????? 2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_sequential_4_layer_call_and_return_conditional_losses_2742

inputs>
:string_lookup_3_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_3_none_lookup_lookuptablefindv2_default_value	4
!embedding_3_embedding_lookup_2736:	?K 
identity??embedding_3/embedding_lookup?-string_lookup_3/None_Lookup/LookupTableFindV2?
-string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_3_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2/
-string_lookup_3/None_Lookup/LookupTableFindV2?
string_lookup_3/IdentityIdentity6string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup_3/Identity?
embedding_3/embedding_lookupResourceGather!embedding_3_embedding_lookup_2736!string_lookup_3/Identity:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*4
_class*
(&loc:@embedding_3/embedding_lookup/2736*'
_output_shapes
:????????? *
dtype02
embedding_3/embedding_lookup?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*4
_class*
(&loc:@embedding_3/embedding_lookup/2736*'
_output_shapes
:????????? 2'
%embedding_3/embedding_lookup/Identity?
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2)
'embedding_3/embedding_lookup/Identity_1?
IdentityIdentity0embedding_3/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^embedding_3/embedding_lookup.^string_lookup_3/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2^
-string_lookup_3/None_Lookup/LookupTableFindV2-string_lookup_3/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
9
__inference__creator_2973
identity??
hash_tabley

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name306*
value_dtype0	2

hash_tablec
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: 2

Identity[
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2347
movieid

userid
ranking_model_1_2321
ranking_model_1_2323	'
ranking_model_1_2325:	? 
ranking_model_1_2327
ranking_model_1_2329	'
ranking_model_1_2331:	?K '
ranking_model_1_2333:	@?#
ranking_model_1_2335:	?'
ranking_model_1_2337:	?@"
ranking_model_1_2339:@&
ranking_model_1_2341:@"
ranking_model_1_2343:
identity??'ranking_model_1/StatefulPartitionedCall?
'ranking_model_1/StatefulPartitionedCallStatefulPartitionedCalluseridmovieidranking_model_1_2321ranking_model_1_2323ranking_model_1_2325ranking_model_1_2327ranking_model_1_2329ranking_model_1_2331ranking_model_1_2333ranking_model_1_2335ranking_model_1_2337ranking_model_1_2339ranking_model_1_2341ranking_model_1_2343*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_19802)
'ranking_model_1/StatefulPartitionedCall?
IdentityIdentity0ranking_model_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityx
NoOpNoOp(^ranking_model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2R
'ranking_model_1/StatefulPartitionedCall'ranking_model_1/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	movieId:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserId:

_output_shapes
: :

_output_shapes
: 
?
?
F__inference_sequential_3_layer_call_and_return_conditional_losses_2694

inputs>
:string_lookup_2_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_2_none_lookup_lookuptablefindv2_default_value	4
!embedding_2_embedding_lookup_2688:	? 
identity??embedding_2/embedding_lookup?-string_lookup_2/None_Lookup/LookupTableFindV2?
-string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_2_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2/
-string_lookup_2/None_Lookup/LookupTableFindV2?
string_lookup_2/IdentityIdentity6string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup_2/Identity?
embedding_2/embedding_lookupResourceGather!embedding_2_embedding_lookup_2688!string_lookup_2/Identity:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*4
_class*
(&loc:@embedding_2/embedding_lookup/2688*'
_output_shapes
:????????? *
dtype02
embedding_2/embedding_lookup?
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*4
_class*
(&loc:@embedding_2/embedding_lookup/2688*'
_output_shapes
:????????? 2'
%embedding_2/embedding_lookup/Identity?
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2)
'embedding_2/embedding_lookup/Identity_1?
IdentityIdentity0embedding_2/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^embedding_2/embedding_lookup.^string_lookup_2/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2^
-string_lookup_2/None_Lookup/LookupTableFindV2-string_lookup_2/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?	
?
+__inference_sequential_5_layer_call_fn_2859

inputs
unknown:	@?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_5_layer_call_and_return_conditional_losses_17772
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
+__inference_sequential_3_layer_call_fn_2718

inputs
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_14452
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?

*__inference_embedding_3_layer_call_fn_2891

inputs	
unknown:	?K 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_3_layer_call_and_return_conditional_losses_15482
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference__initializer_29636
2key_value_init283_lookuptableimportv2_table_handle.
*key_value_init283_lookuptableimportv2_keys0
,key_value_init283_lookuptableimportv2_values	
identity??%key_value_init283/LookupTableImportV2?
%key_value_init283/LookupTableImportV2LookupTableImportV22key_value_init283_lookuptableimportv2_table_handle*key_value_init283_lookuptableimportv2_keys,key_value_init283_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 2'
%key_value_init283/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identityv
NoOpNoOp&^key_value_init283/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2N
%key_value_init283/LookupTableImportV2%key_value_init283/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?"?L
saver_filename:0StatefulPartitionedCall_3:0StatefulPartitionedCall_48"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
7
movieId,
serving_default_movieId:0?????????
5
userId+
serving_default_userId:0?????????>
output_12
StatefulPartitionedCall_2:0?????????tensorflow/serving/predict:??
?
ranking_model
task
	optimizer
loss
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"
_tf_keras_model
?

user_embeddings
movie_embeddings
ratings
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_model
?
_ranking_metrics
_prediction_metrics
_label_metrics
_loss_metrics
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
iter
	decay
learning_rateaccumulator?accumulator?accumulator?accumulator? accumulator?!accumulator?"accumulator?#accumulator?"
	optimizer
 "
trackable_dict_wrapper
X
0
1
2
3
 4
!5
"6
#7"
trackable_list_wrapper
X
0
1
2
3
 4
!5
"6
#7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
$non_trainable_variables
%metrics
trainable_variables
&layer_regularization_losses
'layer_metrics

(layers
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
)layer-0
*layer_with_weights-0
*layer-1
+	variables
,trainable_variables
-regularization_losses
.	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_sequential
?
/layer-0
0layer_with_weights-0
0layer-1
1	variables
2trainable_variables
3regularization_losses
4	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_sequential
?
5layer_with_weights-0
5layer-0
6layer_with_weights-1
6layer-1
7layer_with_weights-2
7layer-2
8	variables
9trainable_variables
:regularization_losses
;	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_sequential
X
0
1
2
3
 4
!5
"6
#7"
trackable_list_wrapper
X
0
1
2
3
 4
!5
"6
#7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
<non_trainable_variables
=metrics
trainable_variables
>layer_regularization_losses
?layer_metrics

@layers
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
A0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
Bnon_trainable_variables
Cmetrics
trainable_variables
Dlayer_regularization_losses
Elayer_metrics

Flayers
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2Adagrad/iter
: (2Adagrad/decay
: (2Adagrad/learning_rate
):'	? 2embedding_2/embeddings
):'	?K 2embedding_3/embeddings
!:	@?2dense_3/kernel
:?2dense_3/bias
!:	?@2dense_4/kernel
:@2dense_4/bias
 :@2dense_5/kernel
:2dense_5/bias
 "
trackable_list_wrapper
'
A0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
:
Glookup_table
H	keras_api"
_tf_keras_layer
?

embeddings
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
+	variables
Mnon_trainable_variables
Nmetrics
,trainable_variables
Olayer_regularization_losses
Player_metrics

Qlayers
-regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:
Rlookup_table
S	keras_api"
_tf_keras_layer
?

embeddings
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
1	variables
Xnon_trainable_variables
Ymetrics
2trainable_variables
Zlayer_regularization_losses
[layer_metrics

\layers
3regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

kernel
bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

 kernel
!bias
a	variables
btrainable_variables
cregularization_losses
d	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

"kernel
#bias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
J
0
1
 2
!3
"4
#5"
trackable_list_wrapper
J
0
1
 2
!3
"4
#5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
8	variables
inon_trainable_variables
jmetrics
9trainable_variables
klayer_regularization_losses
llayer_metrics

mlayers
:regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5

0
1
2"
trackable_list_wrapper
N
	ntotal
	ocount
p	variables
q	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
'
A0"
trackable_list_wrapper
 "
trackable_list_wrapper
=
Aroot_mean_squared_error"
trackable_dict_wrapper
 "
trackable_list_wrapper
U
r_initializer
?_create_resource
?_initialize
?_destroy_resourceR 
"
_generic_user_object
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
I	variables
snon_trainable_variables
tmetrics
Jtrainable_variables
ulayer_regularization_losses
vlayer_metrics

wlayers
Kregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
)0
*1"
trackable_list_wrapper
U
x_initializer
?_create_resource
?_initialize
?_destroy_resourceR 
"
_generic_user_object
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
T	variables
ynon_trainable_variables
zmetrics
Utrainable_variables
{layer_regularization_losses
|layer_metrics

}layers
Vregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
/0
01"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
]	variables
~non_trainable_variables
metrics
^trainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
a	variables
?non_trainable_variables
?metrics
btrainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
cregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
e	variables
?non_trainable_variables
?metrics
ftrainable_variables
 ?layer_regularization_losses
?layer_metrics
?layers
gregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
50
61
72"
trackable_list_wrapper
:  (2total
:  (2count
.
n0
o1"
trackable_list_wrapper
-
p	variables"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
;:9	? 2*Adagrad/embedding_2/embeddings/accumulator
;:9	?K 2*Adagrad/embedding_3/embeddings/accumulator
3:1	@?2"Adagrad/dense_3/kernel/accumulator
-:+?2 Adagrad/dense_3/bias/accumulator
3:1	?@2"Adagrad/dense_4/kernel/accumulator
,:*@2 Adagrad/dense_4/bias/accumulator
2:0@2"Adagrad/dense_5/kernel/accumulator
,:*2 Adagrad/dense_5/bias/accumulator
?2?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2426
I__inference_movielens_model_layer_call_and_return_conditional_losses_2471
I__inference_movielens_model_layer_call_and_return_conditional_losses_2317
I__inference_movielens_model_layer_call_and_return_conditional_losses_2347?
???
FullArgSpec+
args#? 
jself

jfeatures

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference__wrapped_model_1420movieIduserId"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_movielens_model_layer_call_fn_2167
.__inference_movielens_model_layer_call_fn_2501
.__inference_movielens_model_layer_call_fn_2531
.__inference_movielens_model_layer_call_fn_2287?
???
FullArgSpec+
args#? 
jself

jfeatures

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_2576
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_2621
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_2071
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_2105?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_ranking_model_1_layer_call_fn_1913
.__inference_ranking_model_1_layer_call_fn_2651
.__inference_ranking_model_1_layer_call_fn_2681
.__inference_ranking_model_1_layer_call_fn_2037?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec\
argsT?Q
jself
jlabels
jpredictions
jsample_weight

jtraining
jcompute_metrics
varargs
 
varkw
 
defaults?

 
p 
p

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec\
argsT?Q
jself
jlabels
jpredictions
jsample_weight

jtraining
jcompute_metrics
varargs
 
varkw
 
defaults?

 
p 
p

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference_signature_wrapper_2381movieIduserId"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_sequential_3_layer_call_and_return_conditional_losses_2694
F__inference_sequential_3_layer_call_and_return_conditional_losses_2707
F__inference_sequential_3_layer_call_and_return_conditional_losses_1517
F__inference_sequential_3_layer_call_and_return_conditional_losses_1528?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_sequential_3_layer_call_fn_1454
+__inference_sequential_3_layer_call_fn_2718
+__inference_sequential_3_layer_call_fn_2729
+__inference_sequential_3_layer_call_fn_1506?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_sequential_4_layer_call_and_return_conditional_losses_2742
F__inference_sequential_4_layer_call_and_return_conditional_losses_2755
F__inference_sequential_4_layer_call_and_return_conditional_losses_1625
F__inference_sequential_4_layer_call_and_return_conditional_losses_1636?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_sequential_4_layer_call_fn_1562
+__inference_sequential_4_layer_call_fn_2766
+__inference_sequential_4_layer_call_fn_2777
+__inference_sequential_4_layer_call_fn_1614?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_sequential_5_layer_call_and_return_conditional_losses_2801
F__inference_sequential_5_layer_call_and_return_conditional_losses_2825
F__inference_sequential_5_layer_call_and_return_conditional_losses_1828
F__inference_sequential_5_layer_call_and_return_conditional_losses_1847?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_sequential_5_layer_call_fn_1709
+__inference_sequential_5_layer_call_fn_2842
+__inference_sequential_5_layer_call_fn_2859
+__inference_sequential_5_layer_call_fn_1809?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_embedding_2_layer_call_and_return_conditional_losses_2868?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_embedding_2_layer_call_fn_2875?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_embedding_3_layer_call_and_return_conditional_losses_2884?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_embedding_3_layer_call_fn_2891?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_3_layer_call_and_return_conditional_losses_2902?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_3_layer_call_fn_2911?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_4_layer_call_and_return_conditional_losses_2922?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_4_layer_call_fn_2931?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_5_layer_call_and_return_conditional_losses_2941?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_5_layer_call_fn_2950?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference__creator_2955?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_2963?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_2968?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_2973?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_2981?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_2986?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_55
__inference__creator_2955?

? 
? "? 5
__inference__creator_2973?

? 
? "? 7
__inference__destroyer_2968?

? 
? "? 7
__inference__destroyer_2986?

? 
? "? @
__inference__initializer_2963G???

? 
? "? @
__inference__initializer_2981R???

? 
? "? ?
__inference__wrapped_model_1420?G?R? !"#d?a
Z?W
U?R
(
movieId?
movieId?????????
&
userId?
userId?????????
? "3?0
.
output_1"?
output_1??????????
A__inference_dense_3_layer_call_and_return_conditional_losses_2902]/?,
%?"
 ?
inputs?????????@
? "&?#
?
0??????????
? z
&__inference_dense_3_layer_call_fn_2911P/?,
%?"
 ?
inputs?????????@
? "????????????
A__inference_dense_4_layer_call_and_return_conditional_losses_2922] !0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? z
&__inference_dense_4_layer_call_fn_2931P !0?-
&?#
!?
inputs??????????
? "??????????@?
A__inference_dense_5_layer_call_and_return_conditional_losses_2941\"#/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? y
&__inference_dense_5_layer_call_fn_2950O"#/?,
%?"
 ?
inputs?????????@
? "???????????
E__inference_embedding_2_layer_call_and_return_conditional_losses_2868W+?(
!?
?
inputs?????????	
? "%?"
?
0????????? 
? x
*__inference_embedding_2_layer_call_fn_2875J+?(
!?
?
inputs?????????	
? "?????????? ?
E__inference_embedding_3_layer_call_and_return_conditional_losses_2884W+?(
!?
?
inputs?????????	
? "%?"
?
0????????? 
? x
*__inference_embedding_3_layer_call_fn_2891J+?(
!?
?
inputs?????????	
? "?????????? ?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2317?G?R? !"#h?e
^?[
U?R
(
movieId?
movieId?????????
&
userId?
userId?????????
p 
? "%?"
?
0?????????
? ?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2347?G?R? !"#h?e
^?[
U?R
(
movieId?
movieId?????????
&
userId?
userId?????????
p
? "%?"
?
0?????????
? ?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2426?G?R? !"#z?w
p?m
g?d
1
movieId&?#
features/movieId?????????
/
userId%?"
features/userId?????????
p 
? "%?"
?
0?????????
? ?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2471?G?R? !"#z?w
p?m
g?d
1
movieId&?#
features/movieId?????????
/
userId%?"
features/userId?????????
p
? "%?"
?
0?????????
? ?
.__inference_movielens_model_layer_call_fn_2167?G?R? !"#h?e
^?[
U?R
(
movieId?
movieId?????????
&
userId?
userId?????????
p 
? "???????????
.__inference_movielens_model_layer_call_fn_2287?G?R? !"#h?e
^?[
U?R
(
movieId?
movieId?????????
&
userId?
userId?????????
p
? "???????????
.__inference_movielens_model_layer_call_fn_2501?G?R? !"#z?w
p?m
g?d
1
movieId&?#
features/movieId?????????
/
userId%?"
features/userId?????????
p 
? "???????????
.__inference_movielens_model_layer_call_fn_2531?G?R? !"#z?w
p?m
g?d
1
movieId&?#
features/movieId?????????
/
userId%?"
features/userId?????????
p
? "???????????
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_2071?G?R? !"#T?Q
J?G
A?>
?
input_1?????????
?
input_2?????????
p 
? "%?"
?
0?????????
? ?
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_2105?G?R? !"#T?Q
J?G
A?>
?
input_1?????????
?
input_2?????????
p
? "%?"
?
0?????????
? ?
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_2576?G?R? !"#V?S
L?I
C?@
?
inputs/0?????????
?
inputs/1?????????
p 
? "%?"
?
0?????????
? ?
I__inference_ranking_model_1_layer_call_and_return_conditional_losses_2621?G?R? !"#V?S
L?I
C?@
?
inputs/0?????????
?
inputs/1?????????
p
? "%?"
?
0?????????
? ?
.__inference_ranking_model_1_layer_call_fn_1913?G?R? !"#T?Q
J?G
A?>
?
input_1?????????
?
input_2?????????
p 
? "???????????
.__inference_ranking_model_1_layer_call_fn_2037?G?R? !"#T?Q
J?G
A?>
?
input_1?????????
?
input_2?????????
p
? "???????????
.__inference_ranking_model_1_layer_call_fn_2651?G?R? !"#V?S
L?I
C?@
?
inputs/0?????????
?
inputs/1?????????
p 
? "???????????
.__inference_ranking_model_1_layer_call_fn_2681?G?R? !"#V?S
L?I
C?@
?
inputs/0?????????
?
inputs/1?????????
p
? "???????????
F__inference_sequential_3_layer_call_and_return_conditional_losses_1517qG?B??
8?5
+?(
string_lookup_2_input?????????
p 

 
? "%?"
?
0????????? 
? ?
F__inference_sequential_3_layer_call_and_return_conditional_losses_1528qG?B??
8?5
+?(
string_lookup_2_input?????????
p

 
? "%?"
?
0????????? 
? ?
F__inference_sequential_3_layer_call_and_return_conditional_losses_2694bG?3?0
)?&
?
inputs?????????
p 

 
? "%?"
?
0????????? 
? ?
F__inference_sequential_3_layer_call_and_return_conditional_losses_2707bG?3?0
)?&
?
inputs?????????
p

 
? "%?"
?
0????????? 
? ?
+__inference_sequential_3_layer_call_fn_1454dG?B??
8?5
+?(
string_lookup_2_input?????????
p 

 
? "?????????? ?
+__inference_sequential_3_layer_call_fn_1506dG?B??
8?5
+?(
string_lookup_2_input?????????
p

 
? "?????????? ?
+__inference_sequential_3_layer_call_fn_2718UG?3?0
)?&
?
inputs?????????
p 

 
? "?????????? ?
+__inference_sequential_3_layer_call_fn_2729UG?3?0
)?&
?
inputs?????????
p

 
? "?????????? ?
F__inference_sequential_4_layer_call_and_return_conditional_losses_1625qR?B??
8?5
+?(
string_lookup_3_input?????????
p 

 
? "%?"
?
0????????? 
? ?
F__inference_sequential_4_layer_call_and_return_conditional_losses_1636qR?B??
8?5
+?(
string_lookup_3_input?????????
p

 
? "%?"
?
0????????? 
? ?
F__inference_sequential_4_layer_call_and_return_conditional_losses_2742bR?3?0
)?&
?
inputs?????????
p 

 
? "%?"
?
0????????? 
? ?
F__inference_sequential_4_layer_call_and_return_conditional_losses_2755bR?3?0
)?&
?
inputs?????????
p

 
? "%?"
?
0????????? 
? ?
+__inference_sequential_4_layer_call_fn_1562dR?B??
8?5
+?(
string_lookup_3_input?????????
p 

 
? "?????????? ?
+__inference_sequential_4_layer_call_fn_1614dR?B??
8?5
+?(
string_lookup_3_input?????????
p

 
? "?????????? ?
+__inference_sequential_4_layer_call_fn_2766UR?3?0
)?&
?
inputs?????????
p 

 
? "?????????? ?
+__inference_sequential_4_layer_call_fn_2777UR?3?0
)?&
?
inputs?????????
p

 
? "?????????? ?
F__inference_sequential_5_layer_call_and_return_conditional_losses_1828o !"#>?;
4?1
'?$
dense_3_input?????????@
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_5_layer_call_and_return_conditional_losses_1847o !"#>?;
4?1
'?$
dense_3_input?????????@
p

 
? "%?"
?
0?????????
? ?
F__inference_sequential_5_layer_call_and_return_conditional_losses_2801h !"#7?4
-?*
 ?
inputs?????????@
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_5_layer_call_and_return_conditional_losses_2825h !"#7?4
-?*
 ?
inputs?????????@
p

 
? "%?"
?
0?????????
? ?
+__inference_sequential_5_layer_call_fn_1709b !"#>?;
4?1
'?$
dense_3_input?????????@
p 

 
? "???????????
+__inference_sequential_5_layer_call_fn_1809b !"#>?;
4?1
'?$
dense_3_input?????????@
p

 
? "???????????
+__inference_sequential_5_layer_call_fn_2842[ !"#7?4
-?*
 ?
inputs?????????@
p 

 
? "???????????
+__inference_sequential_5_layer_call_fn_2859[ !"#7?4
-?*
 ?
inputs?????????@
p

 
? "???????????
"__inference_signature_wrapper_2381?G?R? !"#_?\
? 
U?R
(
movieId?
movieId?????????
&
userId?
userId?????????"3?0
.
output_1"?
output_1?????????