??(
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

;
Elu
features"T
activations"T"
Ttype:
2
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
executor_typestring ??
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-0-g3f878cff5b68??#
?
conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_24/kernel
}
$conv2d_24/kernel/Read/ReadVariableOpReadVariableOpconv2d_24/kernel*&
_output_shapes
: *
dtype0
t
conv2d_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_24/bias
m
"conv2d_24/bias/Read/ReadVariableOpReadVariableOpconv2d_24/bias*
_output_shapes
: *
dtype0
?
batch_normalization_28/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_28/gamma
?
0batch_normalization_28/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_28/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_28/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_28/beta
?
/batch_normalization_28/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_28/beta*
_output_shapes
: *
dtype0
?
"batch_normalization_28/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_28/moving_mean
?
6batch_normalization_28/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_28/moving_mean*
_output_shapes
: *
dtype0
?
&batch_normalization_28/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_28/moving_variance
?
:batch_normalization_28/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_28/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_25/kernel
}
$conv2d_25/kernel/Read/ReadVariableOpReadVariableOpconv2d_25/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_25/bias
m
"conv2d_25/bias/Read/ReadVariableOpReadVariableOpconv2d_25/bias*
_output_shapes
: *
dtype0
?
batch_normalization_29/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_29/gamma
?
0batch_normalization_29/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_29/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_29/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_29/beta
?
/batch_normalization_29/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_29/beta*
_output_shapes
: *
dtype0
?
"batch_normalization_29/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_29/moving_mean
?
6batch_normalization_29/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_29/moving_mean*
_output_shapes
: *
dtype0
?
&batch_normalization_29/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_29/moving_variance
?
:batch_normalization_29/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_29/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_26/kernel
}
$conv2d_26/kernel/Read/ReadVariableOpReadVariableOpconv2d_26/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_26/bias
m
"conv2d_26/bias/Read/ReadVariableOpReadVariableOpconv2d_26/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_30/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_30/gamma
?
0batch_normalization_30/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_30/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_30/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_30/beta
?
/batch_normalization_30/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_30/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_30/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_30/moving_mean
?
6batch_normalization_30/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_30/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_30/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_30/moving_variance
?
:batch_normalization_30/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_30/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_27/kernel
}
$conv2d_27/kernel/Read/ReadVariableOpReadVariableOpconv2d_27/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_27/bias
m
"conv2d_27/bias/Read/ReadVariableOpReadVariableOpconv2d_27/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_31/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_31/gamma
?
0batch_normalization_31/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_31/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_31/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_31/beta
?
/batch_normalization_31/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_31/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_31/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_31/moving_mean
?
6batch_normalization_31/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_31/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_31/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_31/moving_variance
?
:batch_normalization_31/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_31/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_28/kernel
~
$conv2d_28/kernel/Read/ReadVariableOpReadVariableOpconv2d_28/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_28/bias
n
"conv2d_28/bias/Read/ReadVariableOpReadVariableOpconv2d_28/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_32/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_32/gamma
?
0batch_normalization_32/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_32/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_32/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_32/beta
?
/batch_normalization_32/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_32/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_32/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_32/moving_mean
?
6batch_normalization_32/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_32/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_32/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_32/moving_variance
?
:batch_normalization_32/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_32/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_29/kernel

$conv2d_29/kernel/Read/ReadVariableOpReadVariableOpconv2d_29/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_29/bias
n
"conv2d_29/bias/Read/ReadVariableOpReadVariableOpconv2d_29/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_33/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_33/gamma
?
0batch_normalization_33/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_33/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_33/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_33/beta
?
/batch_normalization_33/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_33/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_33/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_33/moving_mean
?
6batch_normalization_33/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_33/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_33/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_33/moving_variance
?
:batch_normalization_33/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_33/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*
shared_namedense_8/kernel
t
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*!
_output_shapes
:???*
dtype0
q
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_8/bias
j
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_34/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_34/gamma
?
0batch_normalization_34/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_34/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_34/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_34/beta
?
/batch_normalization_34/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_34/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_34/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_34/moving_mean
?
6batch_normalization_34/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_34/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_34/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_34/moving_variance
?
:batch_normalization_34/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_34/moving_variance*
_output_shapes	
:?*
dtype0
z
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_9/kernel
s
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel* 
_output_shapes
:
??*
dtype0
q
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_9/bias
j
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_35/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_35/gamma
?
0batch_normalization_35/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_35/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_35/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_35/beta
?
/batch_normalization_35/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_35/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_35/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_35/moving_mean
?
6batch_normalization_35/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_35/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_35/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_35/moving_variance
?
:batch_normalization_35/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_35/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_10/kernel
t
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes
:	?*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_24/kernel/m
?
+Adam/conv2d_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_24/bias/m
{
)Adam/conv2d_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/bias/m*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_28/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_28/gamma/m
?
7Adam/batch_normalization_28/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_28/gamma/m*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_28/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_28/beta/m
?
6Adam/batch_normalization_28/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_28/beta/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_25/kernel/m
?
+Adam/conv2d_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_25/bias/m
{
)Adam/conv2d_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/bias/m*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_29/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_29/gamma/m
?
7Adam/batch_normalization_29/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_29/gamma/m*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_29/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_29/beta/m
?
6Adam/batch_normalization_29/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_29/beta/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_26/kernel/m
?
+Adam/conv2d_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_26/bias/m
{
)Adam/conv2d_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/bias/m*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_30/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_30/gamma/m
?
7Adam/batch_normalization_30/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_30/gamma/m*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_30/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_30/beta/m
?
6Adam/batch_normalization_30/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_30/beta/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_27/kernel/m
?
+Adam/conv2d_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_27/bias/m
{
)Adam/conv2d_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/m*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_31/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_31/gamma/m
?
7Adam/batch_normalization_31/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_31/gamma/m*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_31/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_31/beta/m
?
6Adam/batch_normalization_31/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_31/beta/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_28/kernel/m
?
+Adam/conv2d_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_28/bias/m
|
)Adam/conv2d_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/m*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_32/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_32/gamma/m
?
7Adam/batch_normalization_32/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_32/gamma/m*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_32/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_32/beta/m
?
6Adam/batch_normalization_32/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_32/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_29/kernel/m
?
+Adam/conv2d_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_29/bias/m
|
)Adam/conv2d_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/m*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_33/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_33/gamma/m
?
7Adam/batch_normalization_33/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_33/gamma/m*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_33/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_33/beta/m
?
6Adam/batch_normalization_33/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_33/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*&
shared_nameAdam/dense_8/kernel/m
?
)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m*!
_output_shapes
:???*
dtype0

Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_8/bias/m
x
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_34/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_34/gamma/m
?
7Adam/batch_normalization_34/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_34/gamma/m*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_34/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_34/beta/m
?
6Adam/batch_normalization_34/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_34/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_9/kernel/m
?
)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_9/bias/m
x
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_35/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_35/gamma/m
?
7Adam/batch_normalization_35/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_35/gamma/m*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_35/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_35/beta/m
?
6Adam/batch_normalization_35/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_35/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_10/kernel/m
?
*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/m
y
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_24/kernel/v
?
+Adam/conv2d_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_24/bias/v
{
)Adam/conv2d_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/bias/v*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_28/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_28/gamma/v
?
7Adam/batch_normalization_28/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_28/gamma/v*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_28/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_28/beta/v
?
6Adam/batch_normalization_28/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_28/beta/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_25/kernel/v
?
+Adam/conv2d_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_25/bias/v
{
)Adam/conv2d_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/bias/v*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_29/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_29/gamma/v
?
7Adam/batch_normalization_29/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_29/gamma/v*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_29/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_29/beta/v
?
6Adam/batch_normalization_29/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_29/beta/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_26/kernel/v
?
+Adam/conv2d_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_26/bias/v
{
)Adam/conv2d_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/bias/v*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_30/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_30/gamma/v
?
7Adam/batch_normalization_30/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_30/gamma/v*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_30/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_30/beta/v
?
6Adam/batch_normalization_30/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_30/beta/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_27/kernel/v
?
+Adam/conv2d_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_27/bias/v
{
)Adam/conv2d_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/v*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_31/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_31/gamma/v
?
7Adam/batch_normalization_31/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_31/gamma/v*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_31/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_31/beta/v
?
6Adam/batch_normalization_31/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_31/beta/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_28/kernel/v
?
+Adam/conv2d_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_28/bias/v
|
)Adam/conv2d_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/v*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_32/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_32/gamma/v
?
7Adam/batch_normalization_32/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_32/gamma/v*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_32/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_32/beta/v
?
6Adam/batch_normalization_32/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_32/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_29/kernel/v
?
+Adam/conv2d_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_29/bias/v
|
)Adam/conv2d_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/v*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_33/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_33/gamma/v
?
7Adam/batch_normalization_33/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_33/gamma/v*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_33/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_33/beta/v
?
6Adam/batch_normalization_33/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_33/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*&
shared_nameAdam/dense_8/kernel/v
?
)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v*!
_output_shapes
:???*
dtype0

Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_8/bias/v
x
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_34/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_34/gamma/v
?
7Adam/batch_normalization_34/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_34/gamma/v*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_34/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_34/beta/v
?
6Adam/batch_normalization_34/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_34/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_9/kernel/v
?
)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_9/bias/v
x
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_35/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_35/gamma/v
?
7Adam/batch_normalization_35/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_35/gamma/v*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_35/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_35/beta/v
?
6Adam/batch_normalization_35/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_35/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_10/kernel/v
?
*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/v
y
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer_with_weights-8
layer-16
layer-17
layer_with_weights-9
layer-18
layer_with_weights-10
layer-19
layer-20
layer_with_weights-11
layer-21
layer-22
layer-23
layer-24
layer_with_weights-12
layer-25
layer-26
layer_with_weights-13
layer-27
layer-28
layer_with_weights-14
layer-29
layer-30
 layer_with_weights-15
 layer-31
!layer-32
"layer_with_weights-16
"layer-33
#layer-34
$	optimizer
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+_default_save_signature
,
signatures*
?

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses*
?
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses* 
?
;axis
	<gamma
=beta
>moving_mean
?moving_variance
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses*
?

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses*
?
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses* 
?
Taxis
	Ugamma
Vbeta
Wmoving_mean
Xmoving_variance
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses*
?
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses* 
?
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i_random_generator
j__call__
*k&call_and_return_all_conditional_losses* 
?

lkernel
mbias
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses*
?
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses* 
?
zaxis
	{gamma
|beta
}moving_mean
~moving_variance
	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate-m?.m?<m?=m?Fm?Gm?Um?Vm?lm?mm?{m?|m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?-v?.v?<v?=v?Fv?Gv?Uv?Vv?lv?mv?{v?|v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?*
?
-0
.1
<2
=3
>4
?5
F6
G7
U8
V9
W10
X11
l12
m13
{14
|15
}16
~17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47
?48
?49*
?
-0
.1
<2
=3
F4
G5
U6
V7
l8
m9
{10
|11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
+_default_save_signature
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*
* 
* 
* 

?serving_default* 
`Z
VARIABLE_VALUEconv2d_24/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_24/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_28/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_28/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_28/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_28/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
<0
=1
>2
?3*

<0
=1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_25/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_25/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

F0
G1*

F0
G1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses* 
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_29/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_29/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_29/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_29/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
U0
V1
W2
X3*

U0
V1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
e	variables
ftrainable_variables
gregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEconv2d_26/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_26/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

l0
m1*

l0
m1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses* 
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_30/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_30/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_30/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_30/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
{0
|1
}2
~3*

{0
|1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_27/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_27/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_31/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_31/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_31/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_31/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
?0
?1
?2
?3*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEconv2d_28/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_28/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_32/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_32/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_32/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_32/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
?0
?1
?2
?3*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv2d_29/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_29/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
lf
VARIABLE_VALUEbatch_normalization_33/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_33/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_33/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUE&batch_normalization_33/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
?0
?1
?2
?3*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_8/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_8/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
lf
VARIABLE_VALUEbatch_normalization_34/gamma6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_34/beta5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_34/moving_mean<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUE&batch_normalization_34/moving_variance@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
?0
?1
?2
?3*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_9/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_9/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
lf
VARIABLE_VALUEbatch_normalization_35/gamma6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_35/beta5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_35/moving_mean<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUE&batch_normalization_35/moving_variance@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
?0
?1
?2
?3*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEdense_10/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_10/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
?
>0
?1
W2
X3
}4
~5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15*
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34*

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

>0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

W0
X1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

}0
~1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

?total

?count
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
?}
VARIABLE_VALUEAdam/conv2d_24/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_24/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_28/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_28/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_25/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_25/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_29/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_29/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_26/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_26/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_30/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_30/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_27/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_27/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_31/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_31/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_28/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_28/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_32/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_32/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_29/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_29/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_33/gamma/mRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_33/beta/mQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_8/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_8/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_34/gamma/mRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_34/beta/mQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_9/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_9/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_35/gamma/mRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_35/beta/mQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/dense_10/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_10/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_24/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_24/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_28/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_28/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_25/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_25/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_29/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_29/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_26/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_26/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_30/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_30/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_27/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_27/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_31/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_31/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_28/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_28/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_32/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_32/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_29/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_29/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_33/gamma/vRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_33/beta/vQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_8/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_8/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_34/gamma/vRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_34/beta/vQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_9/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_9/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_35/gamma/vRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_35/beta/vQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/dense_10/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_10/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_conv2d_24_inputPlaceholder*/
_output_shapes
:?????????pp*
dtype0*$
shape:?????????pp
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_24_inputconv2d_24/kernelconv2d_24/biasbatch_normalization_28/gammabatch_normalization_28/beta"batch_normalization_28/moving_mean&batch_normalization_28/moving_varianceconv2d_25/kernelconv2d_25/biasbatch_normalization_29/gammabatch_normalization_29/beta"batch_normalization_29/moving_mean&batch_normalization_29/moving_varianceconv2d_26/kernelconv2d_26/biasbatch_normalization_30/gammabatch_normalization_30/beta"batch_normalization_30/moving_mean&batch_normalization_30/moving_varianceconv2d_27/kernelconv2d_27/biasbatch_normalization_31/gammabatch_normalization_31/beta"batch_normalization_31/moving_mean&batch_normalization_31/moving_varianceconv2d_28/kernelconv2d_28/biasbatch_normalization_32/gammabatch_normalization_32/beta"batch_normalization_32/moving_mean&batch_normalization_32/moving_varianceconv2d_29/kernelconv2d_29/biasbatch_normalization_33/gammabatch_normalization_33/beta"batch_normalization_33/moving_mean&batch_normalization_33/moving_variancedense_8/kerneldense_8/bias&batch_normalization_34/moving_variancebatch_normalization_34/gamma"batch_normalization_34/moving_meanbatch_normalization_34/betadense_9/kerneldense_9/bias&batch_normalization_35/moving_variancebatch_normalization_35/gamma"batch_normalization_35/moving_meanbatch_normalization_35/betadense_10/kerneldense_10/bias*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./012*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_379434
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?2
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_24/kernel/Read/ReadVariableOp"conv2d_24/bias/Read/ReadVariableOp0batch_normalization_28/gamma/Read/ReadVariableOp/batch_normalization_28/beta/Read/ReadVariableOp6batch_normalization_28/moving_mean/Read/ReadVariableOp:batch_normalization_28/moving_variance/Read/ReadVariableOp$conv2d_25/kernel/Read/ReadVariableOp"conv2d_25/bias/Read/ReadVariableOp0batch_normalization_29/gamma/Read/ReadVariableOp/batch_normalization_29/beta/Read/ReadVariableOp6batch_normalization_29/moving_mean/Read/ReadVariableOp:batch_normalization_29/moving_variance/Read/ReadVariableOp$conv2d_26/kernel/Read/ReadVariableOp"conv2d_26/bias/Read/ReadVariableOp0batch_normalization_30/gamma/Read/ReadVariableOp/batch_normalization_30/beta/Read/ReadVariableOp6batch_normalization_30/moving_mean/Read/ReadVariableOp:batch_normalization_30/moving_variance/Read/ReadVariableOp$conv2d_27/kernel/Read/ReadVariableOp"conv2d_27/bias/Read/ReadVariableOp0batch_normalization_31/gamma/Read/ReadVariableOp/batch_normalization_31/beta/Read/ReadVariableOp6batch_normalization_31/moving_mean/Read/ReadVariableOp:batch_normalization_31/moving_variance/Read/ReadVariableOp$conv2d_28/kernel/Read/ReadVariableOp"conv2d_28/bias/Read/ReadVariableOp0batch_normalization_32/gamma/Read/ReadVariableOp/batch_normalization_32/beta/Read/ReadVariableOp6batch_normalization_32/moving_mean/Read/ReadVariableOp:batch_normalization_32/moving_variance/Read/ReadVariableOp$conv2d_29/kernel/Read/ReadVariableOp"conv2d_29/bias/Read/ReadVariableOp0batch_normalization_33/gamma/Read/ReadVariableOp/batch_normalization_33/beta/Read/ReadVariableOp6batch_normalization_33/moving_mean/Read/ReadVariableOp:batch_normalization_33/moving_variance/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp0batch_normalization_34/gamma/Read/ReadVariableOp/batch_normalization_34/beta/Read/ReadVariableOp6batch_normalization_34/moving_mean/Read/ReadVariableOp:batch_normalization_34/moving_variance/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp0batch_normalization_35/gamma/Read/ReadVariableOp/batch_normalization_35/beta/Read/ReadVariableOp6batch_normalization_35/moving_mean/Read/ReadVariableOp:batch_normalization_35/moving_variance/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_24/kernel/m/Read/ReadVariableOp)Adam/conv2d_24/bias/m/Read/ReadVariableOp7Adam/batch_normalization_28/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_28/beta/m/Read/ReadVariableOp+Adam/conv2d_25/kernel/m/Read/ReadVariableOp)Adam/conv2d_25/bias/m/Read/ReadVariableOp7Adam/batch_normalization_29/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_29/beta/m/Read/ReadVariableOp+Adam/conv2d_26/kernel/m/Read/ReadVariableOp)Adam/conv2d_26/bias/m/Read/ReadVariableOp7Adam/batch_normalization_30/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_30/beta/m/Read/ReadVariableOp+Adam/conv2d_27/kernel/m/Read/ReadVariableOp)Adam/conv2d_27/bias/m/Read/ReadVariableOp7Adam/batch_normalization_31/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_31/beta/m/Read/ReadVariableOp+Adam/conv2d_28/kernel/m/Read/ReadVariableOp)Adam/conv2d_28/bias/m/Read/ReadVariableOp7Adam/batch_normalization_32/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_32/beta/m/Read/ReadVariableOp+Adam/conv2d_29/kernel/m/Read/ReadVariableOp)Adam/conv2d_29/bias/m/Read/ReadVariableOp7Adam/batch_normalization_33/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_33/beta/m/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp7Adam/batch_normalization_34/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_34/beta/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp7Adam/batch_normalization_35/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_35/beta/m/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp+Adam/conv2d_24/kernel/v/Read/ReadVariableOp)Adam/conv2d_24/bias/v/Read/ReadVariableOp7Adam/batch_normalization_28/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_28/beta/v/Read/ReadVariableOp+Adam/conv2d_25/kernel/v/Read/ReadVariableOp)Adam/conv2d_25/bias/v/Read/ReadVariableOp7Adam/batch_normalization_29/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_29/beta/v/Read/ReadVariableOp+Adam/conv2d_26/kernel/v/Read/ReadVariableOp)Adam/conv2d_26/bias/v/Read/ReadVariableOp7Adam/batch_normalization_30/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_30/beta/v/Read/ReadVariableOp+Adam/conv2d_27/kernel/v/Read/ReadVariableOp)Adam/conv2d_27/bias/v/Read/ReadVariableOp7Adam/batch_normalization_31/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_31/beta/v/Read/ReadVariableOp+Adam/conv2d_28/kernel/v/Read/ReadVariableOp)Adam/conv2d_28/bias/v/Read/ReadVariableOp7Adam/batch_normalization_32/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_32/beta/v/Read/ReadVariableOp+Adam/conv2d_29/kernel/v/Read/ReadVariableOp)Adam/conv2d_29/bias/v/Read/ReadVariableOp7Adam/batch_normalization_33/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_33/beta/v/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp7Adam/batch_normalization_34/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_34/beta/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOp7Adam/batch_normalization_35/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_35/beta/v/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOpConst*?
Tin?
?2?	*
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
GPU2*0J 8? *(
f#R!
__inference__traced_save_380807
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_24/kernelconv2d_24/biasbatch_normalization_28/gammabatch_normalization_28/beta"batch_normalization_28/moving_mean&batch_normalization_28/moving_varianceconv2d_25/kernelconv2d_25/biasbatch_normalization_29/gammabatch_normalization_29/beta"batch_normalization_29/moving_mean&batch_normalization_29/moving_varianceconv2d_26/kernelconv2d_26/biasbatch_normalization_30/gammabatch_normalization_30/beta"batch_normalization_30/moving_mean&batch_normalization_30/moving_varianceconv2d_27/kernelconv2d_27/biasbatch_normalization_31/gammabatch_normalization_31/beta"batch_normalization_31/moving_mean&batch_normalization_31/moving_varianceconv2d_28/kernelconv2d_28/biasbatch_normalization_32/gammabatch_normalization_32/beta"batch_normalization_32/moving_mean&batch_normalization_32/moving_varianceconv2d_29/kernelconv2d_29/biasbatch_normalization_33/gammabatch_normalization_33/beta"batch_normalization_33/moving_mean&batch_normalization_33/moving_variancedense_8/kerneldense_8/biasbatch_normalization_34/gammabatch_normalization_34/beta"batch_normalization_34/moving_mean&batch_normalization_34/moving_variancedense_9/kerneldense_9/biasbatch_normalization_35/gammabatch_normalization_35/beta"batch_normalization_35/moving_mean&batch_normalization_35/moving_variancedense_10/kerneldense_10/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_24/kernel/mAdam/conv2d_24/bias/m#Adam/batch_normalization_28/gamma/m"Adam/batch_normalization_28/beta/mAdam/conv2d_25/kernel/mAdam/conv2d_25/bias/m#Adam/batch_normalization_29/gamma/m"Adam/batch_normalization_29/beta/mAdam/conv2d_26/kernel/mAdam/conv2d_26/bias/m#Adam/batch_normalization_30/gamma/m"Adam/batch_normalization_30/beta/mAdam/conv2d_27/kernel/mAdam/conv2d_27/bias/m#Adam/batch_normalization_31/gamma/m"Adam/batch_normalization_31/beta/mAdam/conv2d_28/kernel/mAdam/conv2d_28/bias/m#Adam/batch_normalization_32/gamma/m"Adam/batch_normalization_32/beta/mAdam/conv2d_29/kernel/mAdam/conv2d_29/bias/m#Adam/batch_normalization_33/gamma/m"Adam/batch_normalization_33/beta/mAdam/dense_8/kernel/mAdam/dense_8/bias/m#Adam/batch_normalization_34/gamma/m"Adam/batch_normalization_34/beta/mAdam/dense_9/kernel/mAdam/dense_9/bias/m#Adam/batch_normalization_35/gamma/m"Adam/batch_normalization_35/beta/mAdam/dense_10/kernel/mAdam/dense_10/bias/mAdam/conv2d_24/kernel/vAdam/conv2d_24/bias/v#Adam/batch_normalization_28/gamma/v"Adam/batch_normalization_28/beta/vAdam/conv2d_25/kernel/vAdam/conv2d_25/bias/v#Adam/batch_normalization_29/gamma/v"Adam/batch_normalization_29/beta/vAdam/conv2d_26/kernel/vAdam/conv2d_26/bias/v#Adam/batch_normalization_30/gamma/v"Adam/batch_normalization_30/beta/vAdam/conv2d_27/kernel/vAdam/conv2d_27/bias/v#Adam/batch_normalization_31/gamma/v"Adam/batch_normalization_31/beta/vAdam/conv2d_28/kernel/vAdam/conv2d_28/bias/v#Adam/batch_normalization_32/gamma/v"Adam/batch_normalization_32/beta/vAdam/conv2d_29/kernel/vAdam/conv2d_29/bias/v#Adam/batch_normalization_33/gamma/v"Adam/batch_normalization_33/beta/vAdam/dense_8/kernel/vAdam/dense_8/bias/v#Adam/batch_normalization_34/gamma/v"Adam/batch_normalization_34/beta/vAdam/dense_9/kernel/vAdam/dense_9/bias/v#Adam/batch_normalization_35/gamma/v"Adam/batch_normalization_35/beta/vAdam/dense_10/kernel/vAdam/dense_10/bias/v*?
Tin?
?2?*
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
GPU2*0J 8? *+
f&R$
"__inference__traced_restore_381198??
?	
?
7__inference_batch_normalization_32_layer_call_fn_379927

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_376978?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_24_layer_call_and_return_conditional_losses_377246

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????pp w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????pp: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????pp
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_12_layer_call_fn_379621

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_376782?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_19_layer_call_and_return_conditional_losses_380226

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_26_layer_call_fn_379662

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_377318w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????88@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????88 : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????88 
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_32_layer_call_fn_379914

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_376947?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
^
B__inference_elu_25_layer_call_and_return_conditional_losses_377401

inputs
identityM
EluEluinputs*
T0*0
_output_shapes
:??????????b
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_30_layer_call_fn_379708

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_376838?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
F
*__inference_flatten_4_layer_call_fn_380096

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_377458b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_30_layer_call_fn_379695

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_376807?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?:
__inference__traced_save_380807
file_prefix/
+savev2_conv2d_24_kernel_read_readvariableop-
)savev2_conv2d_24_bias_read_readvariableop;
7savev2_batch_normalization_28_gamma_read_readvariableop:
6savev2_batch_normalization_28_beta_read_readvariableopA
=savev2_batch_normalization_28_moving_mean_read_readvariableopE
Asavev2_batch_normalization_28_moving_variance_read_readvariableop/
+savev2_conv2d_25_kernel_read_readvariableop-
)savev2_conv2d_25_bias_read_readvariableop;
7savev2_batch_normalization_29_gamma_read_readvariableop:
6savev2_batch_normalization_29_beta_read_readvariableopA
=savev2_batch_normalization_29_moving_mean_read_readvariableopE
Asavev2_batch_normalization_29_moving_variance_read_readvariableop/
+savev2_conv2d_26_kernel_read_readvariableop-
)savev2_conv2d_26_bias_read_readvariableop;
7savev2_batch_normalization_30_gamma_read_readvariableop:
6savev2_batch_normalization_30_beta_read_readvariableopA
=savev2_batch_normalization_30_moving_mean_read_readvariableopE
Asavev2_batch_normalization_30_moving_variance_read_readvariableop/
+savev2_conv2d_27_kernel_read_readvariableop-
)savev2_conv2d_27_bias_read_readvariableop;
7savev2_batch_normalization_31_gamma_read_readvariableop:
6savev2_batch_normalization_31_beta_read_readvariableopA
=savev2_batch_normalization_31_moving_mean_read_readvariableopE
Asavev2_batch_normalization_31_moving_variance_read_readvariableop/
+savev2_conv2d_28_kernel_read_readvariableop-
)savev2_conv2d_28_bias_read_readvariableop;
7savev2_batch_normalization_32_gamma_read_readvariableop:
6savev2_batch_normalization_32_beta_read_readvariableopA
=savev2_batch_normalization_32_moving_mean_read_readvariableopE
Asavev2_batch_normalization_32_moving_variance_read_readvariableop/
+savev2_conv2d_29_kernel_read_readvariableop-
)savev2_conv2d_29_bias_read_readvariableop;
7savev2_batch_normalization_33_gamma_read_readvariableop:
6savev2_batch_normalization_33_beta_read_readvariableopA
=savev2_batch_normalization_33_moving_mean_read_readvariableopE
Asavev2_batch_normalization_33_moving_variance_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop;
7savev2_batch_normalization_34_gamma_read_readvariableop:
6savev2_batch_normalization_34_beta_read_readvariableopA
=savev2_batch_normalization_34_moving_mean_read_readvariableopE
Asavev2_batch_normalization_34_moving_variance_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop;
7savev2_batch_normalization_35_gamma_read_readvariableop:
6savev2_batch_normalization_35_beta_read_readvariableopA
=savev2_batch_normalization_35_moving_mean_read_readvariableopE
Asavev2_batch_normalization_35_moving_variance_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_24_kernel_m_read_readvariableop4
0savev2_adam_conv2d_24_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_28_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_28_beta_m_read_readvariableop6
2savev2_adam_conv2d_25_kernel_m_read_readvariableop4
0savev2_adam_conv2d_25_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_29_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_29_beta_m_read_readvariableop6
2savev2_adam_conv2d_26_kernel_m_read_readvariableop4
0savev2_adam_conv2d_26_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_30_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_30_beta_m_read_readvariableop6
2savev2_adam_conv2d_27_kernel_m_read_readvariableop4
0savev2_adam_conv2d_27_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_31_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_31_beta_m_read_readvariableop6
2savev2_adam_conv2d_28_kernel_m_read_readvariableop4
0savev2_adam_conv2d_28_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_32_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_32_beta_m_read_readvariableop6
2savev2_adam_conv2d_29_kernel_m_read_readvariableop4
0savev2_adam_conv2d_29_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_33_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_33_beta_m_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_34_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_34_beta_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_35_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_35_beta_m_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableop6
2savev2_adam_conv2d_24_kernel_v_read_readvariableop4
0savev2_adam_conv2d_24_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_28_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_28_beta_v_read_readvariableop6
2savev2_adam_conv2d_25_kernel_v_read_readvariableop4
0savev2_adam_conv2d_25_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_29_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_29_beta_v_read_readvariableop6
2savev2_adam_conv2d_26_kernel_v_read_readvariableop4
0savev2_adam_conv2d_26_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_30_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_30_beta_v_read_readvariableop6
2savev2_adam_conv2d_27_kernel_v_read_readvariableop4
0savev2_adam_conv2d_27_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_31_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_31_beta_v_read_readvariableop6
2savev2_adam_conv2d_28_kernel_v_read_readvariableop4
0savev2_adam_conv2d_28_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_32_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_32_beta_v_read_readvariableop6
2savev2_adam_conv2d_29_kernel_v_read_readvariableop4
0savev2_adam_conv2d_29_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_33_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_33_beta_v_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_34_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_34_beta_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_35_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_35_beta_v_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?G
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?F
value?FB?F?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?8
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_24_kernel_read_readvariableop)savev2_conv2d_24_bias_read_readvariableop7savev2_batch_normalization_28_gamma_read_readvariableop6savev2_batch_normalization_28_beta_read_readvariableop=savev2_batch_normalization_28_moving_mean_read_readvariableopAsavev2_batch_normalization_28_moving_variance_read_readvariableop+savev2_conv2d_25_kernel_read_readvariableop)savev2_conv2d_25_bias_read_readvariableop7savev2_batch_normalization_29_gamma_read_readvariableop6savev2_batch_normalization_29_beta_read_readvariableop=savev2_batch_normalization_29_moving_mean_read_readvariableopAsavev2_batch_normalization_29_moving_variance_read_readvariableop+savev2_conv2d_26_kernel_read_readvariableop)savev2_conv2d_26_bias_read_readvariableop7savev2_batch_normalization_30_gamma_read_readvariableop6savev2_batch_normalization_30_beta_read_readvariableop=savev2_batch_normalization_30_moving_mean_read_readvariableopAsavev2_batch_normalization_30_moving_variance_read_readvariableop+savev2_conv2d_27_kernel_read_readvariableop)savev2_conv2d_27_bias_read_readvariableop7savev2_batch_normalization_31_gamma_read_readvariableop6savev2_batch_normalization_31_beta_read_readvariableop=savev2_batch_normalization_31_moving_mean_read_readvariableopAsavev2_batch_normalization_31_moving_variance_read_readvariableop+savev2_conv2d_28_kernel_read_readvariableop)savev2_conv2d_28_bias_read_readvariableop7savev2_batch_normalization_32_gamma_read_readvariableop6savev2_batch_normalization_32_beta_read_readvariableop=savev2_batch_normalization_32_moving_mean_read_readvariableopAsavev2_batch_normalization_32_moving_variance_read_readvariableop+savev2_conv2d_29_kernel_read_readvariableop)savev2_conv2d_29_bias_read_readvariableop7savev2_batch_normalization_33_gamma_read_readvariableop6savev2_batch_normalization_33_beta_read_readvariableop=savev2_batch_normalization_33_moving_mean_read_readvariableopAsavev2_batch_normalization_33_moving_variance_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop7savev2_batch_normalization_34_gamma_read_readvariableop6savev2_batch_normalization_34_beta_read_readvariableop=savev2_batch_normalization_34_moving_mean_read_readvariableopAsavev2_batch_normalization_34_moving_variance_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop7savev2_batch_normalization_35_gamma_read_readvariableop6savev2_batch_normalization_35_beta_read_readvariableop=savev2_batch_normalization_35_moving_mean_read_readvariableopAsavev2_batch_normalization_35_moving_variance_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_24_kernel_m_read_readvariableop0savev2_adam_conv2d_24_bias_m_read_readvariableop>savev2_adam_batch_normalization_28_gamma_m_read_readvariableop=savev2_adam_batch_normalization_28_beta_m_read_readvariableop2savev2_adam_conv2d_25_kernel_m_read_readvariableop0savev2_adam_conv2d_25_bias_m_read_readvariableop>savev2_adam_batch_normalization_29_gamma_m_read_readvariableop=savev2_adam_batch_normalization_29_beta_m_read_readvariableop2savev2_adam_conv2d_26_kernel_m_read_readvariableop0savev2_adam_conv2d_26_bias_m_read_readvariableop>savev2_adam_batch_normalization_30_gamma_m_read_readvariableop=savev2_adam_batch_normalization_30_beta_m_read_readvariableop2savev2_adam_conv2d_27_kernel_m_read_readvariableop0savev2_adam_conv2d_27_bias_m_read_readvariableop>savev2_adam_batch_normalization_31_gamma_m_read_readvariableop=savev2_adam_batch_normalization_31_beta_m_read_readvariableop2savev2_adam_conv2d_28_kernel_m_read_readvariableop0savev2_adam_conv2d_28_bias_m_read_readvariableop>savev2_adam_batch_normalization_32_gamma_m_read_readvariableop=savev2_adam_batch_normalization_32_beta_m_read_readvariableop2savev2_adam_conv2d_29_kernel_m_read_readvariableop0savev2_adam_conv2d_29_bias_m_read_readvariableop>savev2_adam_batch_normalization_33_gamma_m_read_readvariableop=savev2_adam_batch_normalization_33_beta_m_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop>savev2_adam_batch_normalization_34_gamma_m_read_readvariableop=savev2_adam_batch_normalization_34_beta_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop>savev2_adam_batch_normalization_35_gamma_m_read_readvariableop=savev2_adam_batch_normalization_35_beta_m_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop2savev2_adam_conv2d_24_kernel_v_read_readvariableop0savev2_adam_conv2d_24_bias_v_read_readvariableop>savev2_adam_batch_normalization_28_gamma_v_read_readvariableop=savev2_adam_batch_normalization_28_beta_v_read_readvariableop2savev2_adam_conv2d_25_kernel_v_read_readvariableop0savev2_adam_conv2d_25_bias_v_read_readvariableop>savev2_adam_batch_normalization_29_gamma_v_read_readvariableop=savev2_adam_batch_normalization_29_beta_v_read_readvariableop2savev2_adam_conv2d_26_kernel_v_read_readvariableop0savev2_adam_conv2d_26_bias_v_read_readvariableop>savev2_adam_batch_normalization_30_gamma_v_read_readvariableop=savev2_adam_batch_normalization_30_beta_v_read_readvariableop2savev2_adam_conv2d_27_kernel_v_read_readvariableop0savev2_adam_conv2d_27_bias_v_read_readvariableop>savev2_adam_batch_normalization_31_gamma_v_read_readvariableop=savev2_adam_batch_normalization_31_beta_v_read_readvariableop2savev2_adam_conv2d_28_kernel_v_read_readvariableop0savev2_adam_conv2d_28_bias_v_read_readvariableop>savev2_adam_batch_normalization_32_gamma_v_read_readvariableop=savev2_adam_batch_normalization_32_beta_v_read_readvariableop2savev2_adam_conv2d_29_kernel_v_read_readvariableop0savev2_adam_conv2d_29_bias_v_read_readvariableop>savev2_adam_batch_normalization_33_gamma_v_read_readvariableop=savev2_adam_batch_normalization_33_beta_v_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableop>savev2_adam_batch_normalization_34_gamma_v_read_readvariableop=savev2_adam_batch_normalization_34_beta_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableop>savev2_adam_batch_normalization_35_gamma_v_read_readvariableop=savev2_adam_batch_normalization_35_beta_v_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes?
?2?	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : : :  : : : : : : @:@:@:@:@:@:@@:@:@:@:@:@:@?:?:?:?:?:?:??:?:?:?:?:?:???:?:?:?:?:?:
??:?:?:?:?:?:	?:: : : : : : : : : : : : : :  : : : : @:@:@:@:@@:@:@:@:@?:?:?:?:??:?:?:?:???:?:?:?:
??:?:?:?:	?:: : : : :  : : : : @:@:@:@:@@:@:@:@:@?:?:?:?:??:?:?:?:???:?:?:?:
??:?:?:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:! 

_output_shapes	
:?:!!

_output_shapes	
:?:!"

_output_shapes	
:?:!#

_output_shapes	
:?:!$

_output_shapes	
:?:'%#
!
_output_shapes
:???:!&

_output_shapes	
:?:!'

_output_shapes	
:?:!(

_output_shapes	
:?:!)

_output_shapes	
:?:!*

_output_shapes	
:?:&+"
 
_output_shapes
:
??:!,

_output_shapes	
:?:!-

_output_shapes	
:?:!.

_output_shapes	
:?:!/

_output_shapes	
:?:!0

_output_shapes	
:?:%1!

_output_shapes
:	?: 2

_output_shapes
::3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :,<(
&
_output_shapes
: : =

_output_shapes
: : >

_output_shapes
: : ?

_output_shapes
: :,@(
&
_output_shapes
:  : A

_output_shapes
: : B

_output_shapes
: : C

_output_shapes
: :,D(
&
_output_shapes
: @: E

_output_shapes
:@: F

_output_shapes
:@: G

_output_shapes
:@:,H(
&
_output_shapes
:@@: I

_output_shapes
:@: J

_output_shapes
:@: K

_output_shapes
:@:-L)
'
_output_shapes
:@?:!M

_output_shapes	
:?:!N

_output_shapes	
:?:!O

_output_shapes	
:?:.P*
(
_output_shapes
:??:!Q

_output_shapes	
:?:!R

_output_shapes	
:?:!S

_output_shapes	
:?:'T#
!
_output_shapes
:???:!U

_output_shapes	
:?:!V

_output_shapes	
:?:!W

_output_shapes	
:?:&X"
 
_output_shapes
:
??:!Y

_output_shapes	
:?:!Z

_output_shapes	
:?:![

_output_shapes	
:?:%\!

_output_shapes
:	?: ]

_output_shapes
::,^(
&
_output_shapes
: : _

_output_shapes
: : `

_output_shapes
: : a

_output_shapes
: :,b(
&
_output_shapes
:  : c

_output_shapes
: : d

_output_shapes
: : e

_output_shapes
: :,f(
&
_output_shapes
: @: g

_output_shapes
:@: h

_output_shapes
:@: i

_output_shapes
:@:,j(
&
_output_shapes
:@@: k

_output_shapes
:@: l

_output_shapes
:@: m

_output_shapes
:@:-n)
'
_output_shapes
:@?:!o

_output_shapes	
:?:!p

_output_shapes	
:?:!q

_output_shapes	
:?:.r*
(
_output_shapes
:??:!s

_output_shapes	
:?:!t

_output_shapes	
:?:!u

_output_shapes	
:?:'v#
!
_output_shapes
:???:!w

_output_shapes	
:?:!x

_output_shapes	
:?:!y

_output_shapes	
:?:&z"
 
_output_shapes
:
??:!{

_output_shapes	
:?:!|

_output_shapes	
:?:!}

_output_shapes	
:?:%~!

_output_shapes
:	?: 

_output_shapes
::?

_output_shapes
: 
?

?
E__inference_conv2d_25_layer_call_and_return_conditional_losses_379544

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????pp w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????pp : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????pp 
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_13_layer_call_fn_379840

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_376922?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_31_layer_call_fn_379786

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_376871?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
E__inference_conv2d_27_layer_call_and_return_conditional_losses_379763

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????88@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????88@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????88@
 
_user_specified_nameinputs
?

e
F__inference_dropout_17_layer_call_and_return_conditional_losses_377840

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
d
+__inference_dropout_18_layer_call_fn_380074

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_18_layer_call_and_return_conditional_losses_377785x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
C
'__inference_elu_27_layer_call_fn_380126

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_27_layer_call_and_return_conditional_losses_377481a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_19_layer_call_and_return_conditional_losses_377497

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_379598

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_379835

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_379616

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
^
B__inference_elu_24_layer_call_and_return_conditional_losses_379773

inputs
identityL
EluEluinputs*
T0*/
_output_shapes
:?????????88@a
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:?????????88@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????88@:W S
/
_output_shapes
:?????????88@
 
_user_specified_nameinputs
?
G
+__inference_dropout_18_layer_call_fn_380069

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_18_layer_call_and_return_conditional_losses_377450i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_377011

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

e
F__inference_dropout_16_layer_call_and_return_conditional_losses_379653

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????88 C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????88 *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????88 w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????88 q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????88 a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????88 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????88 :W S
/
_output_shapes
:?????????88 
 
_user_specified_nameinputs
?

?
E__inference_conv2d_29_layer_call_and_return_conditional_losses_379982

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_9_layer_call_and_return_conditional_losses_380257

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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
??
?2
H__inference_sequential_4_layer_call_and_return_conditional_losses_379327

inputsB
(conv2d_24_conv2d_readvariableop_resource: 7
)conv2d_24_biasadd_readvariableop_resource: <
.batch_normalization_28_readvariableop_resource: >
0batch_normalization_28_readvariableop_1_resource: M
?batch_normalization_28_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_28_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_25_conv2d_readvariableop_resource:  7
)conv2d_25_biasadd_readvariableop_resource: <
.batch_normalization_29_readvariableop_resource: >
0batch_normalization_29_readvariableop_1_resource: M
?batch_normalization_29_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_26_conv2d_readvariableop_resource: @7
)conv2d_26_biasadd_readvariableop_resource:@<
.batch_normalization_30_readvariableop_resource:@>
0batch_normalization_30_readvariableop_1_resource:@M
?batch_normalization_30_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_30_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_27_conv2d_readvariableop_resource:@@7
)conv2d_27_biasadd_readvariableop_resource:@<
.batch_normalization_31_readvariableop_resource:@>
0batch_normalization_31_readvariableop_1_resource:@M
?batch_normalization_31_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_31_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_28_conv2d_readvariableop_resource:@?8
)conv2d_28_biasadd_readvariableop_resource:	?=
.batch_normalization_32_readvariableop_resource:	??
0batch_normalization_32_readvariableop_1_resource:	?N
?batch_normalization_32_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_32_fusedbatchnormv3_readvariableop_1_resource:	?D
(conv2d_29_conv2d_readvariableop_resource:??8
)conv2d_29_biasadd_readvariableop_resource:	?=
.batch_normalization_33_readvariableop_resource:	??
0batch_normalization_33_readvariableop_1_resource:	?N
?batch_normalization_33_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_33_fusedbatchnormv3_readvariableop_1_resource:	?;
&dense_8_matmul_readvariableop_resource:???6
'dense_8_biasadd_readvariableop_resource:	?M
>batch_normalization_34_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_34_assignmovingavg_1_readvariableop_resource:	?K
<batch_normalization_34_batchnorm_mul_readvariableop_resource:	?G
8batch_normalization_34_batchnorm_readvariableop_resource:	?:
&dense_9_matmul_readvariableop_resource:
??6
'dense_9_biasadd_readvariableop_resource:	?M
>batch_normalization_35_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_35_assignmovingavg_1_readvariableop_resource:	?K
<batch_normalization_35_batchnorm_mul_readvariableop_resource:	?G
8batch_normalization_35_batchnorm_readvariableop_resource:	?:
'dense_10_matmul_readvariableop_resource:	?6
(dense_10_biasadd_readvariableop_resource:
identity??%batch_normalization_28/AssignNewValue?'batch_normalization_28/AssignNewValue_1?6batch_normalization_28/FusedBatchNormV3/ReadVariableOp?8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_28/ReadVariableOp?'batch_normalization_28/ReadVariableOp_1?%batch_normalization_29/AssignNewValue?'batch_normalization_29/AssignNewValue_1?6batch_normalization_29/FusedBatchNormV3/ReadVariableOp?8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_29/ReadVariableOp?'batch_normalization_29/ReadVariableOp_1?%batch_normalization_30/AssignNewValue?'batch_normalization_30/AssignNewValue_1?6batch_normalization_30/FusedBatchNormV3/ReadVariableOp?8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_30/ReadVariableOp?'batch_normalization_30/ReadVariableOp_1?%batch_normalization_31/AssignNewValue?'batch_normalization_31/AssignNewValue_1?6batch_normalization_31/FusedBatchNormV3/ReadVariableOp?8batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_31/ReadVariableOp?'batch_normalization_31/ReadVariableOp_1?%batch_normalization_32/AssignNewValue?'batch_normalization_32/AssignNewValue_1?6batch_normalization_32/FusedBatchNormV3/ReadVariableOp?8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_32/ReadVariableOp?'batch_normalization_32/ReadVariableOp_1?%batch_normalization_33/AssignNewValue?'batch_normalization_33/AssignNewValue_1?6batch_normalization_33/FusedBatchNormV3/ReadVariableOp?8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_33/ReadVariableOp?'batch_normalization_33/ReadVariableOp_1?&batch_normalization_34/AssignMovingAvg?5batch_normalization_34/AssignMovingAvg/ReadVariableOp?(batch_normalization_34/AssignMovingAvg_1?7batch_normalization_34/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_34/batchnorm/ReadVariableOp?3batch_normalization_34/batchnorm/mul/ReadVariableOp?&batch_normalization_35/AssignMovingAvg?5batch_normalization_35/AssignMovingAvg/ReadVariableOp?(batch_normalization_35/AssignMovingAvg_1?7batch_normalization_35/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_35/batchnorm/ReadVariableOp?3batch_normalization_35/batchnorm/mul/ReadVariableOp? conv2d_24/BiasAdd/ReadVariableOp?conv2d_24/Conv2D/ReadVariableOp? conv2d_25/BiasAdd/ReadVariableOp?conv2d_25/Conv2D/ReadVariableOp? conv2d_26/BiasAdd/ReadVariableOp?conv2d_26/Conv2D/ReadVariableOp? conv2d_27/BiasAdd/ReadVariableOp?conv2d_27/Conv2D/ReadVariableOp? conv2d_28/BiasAdd/ReadVariableOp?conv2d_28/Conv2D/ReadVariableOp? conv2d_29/BiasAdd/ReadVariableOp?conv2d_29/Conv2D/ReadVariableOp?dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_24/Conv2DConv2Dinputs'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp *
paddingSAME*
strides
?
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp g

elu_21/EluEluconv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:?????????pp ?
%batch_normalization_28/ReadVariableOpReadVariableOp.batch_normalization_28_readvariableop_resource*
_output_shapes
: *
dtype0?
'batch_normalization_28/ReadVariableOp_1ReadVariableOp0batch_normalization_28_readvariableop_1_resource*
_output_shapes
: *
dtype0?
6batch_normalization_28/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_28_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_28_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
'batch_normalization_28/FusedBatchNormV3FusedBatchNormV3elu_21/Elu:activations:0-batch_normalization_28/ReadVariableOp:value:0/batch_normalization_28/ReadVariableOp_1:value:0>batch_normalization_28/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????pp : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
%batch_normalization_28/AssignNewValueAssignVariableOp?batch_normalization_28_fusedbatchnormv3_readvariableop_resource4batch_normalization_28/FusedBatchNormV3:batch_mean:07^batch_normalization_28/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
'batch_normalization_28/AssignNewValue_1AssignVariableOpAbatch_normalization_28_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_28/FusedBatchNormV3:batch_variance:09^batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0?
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_25/Conv2DConv2D+batch_normalization_28/FusedBatchNormV3:y:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp *
paddingSAME*
strides
?
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp g

elu_22/EluEluconv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:?????????pp ?
%batch_normalization_29/ReadVariableOpReadVariableOp.batch_normalization_29_readvariableop_resource*
_output_shapes
: *
dtype0?
'batch_normalization_29/ReadVariableOp_1ReadVariableOp0batch_normalization_29_readvariableop_1_resource*
_output_shapes
: *
dtype0?
6batch_normalization_29/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_29_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
'batch_normalization_29/FusedBatchNormV3FusedBatchNormV3elu_22/Elu:activations:0-batch_normalization_29/ReadVariableOp:value:0/batch_normalization_29/ReadVariableOp_1:value:0>batch_normalization_29/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????pp : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
%batch_normalization_29/AssignNewValueAssignVariableOp?batch_normalization_29_fusedbatchnormv3_readvariableop_resource4batch_normalization_29/FusedBatchNormV3:batch_mean:07^batch_normalization_29/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
'batch_normalization_29/AssignNewValue_1AssignVariableOpAbatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_29/FusedBatchNormV3:batch_variance:09^batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0?
max_pooling2d_12/MaxPoolMaxPool+batch_normalization_29/FusedBatchNormV3:y:0*/
_output_shapes
:?????????88 *
ksize
*
paddingVALID*
strides
]
dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?????
dropout_16/dropout/MulMul!max_pooling2d_12/MaxPool:output:0!dropout_16/dropout/Const:output:0*
T0*/
_output_shapes
:?????????88 i
dropout_16/dropout/ShapeShape!max_pooling2d_12/MaxPool:output:0*
T0*
_output_shapes
:?
/dropout_16/dropout/random_uniform/RandomUniformRandomUniform!dropout_16/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????88 *
dtype0f
!dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout_16/dropout/GreaterEqualGreaterEqual8dropout_16/dropout/random_uniform/RandomUniform:output:0*dropout_16/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????88 ?
dropout_16/dropout/CastCast#dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????88 ?
dropout_16/dropout/Mul_1Muldropout_16/dropout/Mul:z:0dropout_16/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????88 ?
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_26/Conv2DConv2Ddropout_16/dropout/Mul_1:z:0'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@*
paddingSAME*
strides
?
 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@g

elu_23/EluEluconv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:?????????88@?
%batch_normalization_30/ReadVariableOpReadVariableOp.batch_normalization_30_readvariableop_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_30/ReadVariableOp_1ReadVariableOp0batch_normalization_30_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
6batch_normalization_30/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_30_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_30_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_30/FusedBatchNormV3FusedBatchNormV3elu_23/Elu:activations:0-batch_normalization_30/ReadVariableOp:value:0/batch_normalization_30/ReadVariableOp_1:value:0>batch_normalization_30/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????88@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
%batch_normalization_30/AssignNewValueAssignVariableOp?batch_normalization_30_fusedbatchnormv3_readvariableop_resource4batch_normalization_30/FusedBatchNormV3:batch_mean:07^batch_normalization_30/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
'batch_normalization_30/AssignNewValue_1AssignVariableOpAbatch_normalization_30_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_30/FusedBatchNormV3:batch_variance:09^batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0?
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_27/Conv2DConv2D+batch_normalization_30/FusedBatchNormV3:y:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@*
paddingSAME*
strides
?
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@g

elu_24/EluEluconv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:?????????88@?
%batch_normalization_31/ReadVariableOpReadVariableOp.batch_normalization_31_readvariableop_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_31/ReadVariableOp_1ReadVariableOp0batch_normalization_31_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
6batch_normalization_31/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_31_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
8batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_31_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_31/FusedBatchNormV3FusedBatchNormV3elu_24/Elu:activations:0-batch_normalization_31/ReadVariableOp:value:0/batch_normalization_31/ReadVariableOp_1:value:0>batch_normalization_31/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????88@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
%batch_normalization_31/AssignNewValueAssignVariableOp?batch_normalization_31_fusedbatchnormv3_readvariableop_resource4batch_normalization_31/FusedBatchNormV3:batch_mean:07^batch_normalization_31/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
'batch_normalization_31/AssignNewValue_1AssignVariableOpAbatch_normalization_31_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_31/FusedBatchNormV3:batch_variance:09^batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0?
max_pooling2d_13/MaxPoolMaxPool+batch_normalization_31/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
]
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?????
dropout_17/dropout/MulMul!max_pooling2d_13/MaxPool:output:0!dropout_17/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@i
dropout_17/dropout/ShapeShape!max_pooling2d_13/MaxPool:output:0*
T0*
_output_shapes
:?
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype0f
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@?
dropout_17/dropout/CastCast#dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@?
dropout_17/dropout/Mul_1Muldropout_17/dropout/Mul:z:0dropout_17/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@?
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_28/Conv2DConv2Ddropout_17/dropout/Mul_1:z:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????h

elu_25/EluEluconv2d_28/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
%batch_normalization_32/ReadVariableOpReadVariableOp.batch_normalization_32_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_32/ReadVariableOp_1ReadVariableOp0batch_normalization_32_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
6batch_normalization_32/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_32_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_32_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_32/FusedBatchNormV3FusedBatchNormV3elu_25/Elu:activations:0-batch_normalization_32/ReadVariableOp:value:0/batch_normalization_32/ReadVariableOp_1:value:0>batch_normalization_32/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
%batch_normalization_32/AssignNewValueAssignVariableOp?batch_normalization_32_fusedbatchnormv3_readvariableop_resource4batch_normalization_32/FusedBatchNormV3:batch_mean:07^batch_normalization_32/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
'batch_normalization_32/AssignNewValue_1AssignVariableOpAbatch_normalization_32_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_32/FusedBatchNormV3:batch_variance:09^batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0?
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_29/Conv2DConv2D+batch_normalization_32/FusedBatchNormV3:y:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????h

elu_26/EluEluconv2d_29/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
%batch_normalization_33/ReadVariableOpReadVariableOp.batch_normalization_33_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_33/ReadVariableOp_1ReadVariableOp0batch_normalization_33_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
6batch_normalization_33/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_33_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_33_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_33/FusedBatchNormV3FusedBatchNormV3elu_26/Elu:activations:0-batch_normalization_33/ReadVariableOp:value:0/batch_normalization_33/ReadVariableOp_1:value:0>batch_normalization_33/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
%batch_normalization_33/AssignNewValueAssignVariableOp?batch_normalization_33_fusedbatchnormv3_readvariableop_resource4batch_normalization_33/FusedBatchNormV3:batch_mean:07^batch_normalization_33/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
'batch_normalization_33/AssignNewValue_1AssignVariableOpAbatch_normalization_33_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_33/FusedBatchNormV3:batch_variance:09^batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0?
max_pooling2d_14/MaxPoolMaxPool+batch_normalization_33/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
]
dropout_18/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?????
dropout_18/dropout/MulMul!max_pooling2d_14/MaxPool:output:0!dropout_18/dropout/Const:output:0*
T0*0
_output_shapes
:??????????i
dropout_18/dropout/ShapeShape!max_pooling2d_14/MaxPool:output:0*
T0*
_output_shapes
:?
/dropout_18/dropout/random_uniform/RandomUniformRandomUniform!dropout_18/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype0f
!dropout_18/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout_18/dropout/GreaterEqualGreaterEqual8dropout_18/dropout/random_uniform/RandomUniform:output:0*dropout_18/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:???????????
dropout_18/dropout/CastCast#dropout_18/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:???????????
dropout_18/dropout/Mul_1Muldropout_18/dropout/Mul:z:0dropout_18/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? b  ?
flatten_4/ReshapeReshapedropout_18/dropout/Mul_1:z:0flatten_4/Const:output:0*
T0*)
_output_shapes
:????????????
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype0?
dense_8/MatMulMatMulflatten_4/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^

elu_27/EluEludense_8/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
5batch_normalization_34/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
#batch_normalization_34/moments/meanMeanelu_27/Elu:activations:0>batch_normalization_34/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
+batch_normalization_34/moments/StopGradientStopGradient,batch_normalization_34/moments/mean:output:0*
T0*
_output_shapes
:	??
0batch_normalization_34/moments/SquaredDifferenceSquaredDifferenceelu_27/Elu:activations:04batch_normalization_34/moments/StopGradient:output:0*
T0*(
_output_shapes
:???????????
9batch_normalization_34/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
'batch_normalization_34/moments/varianceMean4batch_normalization_34/moments/SquaredDifference:z:0Bbatch_normalization_34/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
&batch_normalization_34/moments/SqueezeSqueeze,batch_normalization_34/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 ?
(batch_normalization_34/moments/Squeeze_1Squeeze0batch_normalization_34/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 q
,batch_normalization_34/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
5batch_normalization_34/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_34_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*batch_normalization_34/AssignMovingAvg/subSub=batch_normalization_34/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_34/moments/Squeeze:output:0*
T0*
_output_shapes	
:??
*batch_normalization_34/AssignMovingAvg/mulMul.batch_normalization_34/AssignMovingAvg/sub:z:05batch_normalization_34/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
&batch_normalization_34/AssignMovingAvgAssignSubVariableOp>batch_normalization_34_assignmovingavg_readvariableop_resource.batch_normalization_34/AssignMovingAvg/mul:z:06^batch_normalization_34/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_34/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
7batch_normalization_34/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_34_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_34/AssignMovingAvg_1/subSub?batch_normalization_34/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_34/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:??
,batch_normalization_34/AssignMovingAvg_1/mulMul0batch_normalization_34/AssignMovingAvg_1/sub:z:07batch_normalization_34/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
(batch_normalization_34/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_34_assignmovingavg_1_readvariableop_resource0batch_normalization_34/AssignMovingAvg_1/mul:z:08^batch_normalization_34/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_34/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_34/batchnorm/addAddV21batch_normalization_34/moments/Squeeze_1:output:0/batch_normalization_34/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?
&batch_normalization_34/batchnorm/RsqrtRsqrt(batch_normalization_34/batchnorm/add:z:0*
T0*
_output_shapes	
:??
3batch_normalization_34/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_34_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
$batch_normalization_34/batchnorm/mulMul*batch_normalization_34/batchnorm/Rsqrt:y:0;batch_normalization_34/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
&batch_normalization_34/batchnorm/mul_1Mulelu_27/Elu:activations:0(batch_normalization_34/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&batch_normalization_34/batchnorm/mul_2Mul/batch_normalization_34/moments/Squeeze:output:0(batch_normalization_34/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
/batch_normalization_34/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_34_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
$batch_normalization_34/batchnorm/subSub7batch_normalization_34/batchnorm/ReadVariableOp:value:0*batch_normalization_34/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
&batch_normalization_34/batchnorm/add_1AddV2*batch_normalization_34/batchnorm/mul_1:z:0(batch_normalization_34/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????]
dropout_19/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_19/dropout/MulMul*batch_normalization_34/batchnorm/add_1:z:0!dropout_19/dropout/Const:output:0*
T0*(
_output_shapes
:??????????r
dropout_19/dropout/ShapeShape*batch_normalization_34/batchnorm/add_1:z:0*
T0*
_output_shapes
:?
/dropout_19/dropout/random_uniform/RandomUniformRandomUniform!dropout_19/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0f
!dropout_19/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_19/dropout/GreaterEqualGreaterEqual8dropout_19/dropout/random_uniform/RandomUniform:output:0*dropout_19/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_19/dropout/CastCast#dropout_19/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_19/dropout/Mul_1Muldropout_19/dropout/Mul:z:0dropout_19/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_9/MatMulMatMuldropout_19/dropout/Mul_1:z:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^

elu_28/EluEludense_9/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
5batch_normalization_35/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
#batch_normalization_35/moments/meanMeanelu_28/Elu:activations:0>batch_normalization_35/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
+batch_normalization_35/moments/StopGradientStopGradient,batch_normalization_35/moments/mean:output:0*
T0*
_output_shapes
:	??
0batch_normalization_35/moments/SquaredDifferenceSquaredDifferenceelu_28/Elu:activations:04batch_normalization_35/moments/StopGradient:output:0*
T0*(
_output_shapes
:???????????
9batch_normalization_35/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
'batch_normalization_35/moments/varianceMean4batch_normalization_35/moments/SquaredDifference:z:0Bbatch_normalization_35/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
&batch_normalization_35/moments/SqueezeSqueeze,batch_normalization_35/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 ?
(batch_normalization_35/moments/Squeeze_1Squeeze0batch_normalization_35/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 q
,batch_normalization_35/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
5batch_normalization_35/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_35_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*batch_normalization_35/AssignMovingAvg/subSub=batch_normalization_35/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_35/moments/Squeeze:output:0*
T0*
_output_shapes	
:??
*batch_normalization_35/AssignMovingAvg/mulMul.batch_normalization_35/AssignMovingAvg/sub:z:05batch_normalization_35/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
&batch_normalization_35/AssignMovingAvgAssignSubVariableOp>batch_normalization_35_assignmovingavg_readvariableop_resource.batch_normalization_35/AssignMovingAvg/mul:z:06^batch_normalization_35/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_35/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
7batch_normalization_35/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_35_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_35/AssignMovingAvg_1/subSub?batch_normalization_35/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_35/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:??
,batch_normalization_35/AssignMovingAvg_1/mulMul0batch_normalization_35/AssignMovingAvg_1/sub:z:07batch_normalization_35/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
(batch_normalization_35/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_35_assignmovingavg_1_readvariableop_resource0batch_normalization_35/AssignMovingAvg_1/mul:z:08^batch_normalization_35/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_35/batchnorm/addAddV21batch_normalization_35/moments/Squeeze_1:output:0/batch_normalization_35/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?
&batch_normalization_35/batchnorm/RsqrtRsqrt(batch_normalization_35/batchnorm/add:z:0*
T0*
_output_shapes	
:??
3batch_normalization_35/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_35_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
$batch_normalization_35/batchnorm/mulMul*batch_normalization_35/batchnorm/Rsqrt:y:0;batch_normalization_35/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
&batch_normalization_35/batchnorm/mul_1Mulelu_28/Elu:activations:0(batch_normalization_35/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&batch_normalization_35/batchnorm/mul_2Mul/batch_normalization_35/moments/Squeeze:output:0(batch_normalization_35/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
/batch_normalization_35/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_35_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
$batch_normalization_35/batchnorm/subSub7batch_normalization_35/batchnorm/ReadVariableOp:value:0*batch_normalization_35/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
&batch_normalization_35/batchnorm/add_1AddV2*batch_normalization_35/batchnorm/mul_1:z:0(batch_normalization_35/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????]
dropout_20/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_20/dropout/MulMul*batch_normalization_35/batchnorm/add_1:z:0!dropout_20/dropout/Const:output:0*
T0*(
_output_shapes
:??????????r
dropout_20/dropout/ShapeShape*batch_normalization_35/batchnorm/add_1:z:0*
T0*
_output_shapes
:?
/dropout_20/dropout/random_uniform/RandomUniformRandomUniform!dropout_20/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0f
!dropout_20/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_20/dropout/GreaterEqualGreaterEqual8dropout_20/dropout/random_uniform/RandomUniform:output:0*dropout_20/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_20/dropout/CastCast#dropout_20/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_20/dropout/Mul_1Muldropout_20/dropout/Mul:z:0dropout_20/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_10/MatMulMatMuldropout_20/dropout/Mul_1:z:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l
activation_4/SoftmaxSoftmaxdense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????m
IdentityIdentityactivation_4/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp&^batch_normalization_28/AssignNewValue(^batch_normalization_28/AssignNewValue_17^batch_normalization_28/FusedBatchNormV3/ReadVariableOp9^batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_28/ReadVariableOp(^batch_normalization_28/ReadVariableOp_1&^batch_normalization_29/AssignNewValue(^batch_normalization_29/AssignNewValue_17^batch_normalization_29/FusedBatchNormV3/ReadVariableOp9^batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_29/ReadVariableOp(^batch_normalization_29/ReadVariableOp_1&^batch_normalization_30/AssignNewValue(^batch_normalization_30/AssignNewValue_17^batch_normalization_30/FusedBatchNormV3/ReadVariableOp9^batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_30/ReadVariableOp(^batch_normalization_30/ReadVariableOp_1&^batch_normalization_31/AssignNewValue(^batch_normalization_31/AssignNewValue_17^batch_normalization_31/FusedBatchNormV3/ReadVariableOp9^batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_31/ReadVariableOp(^batch_normalization_31/ReadVariableOp_1&^batch_normalization_32/AssignNewValue(^batch_normalization_32/AssignNewValue_17^batch_normalization_32/FusedBatchNormV3/ReadVariableOp9^batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_32/ReadVariableOp(^batch_normalization_32/ReadVariableOp_1&^batch_normalization_33/AssignNewValue(^batch_normalization_33/AssignNewValue_17^batch_normalization_33/FusedBatchNormV3/ReadVariableOp9^batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_33/ReadVariableOp(^batch_normalization_33/ReadVariableOp_1'^batch_normalization_34/AssignMovingAvg6^batch_normalization_34/AssignMovingAvg/ReadVariableOp)^batch_normalization_34/AssignMovingAvg_18^batch_normalization_34/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_34/batchnorm/ReadVariableOp4^batch_normalization_34/batchnorm/mul/ReadVariableOp'^batch_normalization_35/AssignMovingAvg6^batch_normalization_35/AssignMovingAvg/ReadVariableOp)^batch_normalization_35/AssignMovingAvg_18^batch_normalization_35/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_35/batchnorm/ReadVariableOp4^batch_normalization_35/batchnorm/mul/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????pp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_28/AssignNewValue%batch_normalization_28/AssignNewValue2R
'batch_normalization_28/AssignNewValue_1'batch_normalization_28/AssignNewValue_12p
6batch_normalization_28/FusedBatchNormV3/ReadVariableOp6batch_normalization_28/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_18batch_normalization_28/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_28/ReadVariableOp%batch_normalization_28/ReadVariableOp2R
'batch_normalization_28/ReadVariableOp_1'batch_normalization_28/ReadVariableOp_12N
%batch_normalization_29/AssignNewValue%batch_normalization_29/AssignNewValue2R
'batch_normalization_29/AssignNewValue_1'batch_normalization_29/AssignNewValue_12p
6batch_normalization_29/FusedBatchNormV3/ReadVariableOp6batch_normalization_29/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_18batch_normalization_29/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_29/ReadVariableOp%batch_normalization_29/ReadVariableOp2R
'batch_normalization_29/ReadVariableOp_1'batch_normalization_29/ReadVariableOp_12N
%batch_normalization_30/AssignNewValue%batch_normalization_30/AssignNewValue2R
'batch_normalization_30/AssignNewValue_1'batch_normalization_30/AssignNewValue_12p
6batch_normalization_30/FusedBatchNormV3/ReadVariableOp6batch_normalization_30/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_18batch_normalization_30/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_30/ReadVariableOp%batch_normalization_30/ReadVariableOp2R
'batch_normalization_30/ReadVariableOp_1'batch_normalization_30/ReadVariableOp_12N
%batch_normalization_31/AssignNewValue%batch_normalization_31/AssignNewValue2R
'batch_normalization_31/AssignNewValue_1'batch_normalization_31/AssignNewValue_12p
6batch_normalization_31/FusedBatchNormV3/ReadVariableOp6batch_normalization_31/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_31/FusedBatchNormV3/ReadVariableOp_18batch_normalization_31/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_31/ReadVariableOp%batch_normalization_31/ReadVariableOp2R
'batch_normalization_31/ReadVariableOp_1'batch_normalization_31/ReadVariableOp_12N
%batch_normalization_32/AssignNewValue%batch_normalization_32/AssignNewValue2R
'batch_normalization_32/AssignNewValue_1'batch_normalization_32/AssignNewValue_12p
6batch_normalization_32/FusedBatchNormV3/ReadVariableOp6batch_normalization_32/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_18batch_normalization_32/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_32/ReadVariableOp%batch_normalization_32/ReadVariableOp2R
'batch_normalization_32/ReadVariableOp_1'batch_normalization_32/ReadVariableOp_12N
%batch_normalization_33/AssignNewValue%batch_normalization_33/AssignNewValue2R
'batch_normalization_33/AssignNewValue_1'batch_normalization_33/AssignNewValue_12p
6batch_normalization_33/FusedBatchNormV3/ReadVariableOp6batch_normalization_33/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_18batch_normalization_33/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_33/ReadVariableOp%batch_normalization_33/ReadVariableOp2R
'batch_normalization_33/ReadVariableOp_1'batch_normalization_33/ReadVariableOp_12P
&batch_normalization_34/AssignMovingAvg&batch_normalization_34/AssignMovingAvg2n
5batch_normalization_34/AssignMovingAvg/ReadVariableOp5batch_normalization_34/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_34/AssignMovingAvg_1(batch_normalization_34/AssignMovingAvg_12r
7batch_normalization_34/AssignMovingAvg_1/ReadVariableOp7batch_normalization_34/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_34/batchnorm/ReadVariableOp/batch_normalization_34/batchnorm/ReadVariableOp2j
3batch_normalization_34/batchnorm/mul/ReadVariableOp3batch_normalization_34/batchnorm/mul/ReadVariableOp2P
&batch_normalization_35/AssignMovingAvg&batch_normalization_35/AssignMovingAvg2n
5batch_normalization_35/AssignMovingAvg/ReadVariableOp5batch_normalization_35/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_35/AssignMovingAvg_1(batch_normalization_35/AssignMovingAvg_12r
7batch_normalization_35/AssignMovingAvg_1/ReadVariableOp7batch_normalization_35/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_35/batchnorm/ReadVariableOp/batch_normalization_35/batchnorm/ReadVariableOp2j
3batch_normalization_35/batchnorm/mul/ReadVariableOp3batch_normalization_35/batchnorm/mul/ReadVariableOp2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????pp
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_377089

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_28_layer_call_fn_379476

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_376667?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?

e
F__inference_dropout_16_layer_call_and_return_conditional_losses_377895

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????88 C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????88 *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????88 w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????88 q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????88 a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????88 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????88 :W S
/
_output_shapes
:?????????88 
 
_user_specified_nameinputs
?
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_377458

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? b  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_28_layer_call_and_return_conditional_losses_379891

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_376698

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
^
B__inference_elu_22_layer_call_and_return_conditional_losses_379554

inputs
identityL
EluEluinputs*
T0*/
_output_shapes
:?????????pp a
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:?????????pp "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????pp :W S
/
_output_shapes
:?????????pp 
 
_user_specified_nameinputs
?
^
B__inference_elu_23_layer_call_and_return_conditional_losses_379682

inputs
identityL
EluEluinputs*
T0*/
_output_shapes
:?????????88@a
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:?????????88@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????88@:W S
/
_output_shapes
:?????????88@
 
_user_specified_nameinputs
?
d
F__inference_dropout_16_layer_call_and_return_conditional_losses_379641

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????88 c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????88 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????88 :W S
/
_output_shapes
:?????????88 
 
_user_specified_nameinputs
ۤ
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_378176

inputs*
conv2d_24_378040: 
conv2d_24_378042: +
batch_normalization_28_378046: +
batch_normalization_28_378048: +
batch_normalization_28_378050: +
batch_normalization_28_378052: *
conv2d_25_378055:  
conv2d_25_378057: +
batch_normalization_29_378061: +
batch_normalization_29_378063: +
batch_normalization_29_378065: +
batch_normalization_29_378067: *
conv2d_26_378072: @
conv2d_26_378074:@+
batch_normalization_30_378078:@+
batch_normalization_30_378080:@+
batch_normalization_30_378082:@+
batch_normalization_30_378084:@*
conv2d_27_378087:@@
conv2d_27_378089:@+
batch_normalization_31_378093:@+
batch_normalization_31_378095:@+
batch_normalization_31_378097:@+
batch_normalization_31_378099:@+
conv2d_28_378104:@?
conv2d_28_378106:	?,
batch_normalization_32_378110:	?,
batch_normalization_32_378112:	?,
batch_normalization_32_378114:	?,
batch_normalization_32_378116:	?,
conv2d_29_378119:??
conv2d_29_378121:	?,
batch_normalization_33_378125:	?,
batch_normalization_33_378127:	?,
batch_normalization_33_378129:	?,
batch_normalization_33_378131:	?#
dense_8_378137:???
dense_8_378139:	?,
batch_normalization_34_378143:	?,
batch_normalization_34_378145:	?,
batch_normalization_34_378147:	?,
batch_normalization_34_378149:	?"
dense_9_378153:
??
dense_9_378155:	?,
batch_normalization_35_378159:	?,
batch_normalization_35_378161:	?,
batch_normalization_35_378163:	?,
batch_normalization_35_378165:	?"
dense_10_378169:	?
dense_10_378171:
identity??.batch_normalization_28/StatefulPartitionedCall?.batch_normalization_29/StatefulPartitionedCall?.batch_normalization_30/StatefulPartitionedCall?.batch_normalization_31/StatefulPartitionedCall?.batch_normalization_32/StatefulPartitionedCall?.batch_normalization_33/StatefulPartitionedCall?.batch_normalization_34/StatefulPartitionedCall?.batch_normalization_35/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall?!conv2d_25/StatefulPartitionedCall?!conv2d_26/StatefulPartitionedCall?!conv2d_27/StatefulPartitionedCall?!conv2d_28/StatefulPartitionedCall?!conv2d_29/StatefulPartitionedCall? dense_10/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?"dropout_16/StatefulPartitionedCall?"dropout_17/StatefulPartitionedCall?"dropout_18/StatefulPartitionedCall?"dropout_19/StatefulPartitionedCall?"dropout_20/StatefulPartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_24_378040conv2d_24_378042*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_377246?
elu_21/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_21_layer_call_and_return_conditional_losses_377257?
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCallelu_21/PartitionedCall:output:0batch_normalization_28_378046batch_normalization_28_378048batch_normalization_28_378050batch_normalization_28_378052*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_376698?
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0conv2d_25_378055conv2d_25_378057*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_377278?
elu_22/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_22_layer_call_and_return_conditional_losses_377289?
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCallelu_22/PartitionedCall:output:0batch_normalization_29_378061batch_normalization_29_378063batch_normalization_29_378065batch_normalization_29_378067*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_376762?
 max_pooling2d_12/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_376782?
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_377895?
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall+dropout_16/StatefulPartitionedCall:output:0conv2d_26_378072conv2d_26_378074*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_377318?
elu_23/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_23_layer_call_and_return_conditional_losses_377329?
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCallelu_23/PartitionedCall:output:0batch_normalization_30_378078batch_normalization_30_378080batch_normalization_30_378082batch_normalization_30_378084*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_376838?
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0conv2d_27_378087conv2d_27_378089*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_377350?
elu_24/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_24_layer_call_and_return_conditional_losses_377361?
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCallelu_24/PartitionedCall:output:0batch_normalization_31_378093batch_normalization_31_378095batch_normalization_31_378097batch_normalization_31_378099*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_376902?
 max_pooling2d_13/PartitionedCallPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_376922?
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0#^dropout_16/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_377840?
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0conv2d_28_378104conv2d_28_378106*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_377390?
elu_25/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_25_layer_call_and_return_conditional_losses_377401?
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCallelu_25/PartitionedCall:output:0batch_normalization_32_378110batch_normalization_32_378112batch_normalization_32_378114batch_normalization_32_378116*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_376978?
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0conv2d_29_378119conv2d_29_378121*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_377422?
elu_26/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_26_layer_call_and_return_conditional_losses_377433?
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCallelu_26/PartitionedCall:output:0batch_normalization_33_378125batch_normalization_33_378127batch_normalization_33_378129batch_normalization_33_378131*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_377042?
 max_pooling2d_14/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_377062?
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0#^dropout_17/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_18_layer_call_and_return_conditional_losses_377785?
flatten_4/PartitionedCallPartitionedCall+dropout_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_377458?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_378137dense_8_378139*
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
GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_377470?
elu_27/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_27_layer_call_and_return_conditional_losses_377481?
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCallelu_27/PartitionedCall:output:0batch_normalization_34_378143batch_normalization_34_378145batch_normalization_34_378147batch_normalization_34_378149*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_377136?
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_19_layer_call_and_return_conditional_losses_377740?
dense_9/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_9_378153dense_9_378155*
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
GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_377509?
elu_28/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_28_layer_call_and_return_conditional_losses_377520?
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCallelu_28/PartitionedCall:output:0batch_normalization_35_378159batch_normalization_35_378161batch_normalization_35_378163batch_normalization_35_378165*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_377218?
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0#^dropout_19/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_377701?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall+dropout_20/StatefulPartitionedCall:output:0dense_10_378169dense_10_378171*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_377548?
activation_4/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_377559t
IdentityIdentity%activation_4/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????pp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall:W S
/
_output_shapes
:?????????pp
 
_user_specified_nameinputs
?

?
E__inference_conv2d_24_layer_call_and_return_conditional_losses_379453

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????pp w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????pp: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????pp
 
_user_specified_nameinputs
?
C
'__inference_elu_21_layer_call_fn_379458

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_21_layer_call_and_return_conditional_losses_377257h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????pp "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????pp :W S
/
_output_shapes
:?????????pp 
 
_user_specified_nameinputs
?
^
B__inference_elu_21_layer_call_and_return_conditional_losses_379463

inputs
identityL
EluEluinputs*
T0*/
_output_shapes
:?????????pp a
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:?????????pp "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????pp :W S
/
_output_shapes
:?????????pp 
 
_user_specified_nameinputs
?
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_380102

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? b  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_380177

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_8_layer_call_fn_380111

inputs
unknown:???
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
GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_377470p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_28_layer_call_fn_379881

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_377390x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_376947

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
C
'__inference_elu_23_layer_call_fn_379677

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_23_layer_call_and_return_conditional_losses_377329h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????88@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????88@:W S
/
_output_shapes
:?????????88@
 
_user_specified_nameinputs
?

e
F__inference_dropout_18_layer_call_and_return_conditional_losses_377785

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?,
H__inference_sequential_4_layer_call_and_return_conditional_losses_379071

inputsB
(conv2d_24_conv2d_readvariableop_resource: 7
)conv2d_24_biasadd_readvariableop_resource: <
.batch_normalization_28_readvariableop_resource: >
0batch_normalization_28_readvariableop_1_resource: M
?batch_normalization_28_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_28_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_25_conv2d_readvariableop_resource:  7
)conv2d_25_biasadd_readvariableop_resource: <
.batch_normalization_29_readvariableop_resource: >
0batch_normalization_29_readvariableop_1_resource: M
?batch_normalization_29_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_26_conv2d_readvariableop_resource: @7
)conv2d_26_biasadd_readvariableop_resource:@<
.batch_normalization_30_readvariableop_resource:@>
0batch_normalization_30_readvariableop_1_resource:@M
?batch_normalization_30_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_30_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_27_conv2d_readvariableop_resource:@@7
)conv2d_27_biasadd_readvariableop_resource:@<
.batch_normalization_31_readvariableop_resource:@>
0batch_normalization_31_readvariableop_1_resource:@M
?batch_normalization_31_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_31_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_28_conv2d_readvariableop_resource:@?8
)conv2d_28_biasadd_readvariableop_resource:	?=
.batch_normalization_32_readvariableop_resource:	??
0batch_normalization_32_readvariableop_1_resource:	?N
?batch_normalization_32_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_32_fusedbatchnormv3_readvariableop_1_resource:	?D
(conv2d_29_conv2d_readvariableop_resource:??8
)conv2d_29_biasadd_readvariableop_resource:	?=
.batch_normalization_33_readvariableop_resource:	??
0batch_normalization_33_readvariableop_1_resource:	?N
?batch_normalization_33_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_33_fusedbatchnormv3_readvariableop_1_resource:	?;
&dense_8_matmul_readvariableop_resource:???6
'dense_8_biasadd_readvariableop_resource:	?G
8batch_normalization_34_batchnorm_readvariableop_resource:	?K
<batch_normalization_34_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_34_batchnorm_readvariableop_1_resource:	?I
:batch_normalization_34_batchnorm_readvariableop_2_resource:	?:
&dense_9_matmul_readvariableop_resource:
??6
'dense_9_biasadd_readvariableop_resource:	?G
8batch_normalization_35_batchnorm_readvariableop_resource:	?K
<batch_normalization_35_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_35_batchnorm_readvariableop_1_resource:	?I
:batch_normalization_35_batchnorm_readvariableop_2_resource:	?:
'dense_10_matmul_readvariableop_resource:	?6
(dense_10_biasadd_readvariableop_resource:
identity??6batch_normalization_28/FusedBatchNormV3/ReadVariableOp?8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_28/ReadVariableOp?'batch_normalization_28/ReadVariableOp_1?6batch_normalization_29/FusedBatchNormV3/ReadVariableOp?8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_29/ReadVariableOp?'batch_normalization_29/ReadVariableOp_1?6batch_normalization_30/FusedBatchNormV3/ReadVariableOp?8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_30/ReadVariableOp?'batch_normalization_30/ReadVariableOp_1?6batch_normalization_31/FusedBatchNormV3/ReadVariableOp?8batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_31/ReadVariableOp?'batch_normalization_31/ReadVariableOp_1?6batch_normalization_32/FusedBatchNormV3/ReadVariableOp?8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_32/ReadVariableOp?'batch_normalization_32/ReadVariableOp_1?6batch_normalization_33/FusedBatchNormV3/ReadVariableOp?8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_33/ReadVariableOp?'batch_normalization_33/ReadVariableOp_1?/batch_normalization_34/batchnorm/ReadVariableOp?1batch_normalization_34/batchnorm/ReadVariableOp_1?1batch_normalization_34/batchnorm/ReadVariableOp_2?3batch_normalization_34/batchnorm/mul/ReadVariableOp?/batch_normalization_35/batchnorm/ReadVariableOp?1batch_normalization_35/batchnorm/ReadVariableOp_1?1batch_normalization_35/batchnorm/ReadVariableOp_2?3batch_normalization_35/batchnorm/mul/ReadVariableOp? conv2d_24/BiasAdd/ReadVariableOp?conv2d_24/Conv2D/ReadVariableOp? conv2d_25/BiasAdd/ReadVariableOp?conv2d_25/Conv2D/ReadVariableOp? conv2d_26/BiasAdd/ReadVariableOp?conv2d_26/Conv2D/ReadVariableOp? conv2d_27/BiasAdd/ReadVariableOp?conv2d_27/Conv2D/ReadVariableOp? conv2d_28/BiasAdd/ReadVariableOp?conv2d_28/Conv2D/ReadVariableOp? conv2d_29/BiasAdd/ReadVariableOp?conv2d_29/Conv2D/ReadVariableOp?dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_24/Conv2DConv2Dinputs'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp *
paddingSAME*
strides
?
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp g

elu_21/EluEluconv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:?????????pp ?
%batch_normalization_28/ReadVariableOpReadVariableOp.batch_normalization_28_readvariableop_resource*
_output_shapes
: *
dtype0?
'batch_normalization_28/ReadVariableOp_1ReadVariableOp0batch_normalization_28_readvariableop_1_resource*
_output_shapes
: *
dtype0?
6batch_normalization_28/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_28_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_28_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
'batch_normalization_28/FusedBatchNormV3FusedBatchNormV3elu_21/Elu:activations:0-batch_normalization_28/ReadVariableOp:value:0/batch_normalization_28/ReadVariableOp_1:value:0>batch_normalization_28/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????pp : : : : :*
epsilon%o?:*
is_training( ?
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_25/Conv2DConv2D+batch_normalization_28/FusedBatchNormV3:y:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp *
paddingSAME*
strides
?
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp g

elu_22/EluEluconv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:?????????pp ?
%batch_normalization_29/ReadVariableOpReadVariableOp.batch_normalization_29_readvariableop_resource*
_output_shapes
: *
dtype0?
'batch_normalization_29/ReadVariableOp_1ReadVariableOp0batch_normalization_29_readvariableop_1_resource*
_output_shapes
: *
dtype0?
6batch_normalization_29/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_29_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
'batch_normalization_29/FusedBatchNormV3FusedBatchNormV3elu_22/Elu:activations:0-batch_normalization_29/ReadVariableOp:value:0/batch_normalization_29/ReadVariableOp_1:value:0>batch_normalization_29/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????pp : : : : :*
epsilon%o?:*
is_training( ?
max_pooling2d_12/MaxPoolMaxPool+batch_normalization_29/FusedBatchNormV3:y:0*/
_output_shapes
:?????????88 *
ksize
*
paddingVALID*
strides
|
dropout_16/IdentityIdentity!max_pooling2d_12/MaxPool:output:0*
T0*/
_output_shapes
:?????????88 ?
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_26/Conv2DConv2Ddropout_16/Identity:output:0'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@*
paddingSAME*
strides
?
 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@g

elu_23/EluEluconv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:?????????88@?
%batch_normalization_30/ReadVariableOpReadVariableOp.batch_normalization_30_readvariableop_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_30/ReadVariableOp_1ReadVariableOp0batch_normalization_30_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
6batch_normalization_30/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_30_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_30_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_30/FusedBatchNormV3FusedBatchNormV3elu_23/Elu:activations:0-batch_normalization_30/ReadVariableOp:value:0/batch_normalization_30/ReadVariableOp_1:value:0>batch_normalization_30/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????88@:@:@:@:@:*
epsilon%o?:*
is_training( ?
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_27/Conv2DConv2D+batch_normalization_30/FusedBatchNormV3:y:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@*
paddingSAME*
strides
?
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@g

elu_24/EluEluconv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:?????????88@?
%batch_normalization_31/ReadVariableOpReadVariableOp.batch_normalization_31_readvariableop_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_31/ReadVariableOp_1ReadVariableOp0batch_normalization_31_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
6batch_normalization_31/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_31_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
8batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_31_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_31/FusedBatchNormV3FusedBatchNormV3elu_24/Elu:activations:0-batch_normalization_31/ReadVariableOp:value:0/batch_normalization_31/ReadVariableOp_1:value:0>batch_normalization_31/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????88@:@:@:@:@:*
epsilon%o?:*
is_training( ?
max_pooling2d_13/MaxPoolMaxPool+batch_normalization_31/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
|
dropout_17/IdentityIdentity!max_pooling2d_13/MaxPool:output:0*
T0*/
_output_shapes
:?????????@?
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_28/Conv2DConv2Ddropout_17/Identity:output:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????h

elu_25/EluEluconv2d_28/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
%batch_normalization_32/ReadVariableOpReadVariableOp.batch_normalization_32_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_32/ReadVariableOp_1ReadVariableOp0batch_normalization_32_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
6batch_normalization_32/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_32_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_32_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_32/FusedBatchNormV3FusedBatchNormV3elu_25/Elu:activations:0-batch_normalization_32/ReadVariableOp:value:0/batch_normalization_32/ReadVariableOp_1:value:0>batch_normalization_32/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_29/Conv2DConv2D+batch_normalization_32/FusedBatchNormV3:y:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????h

elu_26/EluEluconv2d_29/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
%batch_normalization_33/ReadVariableOpReadVariableOp.batch_normalization_33_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_33/ReadVariableOp_1ReadVariableOp0batch_normalization_33_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
6batch_normalization_33/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_33_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_33_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_33/FusedBatchNormV3FusedBatchNormV3elu_26/Elu:activations:0-batch_normalization_33/ReadVariableOp:value:0/batch_normalization_33/ReadVariableOp_1:value:0>batch_normalization_33/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
max_pooling2d_14/MaxPoolMaxPool+batch_normalization_33/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
}
dropout_18/IdentityIdentity!max_pooling2d_14/MaxPool:output:0*
T0*0
_output_shapes
:??????????`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? b  ?
flatten_4/ReshapeReshapedropout_18/Identity:output:0flatten_4/Const:output:0*
T0*)
_output_shapes
:????????????
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype0?
dense_8/MatMulMatMulflatten_4/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^

elu_27/EluEludense_8/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
/batch_normalization_34/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_34_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0k
&batch_normalization_34/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_34/batchnorm/addAddV27batch_normalization_34/batchnorm/ReadVariableOp:value:0/batch_normalization_34/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?
&batch_normalization_34/batchnorm/RsqrtRsqrt(batch_normalization_34/batchnorm/add:z:0*
T0*
_output_shapes	
:??
3batch_normalization_34/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_34_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
$batch_normalization_34/batchnorm/mulMul*batch_normalization_34/batchnorm/Rsqrt:y:0;batch_normalization_34/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
&batch_normalization_34/batchnorm/mul_1Mulelu_27/Elu:activations:0(batch_normalization_34/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
1batch_normalization_34/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_34_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_34/batchnorm/mul_2Mul9batch_normalization_34/batchnorm/ReadVariableOp_1:value:0(batch_normalization_34/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
1batch_normalization_34/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_34_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0?
$batch_normalization_34/batchnorm/subSub9batch_normalization_34/batchnorm/ReadVariableOp_2:value:0*batch_normalization_34/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
&batch_normalization_34/batchnorm/add_1AddV2*batch_normalization_34/batchnorm/mul_1:z:0(batch_normalization_34/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????~
dropout_19/IdentityIdentity*batch_normalization_34/batchnorm/add_1:z:0*
T0*(
_output_shapes
:???????????
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_9/MatMulMatMuldropout_19/Identity:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^

elu_28/EluEludense_9/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
/batch_normalization_35/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_35_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0k
&batch_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_35/batchnorm/addAddV27batch_normalization_35/batchnorm/ReadVariableOp:value:0/batch_normalization_35/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?
&batch_normalization_35/batchnorm/RsqrtRsqrt(batch_normalization_35/batchnorm/add:z:0*
T0*
_output_shapes	
:??
3batch_normalization_35/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_35_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
$batch_normalization_35/batchnorm/mulMul*batch_normalization_35/batchnorm/Rsqrt:y:0;batch_normalization_35/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
&batch_normalization_35/batchnorm/mul_1Mulelu_28/Elu:activations:0(batch_normalization_35/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
1batch_normalization_35/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_35_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_35/batchnorm/mul_2Mul9batch_normalization_35/batchnorm/ReadVariableOp_1:value:0(batch_normalization_35/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
1batch_normalization_35/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_35_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0?
$batch_normalization_35/batchnorm/subSub9batch_normalization_35/batchnorm/ReadVariableOp_2:value:0*batch_normalization_35/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
&batch_normalization_35/batchnorm/add_1AddV2*batch_normalization_35/batchnorm/mul_1:z:0(batch_normalization_35/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????~
dropout_20/IdentityIdentity*batch_normalization_35/batchnorm/add_1:z:0*
T0*(
_output_shapes
:???????????
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_10/MatMulMatMuldropout_20/Identity:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l
activation_4/SoftmaxSoftmaxdense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????m
IdentityIdentityactivation_4/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp7^batch_normalization_28/FusedBatchNormV3/ReadVariableOp9^batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_28/ReadVariableOp(^batch_normalization_28/ReadVariableOp_17^batch_normalization_29/FusedBatchNormV3/ReadVariableOp9^batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_29/ReadVariableOp(^batch_normalization_29/ReadVariableOp_17^batch_normalization_30/FusedBatchNormV3/ReadVariableOp9^batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_30/ReadVariableOp(^batch_normalization_30/ReadVariableOp_17^batch_normalization_31/FusedBatchNormV3/ReadVariableOp9^batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_31/ReadVariableOp(^batch_normalization_31/ReadVariableOp_17^batch_normalization_32/FusedBatchNormV3/ReadVariableOp9^batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_32/ReadVariableOp(^batch_normalization_32/ReadVariableOp_17^batch_normalization_33/FusedBatchNormV3/ReadVariableOp9^batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_33/ReadVariableOp(^batch_normalization_33/ReadVariableOp_10^batch_normalization_34/batchnorm/ReadVariableOp2^batch_normalization_34/batchnorm/ReadVariableOp_12^batch_normalization_34/batchnorm/ReadVariableOp_24^batch_normalization_34/batchnorm/mul/ReadVariableOp0^batch_normalization_35/batchnorm/ReadVariableOp2^batch_normalization_35/batchnorm/ReadVariableOp_12^batch_normalization_35/batchnorm/ReadVariableOp_24^batch_normalization_35/batchnorm/mul/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????pp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_28/FusedBatchNormV3/ReadVariableOp6batch_normalization_28/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_18batch_normalization_28/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_28/ReadVariableOp%batch_normalization_28/ReadVariableOp2R
'batch_normalization_28/ReadVariableOp_1'batch_normalization_28/ReadVariableOp_12p
6batch_normalization_29/FusedBatchNormV3/ReadVariableOp6batch_normalization_29/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_18batch_normalization_29/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_29/ReadVariableOp%batch_normalization_29/ReadVariableOp2R
'batch_normalization_29/ReadVariableOp_1'batch_normalization_29/ReadVariableOp_12p
6batch_normalization_30/FusedBatchNormV3/ReadVariableOp6batch_normalization_30/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_18batch_normalization_30/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_30/ReadVariableOp%batch_normalization_30/ReadVariableOp2R
'batch_normalization_30/ReadVariableOp_1'batch_normalization_30/ReadVariableOp_12p
6batch_normalization_31/FusedBatchNormV3/ReadVariableOp6batch_normalization_31/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_31/FusedBatchNormV3/ReadVariableOp_18batch_normalization_31/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_31/ReadVariableOp%batch_normalization_31/ReadVariableOp2R
'batch_normalization_31/ReadVariableOp_1'batch_normalization_31/ReadVariableOp_12p
6batch_normalization_32/FusedBatchNormV3/ReadVariableOp6batch_normalization_32/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_18batch_normalization_32/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_32/ReadVariableOp%batch_normalization_32/ReadVariableOp2R
'batch_normalization_32/ReadVariableOp_1'batch_normalization_32/ReadVariableOp_12p
6batch_normalization_33/FusedBatchNormV3/ReadVariableOp6batch_normalization_33/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_18batch_normalization_33/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_33/ReadVariableOp%batch_normalization_33/ReadVariableOp2R
'batch_normalization_33/ReadVariableOp_1'batch_normalization_33/ReadVariableOp_12b
/batch_normalization_34/batchnorm/ReadVariableOp/batch_normalization_34/batchnorm/ReadVariableOp2f
1batch_normalization_34/batchnorm/ReadVariableOp_11batch_normalization_34/batchnorm/ReadVariableOp_12f
1batch_normalization_34/batchnorm/ReadVariableOp_21batch_normalization_34/batchnorm/ReadVariableOp_22j
3batch_normalization_34/batchnorm/mul/ReadVariableOp3batch_normalization_34/batchnorm/mul/ReadVariableOp2b
/batch_normalization_35/batchnorm/ReadVariableOp/batch_normalization_35/batchnorm/ReadVariableOp2f
1batch_normalization_35/batchnorm/ReadVariableOp_11batch_normalization_35/batchnorm/ReadVariableOp_12f
1batch_normalization_35/batchnorm/ReadVariableOp_21batch_normalization_35/batchnorm/ReadVariableOp_22j
3batch_normalization_35/batchnorm/mul/ReadVariableOp3batch_normalization_35/batchnorm/mul/ReadVariableOp2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????pp
 
_user_specified_nameinputs
?	
?
C__inference_dense_8_layer_call_and_return_conditional_losses_380121

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_379963

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_20_layer_call_and_return_conditional_losses_377701

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_376667

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?

?
E__inference_conv2d_26_layer_call_and_return_conditional_losses_377318

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????88@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????88 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????88 
 
_user_specified_nameinputs
?
G
+__inference_dropout_19_layer_call_fn_380216

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_19_layer_call_and_return_conditional_losses_377497a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_19_layer_call_and_return_conditional_losses_380238

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

e
F__inference_dropout_18_layer_call_and_return_conditional_losses_380091

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_18_layer_call_and_return_conditional_losses_380079

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_377218

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	??
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_elu_26_layer_call_and_return_conditional_losses_379992

inputs
identityM
EluEluinputs*
T0*0
_output_shapes
:??????????b
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_4_layer_call_fn_378878

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@?

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?

unknown_34:	?

unknown_35:???

unknown_36:	?

unknown_37:	?

unknown_38:	?

unknown_39:	?

unknown_40:	?

unknown_41:
??

unknown_42:	?

unknown_43:	?

unknown_44:	?

unknown_45:	?

unknown_46:	?

unknown_47:	?

unknown_48:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*D
_read_only_resource_inputs&
$"	
 !"%&)*+,/012*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_378176o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????pp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????pp
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_29_layer_call_fn_379580

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_376762?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_380064

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_380036

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_4_layer_call_fn_378773

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@?

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?

unknown_34:	?

unknown_35:???

unknown_36:	?

unknown_37:	?

unknown_38:	?

unknown_39:	?

unknown_40:	?

unknown_41:
??

unknown_42:	?

unknown_43:	?

unknown_44:	?

unknown_45:	?

unknown_46:	?

unknown_47:	?

unknown_48:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./012*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_377562o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????pp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????pp
 
_user_specified_nameinputs
??
?6
!__inference__wrapped_model_376645
conv2d_24_inputO
5sequential_4_conv2d_24_conv2d_readvariableop_resource: D
6sequential_4_conv2d_24_biasadd_readvariableop_resource: I
;sequential_4_batch_normalization_28_readvariableop_resource: K
=sequential_4_batch_normalization_28_readvariableop_1_resource: Z
Lsequential_4_batch_normalization_28_fusedbatchnormv3_readvariableop_resource: \
Nsequential_4_batch_normalization_28_fusedbatchnormv3_readvariableop_1_resource: O
5sequential_4_conv2d_25_conv2d_readvariableop_resource:  D
6sequential_4_conv2d_25_biasadd_readvariableop_resource: I
;sequential_4_batch_normalization_29_readvariableop_resource: K
=sequential_4_batch_normalization_29_readvariableop_1_resource: Z
Lsequential_4_batch_normalization_29_fusedbatchnormv3_readvariableop_resource: \
Nsequential_4_batch_normalization_29_fusedbatchnormv3_readvariableop_1_resource: O
5sequential_4_conv2d_26_conv2d_readvariableop_resource: @D
6sequential_4_conv2d_26_biasadd_readvariableop_resource:@I
;sequential_4_batch_normalization_30_readvariableop_resource:@K
=sequential_4_batch_normalization_30_readvariableop_1_resource:@Z
Lsequential_4_batch_normalization_30_fusedbatchnormv3_readvariableop_resource:@\
Nsequential_4_batch_normalization_30_fusedbatchnormv3_readvariableop_1_resource:@O
5sequential_4_conv2d_27_conv2d_readvariableop_resource:@@D
6sequential_4_conv2d_27_biasadd_readvariableop_resource:@I
;sequential_4_batch_normalization_31_readvariableop_resource:@K
=sequential_4_batch_normalization_31_readvariableop_1_resource:@Z
Lsequential_4_batch_normalization_31_fusedbatchnormv3_readvariableop_resource:@\
Nsequential_4_batch_normalization_31_fusedbatchnormv3_readvariableop_1_resource:@P
5sequential_4_conv2d_28_conv2d_readvariableop_resource:@?E
6sequential_4_conv2d_28_biasadd_readvariableop_resource:	?J
;sequential_4_batch_normalization_32_readvariableop_resource:	?L
=sequential_4_batch_normalization_32_readvariableop_1_resource:	?[
Lsequential_4_batch_normalization_32_fusedbatchnormv3_readvariableop_resource:	?]
Nsequential_4_batch_normalization_32_fusedbatchnormv3_readvariableop_1_resource:	?Q
5sequential_4_conv2d_29_conv2d_readvariableop_resource:??E
6sequential_4_conv2d_29_biasadd_readvariableop_resource:	?J
;sequential_4_batch_normalization_33_readvariableop_resource:	?L
=sequential_4_batch_normalization_33_readvariableop_1_resource:	?[
Lsequential_4_batch_normalization_33_fusedbatchnormv3_readvariableop_resource:	?]
Nsequential_4_batch_normalization_33_fusedbatchnormv3_readvariableop_1_resource:	?H
3sequential_4_dense_8_matmul_readvariableop_resource:???C
4sequential_4_dense_8_biasadd_readvariableop_resource:	?T
Esequential_4_batch_normalization_34_batchnorm_readvariableop_resource:	?X
Isequential_4_batch_normalization_34_batchnorm_mul_readvariableop_resource:	?V
Gsequential_4_batch_normalization_34_batchnorm_readvariableop_1_resource:	?V
Gsequential_4_batch_normalization_34_batchnorm_readvariableop_2_resource:	?G
3sequential_4_dense_9_matmul_readvariableop_resource:
??C
4sequential_4_dense_9_biasadd_readvariableop_resource:	?T
Esequential_4_batch_normalization_35_batchnorm_readvariableop_resource:	?X
Isequential_4_batch_normalization_35_batchnorm_mul_readvariableop_resource:	?V
Gsequential_4_batch_normalization_35_batchnorm_readvariableop_1_resource:	?V
Gsequential_4_batch_normalization_35_batchnorm_readvariableop_2_resource:	?G
4sequential_4_dense_10_matmul_readvariableop_resource:	?C
5sequential_4_dense_10_biasadd_readvariableop_resource:
identity??Csequential_4/batch_normalization_28/FusedBatchNormV3/ReadVariableOp?Esequential_4/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1?2sequential_4/batch_normalization_28/ReadVariableOp?4sequential_4/batch_normalization_28/ReadVariableOp_1?Csequential_4/batch_normalization_29/FusedBatchNormV3/ReadVariableOp?Esequential_4/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1?2sequential_4/batch_normalization_29/ReadVariableOp?4sequential_4/batch_normalization_29/ReadVariableOp_1?Csequential_4/batch_normalization_30/FusedBatchNormV3/ReadVariableOp?Esequential_4/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1?2sequential_4/batch_normalization_30/ReadVariableOp?4sequential_4/batch_normalization_30/ReadVariableOp_1?Csequential_4/batch_normalization_31/FusedBatchNormV3/ReadVariableOp?Esequential_4/batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1?2sequential_4/batch_normalization_31/ReadVariableOp?4sequential_4/batch_normalization_31/ReadVariableOp_1?Csequential_4/batch_normalization_32/FusedBatchNormV3/ReadVariableOp?Esequential_4/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1?2sequential_4/batch_normalization_32/ReadVariableOp?4sequential_4/batch_normalization_32/ReadVariableOp_1?Csequential_4/batch_normalization_33/FusedBatchNormV3/ReadVariableOp?Esequential_4/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1?2sequential_4/batch_normalization_33/ReadVariableOp?4sequential_4/batch_normalization_33/ReadVariableOp_1?<sequential_4/batch_normalization_34/batchnorm/ReadVariableOp?>sequential_4/batch_normalization_34/batchnorm/ReadVariableOp_1?>sequential_4/batch_normalization_34/batchnorm/ReadVariableOp_2?@sequential_4/batch_normalization_34/batchnorm/mul/ReadVariableOp?<sequential_4/batch_normalization_35/batchnorm/ReadVariableOp?>sequential_4/batch_normalization_35/batchnorm/ReadVariableOp_1?>sequential_4/batch_normalization_35/batchnorm/ReadVariableOp_2?@sequential_4/batch_normalization_35/batchnorm/mul/ReadVariableOp?-sequential_4/conv2d_24/BiasAdd/ReadVariableOp?,sequential_4/conv2d_24/Conv2D/ReadVariableOp?-sequential_4/conv2d_25/BiasAdd/ReadVariableOp?,sequential_4/conv2d_25/Conv2D/ReadVariableOp?-sequential_4/conv2d_26/BiasAdd/ReadVariableOp?,sequential_4/conv2d_26/Conv2D/ReadVariableOp?-sequential_4/conv2d_27/BiasAdd/ReadVariableOp?,sequential_4/conv2d_27/Conv2D/ReadVariableOp?-sequential_4/conv2d_28/BiasAdd/ReadVariableOp?,sequential_4/conv2d_28/Conv2D/ReadVariableOp?-sequential_4/conv2d_29/BiasAdd/ReadVariableOp?,sequential_4/conv2d_29/Conv2D/ReadVariableOp?,sequential_4/dense_10/BiasAdd/ReadVariableOp?+sequential_4/dense_10/MatMul/ReadVariableOp?+sequential_4/dense_8/BiasAdd/ReadVariableOp?*sequential_4/dense_8/MatMul/ReadVariableOp?+sequential_4/dense_9/BiasAdd/ReadVariableOp?*sequential_4/dense_9/MatMul/ReadVariableOp?
,sequential_4/conv2d_24/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
sequential_4/conv2d_24/Conv2DConv2Dconv2d_24_input4sequential_4/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp *
paddingSAME*
strides
?
-sequential_4/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_4/conv2d_24/BiasAddBiasAdd&sequential_4/conv2d_24/Conv2D:output:05sequential_4/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp ?
sequential_4/elu_21/EluElu'sequential_4/conv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:?????????pp ?
2sequential_4/batch_normalization_28/ReadVariableOpReadVariableOp;sequential_4_batch_normalization_28_readvariableop_resource*
_output_shapes
: *
dtype0?
4sequential_4/batch_normalization_28/ReadVariableOp_1ReadVariableOp=sequential_4_batch_normalization_28_readvariableop_1_resource*
_output_shapes
: *
dtype0?
Csequential_4/batch_normalization_28/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_4_batch_normalization_28_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
Esequential_4/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_4_batch_normalization_28_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
4sequential_4/batch_normalization_28/FusedBatchNormV3FusedBatchNormV3%sequential_4/elu_21/Elu:activations:0:sequential_4/batch_normalization_28/ReadVariableOp:value:0<sequential_4/batch_normalization_28/ReadVariableOp_1:value:0Ksequential_4/batch_normalization_28/FusedBatchNormV3/ReadVariableOp:value:0Msequential_4/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????pp : : : : :*
epsilon%o?:*
is_training( ?
,sequential_4/conv2d_25/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
sequential_4/conv2d_25/Conv2DConv2D8sequential_4/batch_normalization_28/FusedBatchNormV3:y:04sequential_4/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp *
paddingSAME*
strides
?
-sequential_4/conv2d_25/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_4/conv2d_25/BiasAddBiasAdd&sequential_4/conv2d_25/Conv2D:output:05sequential_4/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp ?
sequential_4/elu_22/EluElu'sequential_4/conv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:?????????pp ?
2sequential_4/batch_normalization_29/ReadVariableOpReadVariableOp;sequential_4_batch_normalization_29_readvariableop_resource*
_output_shapes
: *
dtype0?
4sequential_4/batch_normalization_29/ReadVariableOp_1ReadVariableOp=sequential_4_batch_normalization_29_readvariableop_1_resource*
_output_shapes
: *
dtype0?
Csequential_4/batch_normalization_29/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_4_batch_normalization_29_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
Esequential_4/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_4_batch_normalization_29_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
4sequential_4/batch_normalization_29/FusedBatchNormV3FusedBatchNormV3%sequential_4/elu_22/Elu:activations:0:sequential_4/batch_normalization_29/ReadVariableOp:value:0<sequential_4/batch_normalization_29/ReadVariableOp_1:value:0Ksequential_4/batch_normalization_29/FusedBatchNormV3/ReadVariableOp:value:0Msequential_4/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????pp : : : : :*
epsilon%o?:*
is_training( ?
%sequential_4/max_pooling2d_12/MaxPoolMaxPool8sequential_4/batch_normalization_29/FusedBatchNormV3:y:0*/
_output_shapes
:?????????88 *
ksize
*
paddingVALID*
strides
?
 sequential_4/dropout_16/IdentityIdentity.sequential_4/max_pooling2d_12/MaxPool:output:0*
T0*/
_output_shapes
:?????????88 ?
,sequential_4/conv2d_26/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
sequential_4/conv2d_26/Conv2DConv2D)sequential_4/dropout_16/Identity:output:04sequential_4/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@*
paddingSAME*
strides
?
-sequential_4/conv2d_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_4/conv2d_26/BiasAddBiasAdd&sequential_4/conv2d_26/Conv2D:output:05sequential_4/conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@?
sequential_4/elu_23/EluElu'sequential_4/conv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:?????????88@?
2sequential_4/batch_normalization_30/ReadVariableOpReadVariableOp;sequential_4_batch_normalization_30_readvariableop_resource*
_output_shapes
:@*
dtype0?
4sequential_4/batch_normalization_30/ReadVariableOp_1ReadVariableOp=sequential_4_batch_normalization_30_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
Csequential_4/batch_normalization_30/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_4_batch_normalization_30_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
Esequential_4/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_4_batch_normalization_30_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
4sequential_4/batch_normalization_30/FusedBatchNormV3FusedBatchNormV3%sequential_4/elu_23/Elu:activations:0:sequential_4/batch_normalization_30/ReadVariableOp:value:0<sequential_4/batch_normalization_30/ReadVariableOp_1:value:0Ksequential_4/batch_normalization_30/FusedBatchNormV3/ReadVariableOp:value:0Msequential_4/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????88@:@:@:@:@:*
epsilon%o?:*
is_training( ?
,sequential_4/conv2d_27/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
sequential_4/conv2d_27/Conv2DConv2D8sequential_4/batch_normalization_30/FusedBatchNormV3:y:04sequential_4/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@*
paddingSAME*
strides
?
-sequential_4/conv2d_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_4/conv2d_27/BiasAddBiasAdd&sequential_4/conv2d_27/Conv2D:output:05sequential_4/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@?
sequential_4/elu_24/EluElu'sequential_4/conv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:?????????88@?
2sequential_4/batch_normalization_31/ReadVariableOpReadVariableOp;sequential_4_batch_normalization_31_readvariableop_resource*
_output_shapes
:@*
dtype0?
4sequential_4/batch_normalization_31/ReadVariableOp_1ReadVariableOp=sequential_4_batch_normalization_31_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
Csequential_4/batch_normalization_31/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_4_batch_normalization_31_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
Esequential_4/batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_4_batch_normalization_31_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
4sequential_4/batch_normalization_31/FusedBatchNormV3FusedBatchNormV3%sequential_4/elu_24/Elu:activations:0:sequential_4/batch_normalization_31/ReadVariableOp:value:0<sequential_4/batch_normalization_31/ReadVariableOp_1:value:0Ksequential_4/batch_normalization_31/FusedBatchNormV3/ReadVariableOp:value:0Msequential_4/batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????88@:@:@:@:@:*
epsilon%o?:*
is_training( ?
%sequential_4/max_pooling2d_13/MaxPoolMaxPool8sequential_4/batch_normalization_31/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
 sequential_4/dropout_17/IdentityIdentity.sequential_4/max_pooling2d_13/MaxPool:output:0*
T0*/
_output_shapes
:?????????@?
,sequential_4/conv2d_28/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_28_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
sequential_4/conv2d_28/Conv2DConv2D)sequential_4/dropout_17/Identity:output:04sequential_4/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
-sequential_4/conv2d_28/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_4/conv2d_28/BiasAddBiasAdd&sequential_4/conv2d_28/Conv2D:output:05sequential_4/conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
sequential_4/elu_25/EluElu'sequential_4/conv2d_28/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
2sequential_4/batch_normalization_32/ReadVariableOpReadVariableOp;sequential_4_batch_normalization_32_readvariableop_resource*
_output_shapes	
:?*
dtype0?
4sequential_4/batch_normalization_32/ReadVariableOp_1ReadVariableOp=sequential_4_batch_normalization_32_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
Csequential_4/batch_normalization_32/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_4_batch_normalization_32_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Esequential_4/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_4_batch_normalization_32_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
4sequential_4/batch_normalization_32/FusedBatchNormV3FusedBatchNormV3%sequential_4/elu_25/Elu:activations:0:sequential_4/batch_normalization_32/ReadVariableOp:value:0<sequential_4/batch_normalization_32/ReadVariableOp_1:value:0Ksequential_4/batch_normalization_32/FusedBatchNormV3/ReadVariableOp:value:0Msequential_4/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
,sequential_4/conv2d_29/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_29_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
sequential_4/conv2d_29/Conv2DConv2D8sequential_4/batch_normalization_32/FusedBatchNormV3:y:04sequential_4/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
-sequential_4/conv2d_29/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_29_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_4/conv2d_29/BiasAddBiasAdd&sequential_4/conv2d_29/Conv2D:output:05sequential_4/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
sequential_4/elu_26/EluElu'sequential_4/conv2d_29/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
2sequential_4/batch_normalization_33/ReadVariableOpReadVariableOp;sequential_4_batch_normalization_33_readvariableop_resource*
_output_shapes	
:?*
dtype0?
4sequential_4/batch_normalization_33/ReadVariableOp_1ReadVariableOp=sequential_4_batch_normalization_33_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
Csequential_4/batch_normalization_33/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_4_batch_normalization_33_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Esequential_4/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_4_batch_normalization_33_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
4sequential_4/batch_normalization_33/FusedBatchNormV3FusedBatchNormV3%sequential_4/elu_26/Elu:activations:0:sequential_4/batch_normalization_33/ReadVariableOp:value:0<sequential_4/batch_normalization_33/ReadVariableOp_1:value:0Ksequential_4/batch_normalization_33/FusedBatchNormV3/ReadVariableOp:value:0Msequential_4/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
%sequential_4/max_pooling2d_14/MaxPoolMaxPool8sequential_4/batch_normalization_33/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
?
 sequential_4/dropout_18/IdentityIdentity.sequential_4/max_pooling2d_14/MaxPool:output:0*
T0*0
_output_shapes
:??????????m
sequential_4/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? b  ?
sequential_4/flatten_4/ReshapeReshape)sequential_4/dropout_18/Identity:output:0%sequential_4/flatten_4/Const:output:0*
T0*)
_output_shapes
:????????????
*sequential_4/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_8_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype0?
sequential_4/dense_8/MatMulMatMul'sequential_4/flatten_4/Reshape:output:02sequential_4/dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+sequential_4/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_4/dense_8/BiasAddBiasAdd%sequential_4/dense_8/MatMul:product:03sequential_4/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????x
sequential_4/elu_27/EluElu%sequential_4/dense_8/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
<sequential_4/batch_normalization_34/batchnorm/ReadVariableOpReadVariableOpEsequential_4_batch_normalization_34_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0x
3sequential_4/batch_normalization_34/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
1sequential_4/batch_normalization_34/batchnorm/addAddV2Dsequential_4/batch_normalization_34/batchnorm/ReadVariableOp:value:0<sequential_4/batch_normalization_34/batchnorm/add/y:output:0*
T0*
_output_shapes	
:??
3sequential_4/batch_normalization_34/batchnorm/RsqrtRsqrt5sequential_4/batch_normalization_34/batchnorm/add:z:0*
T0*
_output_shapes	
:??
@sequential_4/batch_normalization_34/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_4_batch_normalization_34_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1sequential_4/batch_normalization_34/batchnorm/mulMul7sequential_4/batch_normalization_34/batchnorm/Rsqrt:y:0Hsequential_4/batch_normalization_34/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
3sequential_4/batch_normalization_34/batchnorm/mul_1Mul%sequential_4/elu_27/Elu:activations:05sequential_4/batch_normalization_34/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
>sequential_4/batch_normalization_34/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_4_batch_normalization_34_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
3sequential_4/batch_normalization_34/batchnorm/mul_2MulFsequential_4/batch_normalization_34/batchnorm/ReadVariableOp_1:value:05sequential_4/batch_normalization_34/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
>sequential_4/batch_normalization_34/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_4_batch_normalization_34_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0?
1sequential_4/batch_normalization_34/batchnorm/subSubFsequential_4/batch_normalization_34/batchnorm/ReadVariableOp_2:value:07sequential_4/batch_normalization_34/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
3sequential_4/batch_normalization_34/batchnorm/add_1AddV27sequential_4/batch_normalization_34/batchnorm/mul_1:z:05sequential_4/batch_normalization_34/batchnorm/sub:z:0*
T0*(
_output_shapes
:???????????
 sequential_4/dropout_19/IdentityIdentity7sequential_4/batch_normalization_34/batchnorm/add_1:z:0*
T0*(
_output_shapes
:???????????
*sequential_4/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_9_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
sequential_4/dense_9/MatMulMatMul)sequential_4/dropout_19/Identity:output:02sequential_4/dense_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+sequential_4/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_9_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_4/dense_9/BiasAddBiasAdd%sequential_4/dense_9/MatMul:product:03sequential_4/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????x
sequential_4/elu_28/EluElu%sequential_4/dense_9/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
<sequential_4/batch_normalization_35/batchnorm/ReadVariableOpReadVariableOpEsequential_4_batch_normalization_35_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0x
3sequential_4/batch_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
1sequential_4/batch_normalization_35/batchnorm/addAddV2Dsequential_4/batch_normalization_35/batchnorm/ReadVariableOp:value:0<sequential_4/batch_normalization_35/batchnorm/add/y:output:0*
T0*
_output_shapes	
:??
3sequential_4/batch_normalization_35/batchnorm/RsqrtRsqrt5sequential_4/batch_normalization_35/batchnorm/add:z:0*
T0*
_output_shapes	
:??
@sequential_4/batch_normalization_35/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_4_batch_normalization_35_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1sequential_4/batch_normalization_35/batchnorm/mulMul7sequential_4/batch_normalization_35/batchnorm/Rsqrt:y:0Hsequential_4/batch_normalization_35/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
3sequential_4/batch_normalization_35/batchnorm/mul_1Mul%sequential_4/elu_28/Elu:activations:05sequential_4/batch_normalization_35/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
>sequential_4/batch_normalization_35/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_4_batch_normalization_35_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
3sequential_4/batch_normalization_35/batchnorm/mul_2MulFsequential_4/batch_normalization_35/batchnorm/ReadVariableOp_1:value:05sequential_4/batch_normalization_35/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
>sequential_4/batch_normalization_35/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_4_batch_normalization_35_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0?
1sequential_4/batch_normalization_35/batchnorm/subSubFsequential_4/batch_normalization_35/batchnorm/ReadVariableOp_2:value:07sequential_4/batch_normalization_35/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
3sequential_4/batch_normalization_35/batchnorm/add_1AddV27sequential_4/batch_normalization_35/batchnorm/mul_1:z:05sequential_4/batch_normalization_35/batchnorm/sub:z:0*
T0*(
_output_shapes
:???????????
 sequential_4/dropout_20/IdentityIdentity7sequential_4/batch_normalization_35/batchnorm/add_1:z:0*
T0*(
_output_shapes
:???????????
+sequential_4/dense_10/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential_4/dense_10/MatMulMatMul)sequential_4/dropout_20/Identity:output:03sequential_4/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,sequential_4/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_4/dense_10/BiasAddBiasAdd&sequential_4/dense_10/MatMul:product:04sequential_4/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!sequential_4/activation_4/SoftmaxSoftmax&sequential_4/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????z
IdentityIdentity+sequential_4/activation_4/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOpD^sequential_4/batch_normalization_28/FusedBatchNormV3/ReadVariableOpF^sequential_4/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_13^sequential_4/batch_normalization_28/ReadVariableOp5^sequential_4/batch_normalization_28/ReadVariableOp_1D^sequential_4/batch_normalization_29/FusedBatchNormV3/ReadVariableOpF^sequential_4/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_13^sequential_4/batch_normalization_29/ReadVariableOp5^sequential_4/batch_normalization_29/ReadVariableOp_1D^sequential_4/batch_normalization_30/FusedBatchNormV3/ReadVariableOpF^sequential_4/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_13^sequential_4/batch_normalization_30/ReadVariableOp5^sequential_4/batch_normalization_30/ReadVariableOp_1D^sequential_4/batch_normalization_31/FusedBatchNormV3/ReadVariableOpF^sequential_4/batch_normalization_31/FusedBatchNormV3/ReadVariableOp_13^sequential_4/batch_normalization_31/ReadVariableOp5^sequential_4/batch_normalization_31/ReadVariableOp_1D^sequential_4/batch_normalization_32/FusedBatchNormV3/ReadVariableOpF^sequential_4/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_13^sequential_4/batch_normalization_32/ReadVariableOp5^sequential_4/batch_normalization_32/ReadVariableOp_1D^sequential_4/batch_normalization_33/FusedBatchNormV3/ReadVariableOpF^sequential_4/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_13^sequential_4/batch_normalization_33/ReadVariableOp5^sequential_4/batch_normalization_33/ReadVariableOp_1=^sequential_4/batch_normalization_34/batchnorm/ReadVariableOp?^sequential_4/batch_normalization_34/batchnorm/ReadVariableOp_1?^sequential_4/batch_normalization_34/batchnorm/ReadVariableOp_2A^sequential_4/batch_normalization_34/batchnorm/mul/ReadVariableOp=^sequential_4/batch_normalization_35/batchnorm/ReadVariableOp?^sequential_4/batch_normalization_35/batchnorm/ReadVariableOp_1?^sequential_4/batch_normalization_35/batchnorm/ReadVariableOp_2A^sequential_4/batch_normalization_35/batchnorm/mul/ReadVariableOp.^sequential_4/conv2d_24/BiasAdd/ReadVariableOp-^sequential_4/conv2d_24/Conv2D/ReadVariableOp.^sequential_4/conv2d_25/BiasAdd/ReadVariableOp-^sequential_4/conv2d_25/Conv2D/ReadVariableOp.^sequential_4/conv2d_26/BiasAdd/ReadVariableOp-^sequential_4/conv2d_26/Conv2D/ReadVariableOp.^sequential_4/conv2d_27/BiasAdd/ReadVariableOp-^sequential_4/conv2d_27/Conv2D/ReadVariableOp.^sequential_4/conv2d_28/BiasAdd/ReadVariableOp-^sequential_4/conv2d_28/Conv2D/ReadVariableOp.^sequential_4/conv2d_29/BiasAdd/ReadVariableOp-^sequential_4/conv2d_29/Conv2D/ReadVariableOp-^sequential_4/dense_10/BiasAdd/ReadVariableOp,^sequential_4/dense_10/MatMul/ReadVariableOp,^sequential_4/dense_8/BiasAdd/ReadVariableOp+^sequential_4/dense_8/MatMul/ReadVariableOp,^sequential_4/dense_9/BiasAdd/ReadVariableOp+^sequential_4/dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????pp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Csequential_4/batch_normalization_28/FusedBatchNormV3/ReadVariableOpCsequential_4/batch_normalization_28/FusedBatchNormV3/ReadVariableOp2?
Esequential_4/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1Esequential_4/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_12h
2sequential_4/batch_normalization_28/ReadVariableOp2sequential_4/batch_normalization_28/ReadVariableOp2l
4sequential_4/batch_normalization_28/ReadVariableOp_14sequential_4/batch_normalization_28/ReadVariableOp_12?
Csequential_4/batch_normalization_29/FusedBatchNormV3/ReadVariableOpCsequential_4/batch_normalization_29/FusedBatchNormV3/ReadVariableOp2?
Esequential_4/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1Esequential_4/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_12h
2sequential_4/batch_normalization_29/ReadVariableOp2sequential_4/batch_normalization_29/ReadVariableOp2l
4sequential_4/batch_normalization_29/ReadVariableOp_14sequential_4/batch_normalization_29/ReadVariableOp_12?
Csequential_4/batch_normalization_30/FusedBatchNormV3/ReadVariableOpCsequential_4/batch_normalization_30/FusedBatchNormV3/ReadVariableOp2?
Esequential_4/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1Esequential_4/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_12h
2sequential_4/batch_normalization_30/ReadVariableOp2sequential_4/batch_normalization_30/ReadVariableOp2l
4sequential_4/batch_normalization_30/ReadVariableOp_14sequential_4/batch_normalization_30/ReadVariableOp_12?
Csequential_4/batch_normalization_31/FusedBatchNormV3/ReadVariableOpCsequential_4/batch_normalization_31/FusedBatchNormV3/ReadVariableOp2?
Esequential_4/batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1Esequential_4/batch_normalization_31/FusedBatchNormV3/ReadVariableOp_12h
2sequential_4/batch_normalization_31/ReadVariableOp2sequential_4/batch_normalization_31/ReadVariableOp2l
4sequential_4/batch_normalization_31/ReadVariableOp_14sequential_4/batch_normalization_31/ReadVariableOp_12?
Csequential_4/batch_normalization_32/FusedBatchNormV3/ReadVariableOpCsequential_4/batch_normalization_32/FusedBatchNormV3/ReadVariableOp2?
Esequential_4/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1Esequential_4/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_12h
2sequential_4/batch_normalization_32/ReadVariableOp2sequential_4/batch_normalization_32/ReadVariableOp2l
4sequential_4/batch_normalization_32/ReadVariableOp_14sequential_4/batch_normalization_32/ReadVariableOp_12?
Csequential_4/batch_normalization_33/FusedBatchNormV3/ReadVariableOpCsequential_4/batch_normalization_33/FusedBatchNormV3/ReadVariableOp2?
Esequential_4/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1Esequential_4/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_12h
2sequential_4/batch_normalization_33/ReadVariableOp2sequential_4/batch_normalization_33/ReadVariableOp2l
4sequential_4/batch_normalization_33/ReadVariableOp_14sequential_4/batch_normalization_33/ReadVariableOp_12|
<sequential_4/batch_normalization_34/batchnorm/ReadVariableOp<sequential_4/batch_normalization_34/batchnorm/ReadVariableOp2?
>sequential_4/batch_normalization_34/batchnorm/ReadVariableOp_1>sequential_4/batch_normalization_34/batchnorm/ReadVariableOp_12?
>sequential_4/batch_normalization_34/batchnorm/ReadVariableOp_2>sequential_4/batch_normalization_34/batchnorm/ReadVariableOp_22?
@sequential_4/batch_normalization_34/batchnorm/mul/ReadVariableOp@sequential_4/batch_normalization_34/batchnorm/mul/ReadVariableOp2|
<sequential_4/batch_normalization_35/batchnorm/ReadVariableOp<sequential_4/batch_normalization_35/batchnorm/ReadVariableOp2?
>sequential_4/batch_normalization_35/batchnorm/ReadVariableOp_1>sequential_4/batch_normalization_35/batchnorm/ReadVariableOp_12?
>sequential_4/batch_normalization_35/batchnorm/ReadVariableOp_2>sequential_4/batch_normalization_35/batchnorm/ReadVariableOp_22?
@sequential_4/batch_normalization_35/batchnorm/mul/ReadVariableOp@sequential_4/batch_normalization_35/batchnorm/mul/ReadVariableOp2^
-sequential_4/conv2d_24/BiasAdd/ReadVariableOp-sequential_4/conv2d_24/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_24/Conv2D/ReadVariableOp,sequential_4/conv2d_24/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_25/BiasAdd/ReadVariableOp-sequential_4/conv2d_25/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_25/Conv2D/ReadVariableOp,sequential_4/conv2d_25/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_26/BiasAdd/ReadVariableOp-sequential_4/conv2d_26/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_26/Conv2D/ReadVariableOp,sequential_4/conv2d_26/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_27/BiasAdd/ReadVariableOp-sequential_4/conv2d_27/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_27/Conv2D/ReadVariableOp,sequential_4/conv2d_27/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_28/BiasAdd/ReadVariableOp-sequential_4/conv2d_28/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_28/Conv2D/ReadVariableOp,sequential_4/conv2d_28/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_29/BiasAdd/ReadVariableOp-sequential_4/conv2d_29/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_29/Conv2D/ReadVariableOp,sequential_4/conv2d_29/Conv2D/ReadVariableOp2\
,sequential_4/dense_10/BiasAdd/ReadVariableOp,sequential_4/dense_10/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_10/MatMul/ReadVariableOp+sequential_4/dense_10/MatMul/ReadVariableOp2Z
+sequential_4/dense_8/BiasAdd/ReadVariableOp+sequential_4/dense_8/BiasAdd/ReadVariableOp2X
*sequential_4/dense_8/MatMul/ReadVariableOp*sequential_4/dense_8/MatMul/ReadVariableOp2Z
+sequential_4/dense_9/BiasAdd/ReadVariableOp+sequential_4/dense_9/BiasAdd/ReadVariableOp2X
*sequential_4/dense_9/MatMul/ReadVariableOp*sequential_4/dense_9/MatMul/ReadVariableOp:` \
/
_output_shapes
:?????????pp
)
_user_specified_nameconv2d_24_input
?
^
B__inference_elu_22_layer_call_and_return_conditional_losses_377289

inputs
identityL
EluEluinputs*
T0*/
_output_shapes
:?????????pp a
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:?????????pp "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????pp :W S
/
_output_shapes
:?????????pp 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_376978

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_24_layer_call_fn_379443

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_377246w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????pp `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????pp: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????pp
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_380211

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	??
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_16_layer_call_and_return_conditional_losses_377306

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????88 c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????88 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????88 :W S
/
_output_shapes
:?????????88 
 
_user_specified_nameinputs
?	
?
D__inference_dense_10_layer_call_and_return_conditional_losses_380393

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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
?
?
7__inference_batch_normalization_35_layer_call_fn_380280

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_377171p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_4_layer_call_fn_378384
conv2d_24_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@?

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?

unknown_34:	?

unknown_35:???

unknown_36:	?

unknown_37:	?

unknown_38:	?

unknown_39:	?

unknown_40:	?

unknown_41:
??

unknown_42:	?

unknown_43:	?

unknown_44:	?

unknown_45:	?

unknown_46:	?

unknown_47:	?

unknown_48:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_24_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*D
_read_only_resource_inputs&
$"	
 !"%&)*+,/012*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_378176o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????pp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????pp
)
_user_specified_nameconv2d_24_input
?
C
'__inference_elu_22_layer_call_fn_379549

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_22_layer_call_and_return_conditional_losses_377289h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????pp "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????pp :W S
/
_output_shapes
:?????????pp 
 
_user_specified_nameinputs
??
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_377562

inputs*
conv2d_24_377247: 
conv2d_24_377249: +
batch_normalization_28_377259: +
batch_normalization_28_377261: +
batch_normalization_28_377263: +
batch_normalization_28_377265: *
conv2d_25_377279:  
conv2d_25_377281: +
batch_normalization_29_377291: +
batch_normalization_29_377293: +
batch_normalization_29_377295: +
batch_normalization_29_377297: *
conv2d_26_377319: @
conv2d_26_377321:@+
batch_normalization_30_377331:@+
batch_normalization_30_377333:@+
batch_normalization_30_377335:@+
batch_normalization_30_377337:@*
conv2d_27_377351:@@
conv2d_27_377353:@+
batch_normalization_31_377363:@+
batch_normalization_31_377365:@+
batch_normalization_31_377367:@+
batch_normalization_31_377369:@+
conv2d_28_377391:@?
conv2d_28_377393:	?,
batch_normalization_32_377403:	?,
batch_normalization_32_377405:	?,
batch_normalization_32_377407:	?,
batch_normalization_32_377409:	?,
conv2d_29_377423:??
conv2d_29_377425:	?,
batch_normalization_33_377435:	?,
batch_normalization_33_377437:	?,
batch_normalization_33_377439:	?,
batch_normalization_33_377441:	?#
dense_8_377471:???
dense_8_377473:	?,
batch_normalization_34_377483:	?,
batch_normalization_34_377485:	?,
batch_normalization_34_377487:	?,
batch_normalization_34_377489:	?"
dense_9_377510:
??
dense_9_377512:	?,
batch_normalization_35_377522:	?,
batch_normalization_35_377524:	?,
batch_normalization_35_377526:	?,
batch_normalization_35_377528:	?"
dense_10_377549:	?
dense_10_377551:
identity??.batch_normalization_28/StatefulPartitionedCall?.batch_normalization_29/StatefulPartitionedCall?.batch_normalization_30/StatefulPartitionedCall?.batch_normalization_31/StatefulPartitionedCall?.batch_normalization_32/StatefulPartitionedCall?.batch_normalization_33/StatefulPartitionedCall?.batch_normalization_34/StatefulPartitionedCall?.batch_normalization_35/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall?!conv2d_25/StatefulPartitionedCall?!conv2d_26/StatefulPartitionedCall?!conv2d_27/StatefulPartitionedCall?!conv2d_28/StatefulPartitionedCall?!conv2d_29/StatefulPartitionedCall? dense_10/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_24_377247conv2d_24_377249*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_377246?
elu_21/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_21_layer_call_and_return_conditional_losses_377257?
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCallelu_21/PartitionedCall:output:0batch_normalization_28_377259batch_normalization_28_377261batch_normalization_28_377263batch_normalization_28_377265*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_376667?
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0conv2d_25_377279conv2d_25_377281*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_377278?
elu_22/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_22_layer_call_and_return_conditional_losses_377289?
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCallelu_22/PartitionedCall:output:0batch_normalization_29_377291batch_normalization_29_377293batch_normalization_29_377295batch_normalization_29_377297*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_376731?
 max_pooling2d_12/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_376782?
dropout_16/PartitionedCallPartitionedCall)max_pooling2d_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_377306?
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall#dropout_16/PartitionedCall:output:0conv2d_26_377319conv2d_26_377321*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_377318?
elu_23/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_23_layer_call_and_return_conditional_losses_377329?
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCallelu_23/PartitionedCall:output:0batch_normalization_30_377331batch_normalization_30_377333batch_normalization_30_377335batch_normalization_30_377337*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_376807?
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0conv2d_27_377351conv2d_27_377353*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_377350?
elu_24/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_24_layer_call_and_return_conditional_losses_377361?
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCallelu_24/PartitionedCall:output:0batch_normalization_31_377363batch_normalization_31_377365batch_normalization_31_377367batch_normalization_31_377369*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_376871?
 max_pooling2d_13/PartitionedCallPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_376922?
dropout_17/PartitionedCallPartitionedCall)max_pooling2d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_377378?
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0conv2d_28_377391conv2d_28_377393*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_377390?
elu_25/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_25_layer_call_and_return_conditional_losses_377401?
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCallelu_25/PartitionedCall:output:0batch_normalization_32_377403batch_normalization_32_377405batch_normalization_32_377407batch_normalization_32_377409*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_376947?
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0conv2d_29_377423conv2d_29_377425*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_377422?
elu_26/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_26_layer_call_and_return_conditional_losses_377433?
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCallelu_26/PartitionedCall:output:0batch_normalization_33_377435batch_normalization_33_377437batch_normalization_33_377439batch_normalization_33_377441*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_377011?
 max_pooling2d_14/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_377062?
dropout_18/PartitionedCallPartitionedCall)max_pooling2d_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_18_layer_call_and_return_conditional_losses_377450?
flatten_4/PartitionedCallPartitionedCall#dropout_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_377458?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_377471dense_8_377473*
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
GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_377470?
elu_27/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_27_layer_call_and_return_conditional_losses_377481?
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCallelu_27/PartitionedCall:output:0batch_normalization_34_377483batch_normalization_34_377485batch_normalization_34_377487batch_normalization_34_377489*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_377089?
dropout_19/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_19_layer_call_and_return_conditional_losses_377497?
dense_9/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_9_377510dense_9_377512*
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
GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_377509?
elu_28/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_28_layer_call_and_return_conditional_losses_377520?
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCallelu_28/PartitionedCall:output:0batch_normalization_35_377522batch_normalization_35_377524batch_normalization_35_377526batch_normalization_35_377528*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_377171?
dropout_20/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_377536?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall#dropout_20/PartitionedCall:output:0dense_10_377549dense_10_377551*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_377548?
activation_4/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_377559t
IdentityIdentity%activation_4/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????pp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:W S
/
_output_shapes
:?????????pp
 
_user_specified_nameinputs
?
^
B__inference_elu_25_layer_call_and_return_conditional_losses_379901

inputs
identityM
EluEluinputs*
T0*0
_output_shapes
:??????????b
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_376762

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
d
F__inference_dropout_20_layer_call_and_return_conditional_losses_380362

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_378523
conv2d_24_input*
conv2d_24_378387: 
conv2d_24_378389: +
batch_normalization_28_378393: +
batch_normalization_28_378395: +
batch_normalization_28_378397: +
batch_normalization_28_378399: *
conv2d_25_378402:  
conv2d_25_378404: +
batch_normalization_29_378408: +
batch_normalization_29_378410: +
batch_normalization_29_378412: +
batch_normalization_29_378414: *
conv2d_26_378419: @
conv2d_26_378421:@+
batch_normalization_30_378425:@+
batch_normalization_30_378427:@+
batch_normalization_30_378429:@+
batch_normalization_30_378431:@*
conv2d_27_378434:@@
conv2d_27_378436:@+
batch_normalization_31_378440:@+
batch_normalization_31_378442:@+
batch_normalization_31_378444:@+
batch_normalization_31_378446:@+
conv2d_28_378451:@?
conv2d_28_378453:	?,
batch_normalization_32_378457:	?,
batch_normalization_32_378459:	?,
batch_normalization_32_378461:	?,
batch_normalization_32_378463:	?,
conv2d_29_378466:??
conv2d_29_378468:	?,
batch_normalization_33_378472:	?,
batch_normalization_33_378474:	?,
batch_normalization_33_378476:	?,
batch_normalization_33_378478:	?#
dense_8_378484:???
dense_8_378486:	?,
batch_normalization_34_378490:	?,
batch_normalization_34_378492:	?,
batch_normalization_34_378494:	?,
batch_normalization_34_378496:	?"
dense_9_378500:
??
dense_9_378502:	?,
batch_normalization_35_378506:	?,
batch_normalization_35_378508:	?,
batch_normalization_35_378510:	?,
batch_normalization_35_378512:	?"
dense_10_378516:	?
dense_10_378518:
identity??.batch_normalization_28/StatefulPartitionedCall?.batch_normalization_29/StatefulPartitionedCall?.batch_normalization_30/StatefulPartitionedCall?.batch_normalization_31/StatefulPartitionedCall?.batch_normalization_32/StatefulPartitionedCall?.batch_normalization_33/StatefulPartitionedCall?.batch_normalization_34/StatefulPartitionedCall?.batch_normalization_35/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall?!conv2d_25/StatefulPartitionedCall?!conv2d_26/StatefulPartitionedCall?!conv2d_27/StatefulPartitionedCall?!conv2d_28/StatefulPartitionedCall?!conv2d_29/StatefulPartitionedCall? dense_10/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCallconv2d_24_inputconv2d_24_378387conv2d_24_378389*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_377246?
elu_21/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_21_layer_call_and_return_conditional_losses_377257?
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCallelu_21/PartitionedCall:output:0batch_normalization_28_378393batch_normalization_28_378395batch_normalization_28_378397batch_normalization_28_378399*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_376667?
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0conv2d_25_378402conv2d_25_378404*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_377278?
elu_22/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_22_layer_call_and_return_conditional_losses_377289?
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCallelu_22/PartitionedCall:output:0batch_normalization_29_378408batch_normalization_29_378410batch_normalization_29_378412batch_normalization_29_378414*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_376731?
 max_pooling2d_12/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_376782?
dropout_16/PartitionedCallPartitionedCall)max_pooling2d_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_377306?
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall#dropout_16/PartitionedCall:output:0conv2d_26_378419conv2d_26_378421*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_377318?
elu_23/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_23_layer_call_and_return_conditional_losses_377329?
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCallelu_23/PartitionedCall:output:0batch_normalization_30_378425batch_normalization_30_378427batch_normalization_30_378429batch_normalization_30_378431*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_376807?
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0conv2d_27_378434conv2d_27_378436*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_377350?
elu_24/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_24_layer_call_and_return_conditional_losses_377361?
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCallelu_24/PartitionedCall:output:0batch_normalization_31_378440batch_normalization_31_378442batch_normalization_31_378444batch_normalization_31_378446*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_376871?
 max_pooling2d_13/PartitionedCallPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_376922?
dropout_17/PartitionedCallPartitionedCall)max_pooling2d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_377378?
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0conv2d_28_378451conv2d_28_378453*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_377390?
elu_25/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_25_layer_call_and_return_conditional_losses_377401?
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCallelu_25/PartitionedCall:output:0batch_normalization_32_378457batch_normalization_32_378459batch_normalization_32_378461batch_normalization_32_378463*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_376947?
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0conv2d_29_378466conv2d_29_378468*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_377422?
elu_26/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_26_layer_call_and_return_conditional_losses_377433?
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCallelu_26/PartitionedCall:output:0batch_normalization_33_378472batch_normalization_33_378474batch_normalization_33_378476batch_normalization_33_378478*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_377011?
 max_pooling2d_14/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_377062?
dropout_18/PartitionedCallPartitionedCall)max_pooling2d_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_18_layer_call_and_return_conditional_losses_377450?
flatten_4/PartitionedCallPartitionedCall#dropout_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_377458?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_378484dense_8_378486*
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
GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_377470?
elu_27/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_27_layer_call_and_return_conditional_losses_377481?
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCallelu_27/PartitionedCall:output:0batch_normalization_34_378490batch_normalization_34_378492batch_normalization_34_378494batch_normalization_34_378496*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_377089?
dropout_19/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_19_layer_call_and_return_conditional_losses_377497?
dense_9/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_9_378500dense_9_378502*
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
GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_377509?
elu_28/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_28_layer_call_and_return_conditional_losses_377520?
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCallelu_28/PartitionedCall:output:0batch_normalization_35_378506batch_normalization_35_378508batch_normalization_35_378510batch_normalization_35_378512*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_377171?
dropout_20/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_377536?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall#dropout_20/PartitionedCall:output:0dense_10_378516dense_10_378518*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_377548?
activation_4/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_377559t
IdentityIdentity%activation_4/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????pp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:` \
/
_output_shapes
:?????????pp
)
_user_specified_nameconv2d_24_input
?
?
-__inference_sequential_4_layer_call_fn_377665
conv2d_24_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@?

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?

unknown_34:	?

unknown_35:???

unknown_36:	?

unknown_37:	?

unknown_38:	?

unknown_39:	?

unknown_40:	?

unknown_41:
??

unknown_42:	?

unknown_43:	?

unknown_44:	?

unknown_45:	?

unknown_46:	?

unknown_47:	?

unknown_48:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_24_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./012*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_377562o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????pp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????pp
)
_user_specified_nameconv2d_24_input
?
?
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_376838

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
^
B__inference_elu_28_layer_call_and_return_conditional_losses_377520

inputs
identityE
EluEluinputs*
T0*(
_output_shapes
:??????????Z
IdentityIdentityElu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_16_layer_call_fn_379636

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_377895w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????88 `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????88 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????88 
 
_user_specified_nameinputs
?	
?
D__inference_dense_10_layer_call_and_return_conditional_losses_377548

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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
?
?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_377171

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_20_layer_call_and_return_conditional_losses_380374

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_elu_23_layer_call_and_return_conditional_losses_377329

inputs
identityL
EluEluinputs*
T0*/
_output_shapes
:?????????88@a
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:?????????88@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????88@:W S
/
_output_shapes
:?????????88@
 
_user_specified_nameinputs
??
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_378662
conv2d_24_input*
conv2d_24_378526: 
conv2d_24_378528: +
batch_normalization_28_378532: +
batch_normalization_28_378534: +
batch_normalization_28_378536: +
batch_normalization_28_378538: *
conv2d_25_378541:  
conv2d_25_378543: +
batch_normalization_29_378547: +
batch_normalization_29_378549: +
batch_normalization_29_378551: +
batch_normalization_29_378553: *
conv2d_26_378558: @
conv2d_26_378560:@+
batch_normalization_30_378564:@+
batch_normalization_30_378566:@+
batch_normalization_30_378568:@+
batch_normalization_30_378570:@*
conv2d_27_378573:@@
conv2d_27_378575:@+
batch_normalization_31_378579:@+
batch_normalization_31_378581:@+
batch_normalization_31_378583:@+
batch_normalization_31_378585:@+
conv2d_28_378590:@?
conv2d_28_378592:	?,
batch_normalization_32_378596:	?,
batch_normalization_32_378598:	?,
batch_normalization_32_378600:	?,
batch_normalization_32_378602:	?,
conv2d_29_378605:??
conv2d_29_378607:	?,
batch_normalization_33_378611:	?,
batch_normalization_33_378613:	?,
batch_normalization_33_378615:	?,
batch_normalization_33_378617:	?#
dense_8_378623:???
dense_8_378625:	?,
batch_normalization_34_378629:	?,
batch_normalization_34_378631:	?,
batch_normalization_34_378633:	?,
batch_normalization_34_378635:	?"
dense_9_378639:
??
dense_9_378641:	?,
batch_normalization_35_378645:	?,
batch_normalization_35_378647:	?,
batch_normalization_35_378649:	?,
batch_normalization_35_378651:	?"
dense_10_378655:	?
dense_10_378657:
identity??.batch_normalization_28/StatefulPartitionedCall?.batch_normalization_29/StatefulPartitionedCall?.batch_normalization_30/StatefulPartitionedCall?.batch_normalization_31/StatefulPartitionedCall?.batch_normalization_32/StatefulPartitionedCall?.batch_normalization_33/StatefulPartitionedCall?.batch_normalization_34/StatefulPartitionedCall?.batch_normalization_35/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall?!conv2d_25/StatefulPartitionedCall?!conv2d_26/StatefulPartitionedCall?!conv2d_27/StatefulPartitionedCall?!conv2d_28/StatefulPartitionedCall?!conv2d_29/StatefulPartitionedCall? dense_10/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?"dropout_16/StatefulPartitionedCall?"dropout_17/StatefulPartitionedCall?"dropout_18/StatefulPartitionedCall?"dropout_19/StatefulPartitionedCall?"dropout_20/StatefulPartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCallconv2d_24_inputconv2d_24_378526conv2d_24_378528*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_377246?
elu_21/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_21_layer_call_and_return_conditional_losses_377257?
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCallelu_21/PartitionedCall:output:0batch_normalization_28_378532batch_normalization_28_378534batch_normalization_28_378536batch_normalization_28_378538*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_376698?
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0conv2d_25_378541conv2d_25_378543*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_377278?
elu_22/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_22_layer_call_and_return_conditional_losses_377289?
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCallelu_22/PartitionedCall:output:0batch_normalization_29_378547batch_normalization_29_378549batch_normalization_29_378551batch_normalization_29_378553*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_376762?
 max_pooling2d_12/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_376782?
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_377895?
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall+dropout_16/StatefulPartitionedCall:output:0conv2d_26_378558conv2d_26_378560*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_377318?
elu_23/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_23_layer_call_and_return_conditional_losses_377329?
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCallelu_23/PartitionedCall:output:0batch_normalization_30_378564batch_normalization_30_378566batch_normalization_30_378568batch_normalization_30_378570*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_376838?
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0conv2d_27_378573conv2d_27_378575*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_377350?
elu_24/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_24_layer_call_and_return_conditional_losses_377361?
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCallelu_24/PartitionedCall:output:0batch_normalization_31_378579batch_normalization_31_378581batch_normalization_31_378583batch_normalization_31_378585*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_376902?
 max_pooling2d_13/PartitionedCallPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_376922?
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0#^dropout_16/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_377840?
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0conv2d_28_378590conv2d_28_378592*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_377390?
elu_25/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_25_layer_call_and_return_conditional_losses_377401?
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCallelu_25/PartitionedCall:output:0batch_normalization_32_378596batch_normalization_32_378598batch_normalization_32_378600batch_normalization_32_378602*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_376978?
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0conv2d_29_378605conv2d_29_378607*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_377422?
elu_26/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_26_layer_call_and_return_conditional_losses_377433?
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCallelu_26/PartitionedCall:output:0batch_normalization_33_378611batch_normalization_33_378613batch_normalization_33_378615batch_normalization_33_378617*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_377042?
 max_pooling2d_14/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_377062?
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0#^dropout_17/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_18_layer_call_and_return_conditional_losses_377785?
flatten_4/PartitionedCallPartitionedCall+dropout_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_377458?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_378623dense_8_378625*
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
GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_377470?
elu_27/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_27_layer_call_and_return_conditional_losses_377481?
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCallelu_27/PartitionedCall:output:0batch_normalization_34_378629batch_normalization_34_378631batch_normalization_34_378633batch_normalization_34_378635*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_377136?
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_19_layer_call_and_return_conditional_losses_377740?
dense_9/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_9_378639dense_9_378641*
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
GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_377509?
elu_28/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_28_layer_call_and_return_conditional_losses_377520?
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCallelu_28/PartitionedCall:output:0batch_normalization_35_378645batch_normalization_35_378647batch_normalization_35_378649batch_normalization_35_378651*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_377218?
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0#^dropout_19/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_377701?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall+dropout_20/StatefulPartitionedCall:output:0dense_10_378655dense_10_378657*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_377548?
activation_4/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_377559t
IdentityIdentity%activation_4/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????pp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall:` \
/
_output_shapes
:?????????pp
)
_user_specified_nameconv2d_24_input
?
^
B__inference_elu_26_layer_call_and_return_conditional_losses_377433

inputs
identityM
EluEluinputs*
T0*0
_output_shapes
:??????????b
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_9_layer_call_fn_380247

inputs
unknown:
??
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
GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_377509p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_27_layer_call_and_return_conditional_losses_377350

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????88@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????88@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????88@
 
_user_specified_nameinputs
??
?U
"__inference__traced_restore_381198
file_prefix;
!assignvariableop_conv2d_24_kernel: /
!assignvariableop_1_conv2d_24_bias: =
/assignvariableop_2_batch_normalization_28_gamma: <
.assignvariableop_3_batch_normalization_28_beta: C
5assignvariableop_4_batch_normalization_28_moving_mean: G
9assignvariableop_5_batch_normalization_28_moving_variance: =
#assignvariableop_6_conv2d_25_kernel:  /
!assignvariableop_7_conv2d_25_bias: =
/assignvariableop_8_batch_normalization_29_gamma: <
.assignvariableop_9_batch_normalization_29_beta: D
6assignvariableop_10_batch_normalization_29_moving_mean: H
:assignvariableop_11_batch_normalization_29_moving_variance: >
$assignvariableop_12_conv2d_26_kernel: @0
"assignvariableop_13_conv2d_26_bias:@>
0assignvariableop_14_batch_normalization_30_gamma:@=
/assignvariableop_15_batch_normalization_30_beta:@D
6assignvariableop_16_batch_normalization_30_moving_mean:@H
:assignvariableop_17_batch_normalization_30_moving_variance:@>
$assignvariableop_18_conv2d_27_kernel:@@0
"assignvariableop_19_conv2d_27_bias:@>
0assignvariableop_20_batch_normalization_31_gamma:@=
/assignvariableop_21_batch_normalization_31_beta:@D
6assignvariableop_22_batch_normalization_31_moving_mean:@H
:assignvariableop_23_batch_normalization_31_moving_variance:@?
$assignvariableop_24_conv2d_28_kernel:@?1
"assignvariableop_25_conv2d_28_bias:	??
0assignvariableop_26_batch_normalization_32_gamma:	?>
/assignvariableop_27_batch_normalization_32_beta:	?E
6assignvariableop_28_batch_normalization_32_moving_mean:	?I
:assignvariableop_29_batch_normalization_32_moving_variance:	?@
$assignvariableop_30_conv2d_29_kernel:??1
"assignvariableop_31_conv2d_29_bias:	??
0assignvariableop_32_batch_normalization_33_gamma:	?>
/assignvariableop_33_batch_normalization_33_beta:	?E
6assignvariableop_34_batch_normalization_33_moving_mean:	?I
:assignvariableop_35_batch_normalization_33_moving_variance:	?7
"assignvariableop_36_dense_8_kernel:???/
 assignvariableop_37_dense_8_bias:	??
0assignvariableop_38_batch_normalization_34_gamma:	?>
/assignvariableop_39_batch_normalization_34_beta:	?E
6assignvariableop_40_batch_normalization_34_moving_mean:	?I
:assignvariableop_41_batch_normalization_34_moving_variance:	?6
"assignvariableop_42_dense_9_kernel:
??/
 assignvariableop_43_dense_9_bias:	??
0assignvariableop_44_batch_normalization_35_gamma:	?>
/assignvariableop_45_batch_normalization_35_beta:	?E
6assignvariableop_46_batch_normalization_35_moving_mean:	?I
:assignvariableop_47_batch_normalization_35_moving_variance:	?6
#assignvariableop_48_dense_10_kernel:	?/
!assignvariableop_49_dense_10_bias:'
assignvariableop_50_adam_iter:	 )
assignvariableop_51_adam_beta_1: )
assignvariableop_52_adam_beta_2: (
assignvariableop_53_adam_decay: 0
&assignvariableop_54_adam_learning_rate: #
assignvariableop_55_total: #
assignvariableop_56_count: %
assignvariableop_57_total_1: %
assignvariableop_58_count_1: E
+assignvariableop_59_adam_conv2d_24_kernel_m: 7
)assignvariableop_60_adam_conv2d_24_bias_m: E
7assignvariableop_61_adam_batch_normalization_28_gamma_m: D
6assignvariableop_62_adam_batch_normalization_28_beta_m: E
+assignvariableop_63_adam_conv2d_25_kernel_m:  7
)assignvariableop_64_adam_conv2d_25_bias_m: E
7assignvariableop_65_adam_batch_normalization_29_gamma_m: D
6assignvariableop_66_adam_batch_normalization_29_beta_m: E
+assignvariableop_67_adam_conv2d_26_kernel_m: @7
)assignvariableop_68_adam_conv2d_26_bias_m:@E
7assignvariableop_69_adam_batch_normalization_30_gamma_m:@D
6assignvariableop_70_adam_batch_normalization_30_beta_m:@E
+assignvariableop_71_adam_conv2d_27_kernel_m:@@7
)assignvariableop_72_adam_conv2d_27_bias_m:@E
7assignvariableop_73_adam_batch_normalization_31_gamma_m:@D
6assignvariableop_74_adam_batch_normalization_31_beta_m:@F
+assignvariableop_75_adam_conv2d_28_kernel_m:@?8
)assignvariableop_76_adam_conv2d_28_bias_m:	?F
7assignvariableop_77_adam_batch_normalization_32_gamma_m:	?E
6assignvariableop_78_adam_batch_normalization_32_beta_m:	?G
+assignvariableop_79_adam_conv2d_29_kernel_m:??8
)assignvariableop_80_adam_conv2d_29_bias_m:	?F
7assignvariableop_81_adam_batch_normalization_33_gamma_m:	?E
6assignvariableop_82_adam_batch_normalization_33_beta_m:	?>
)assignvariableop_83_adam_dense_8_kernel_m:???6
'assignvariableop_84_adam_dense_8_bias_m:	?F
7assignvariableop_85_adam_batch_normalization_34_gamma_m:	?E
6assignvariableop_86_adam_batch_normalization_34_beta_m:	?=
)assignvariableop_87_adam_dense_9_kernel_m:
??6
'assignvariableop_88_adam_dense_9_bias_m:	?F
7assignvariableop_89_adam_batch_normalization_35_gamma_m:	?E
6assignvariableop_90_adam_batch_normalization_35_beta_m:	?=
*assignvariableop_91_adam_dense_10_kernel_m:	?6
(assignvariableop_92_adam_dense_10_bias_m:E
+assignvariableop_93_adam_conv2d_24_kernel_v: 7
)assignvariableop_94_adam_conv2d_24_bias_v: E
7assignvariableop_95_adam_batch_normalization_28_gamma_v: D
6assignvariableop_96_adam_batch_normalization_28_beta_v: E
+assignvariableop_97_adam_conv2d_25_kernel_v:  7
)assignvariableop_98_adam_conv2d_25_bias_v: E
7assignvariableop_99_adam_batch_normalization_29_gamma_v: E
7assignvariableop_100_adam_batch_normalization_29_beta_v: F
,assignvariableop_101_adam_conv2d_26_kernel_v: @8
*assignvariableop_102_adam_conv2d_26_bias_v:@F
8assignvariableop_103_adam_batch_normalization_30_gamma_v:@E
7assignvariableop_104_adam_batch_normalization_30_beta_v:@F
,assignvariableop_105_adam_conv2d_27_kernel_v:@@8
*assignvariableop_106_adam_conv2d_27_bias_v:@F
8assignvariableop_107_adam_batch_normalization_31_gamma_v:@E
7assignvariableop_108_adam_batch_normalization_31_beta_v:@G
,assignvariableop_109_adam_conv2d_28_kernel_v:@?9
*assignvariableop_110_adam_conv2d_28_bias_v:	?G
8assignvariableop_111_adam_batch_normalization_32_gamma_v:	?F
7assignvariableop_112_adam_batch_normalization_32_beta_v:	?H
,assignvariableop_113_adam_conv2d_29_kernel_v:??9
*assignvariableop_114_adam_conv2d_29_bias_v:	?G
8assignvariableop_115_adam_batch_normalization_33_gamma_v:	?F
7assignvariableop_116_adam_batch_normalization_33_beta_v:	??
*assignvariableop_117_adam_dense_8_kernel_v:???7
(assignvariableop_118_adam_dense_8_bias_v:	?G
8assignvariableop_119_adam_batch_normalization_34_gamma_v:	?F
7assignvariableop_120_adam_batch_normalization_34_beta_v:	?>
*assignvariableop_121_adam_dense_9_kernel_v:
??7
(assignvariableop_122_adam_dense_9_bias_v:	?G
8assignvariableop_123_adam_batch_normalization_35_gamma_v:	?F
7assignvariableop_124_adam_batch_normalization_35_beta_v:	?>
+assignvariableop_125_adam_dense_10_kernel_v:	?7
)assignvariableop_126_adam_dense_10_bias_v:
identity_128??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_105?AssignVariableOp_106?AssignVariableOp_107?AssignVariableOp_108?AssignVariableOp_109?AssignVariableOp_11?AssignVariableOp_110?AssignVariableOp_111?AssignVariableOp_112?AssignVariableOp_113?AssignVariableOp_114?AssignVariableOp_115?AssignVariableOp_116?AssignVariableOp_117?AssignVariableOp_118?AssignVariableOp_119?AssignVariableOp_12?AssignVariableOp_120?AssignVariableOp_121?AssignVariableOp_122?AssignVariableOp_123?AssignVariableOp_124?AssignVariableOp_125?AssignVariableOp_126?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?G
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?F
value?FB?F?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes?
?2?	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_24_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_24_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_28_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_28_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_28_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_28_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_25_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_25_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_29_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_29_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_29_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_29_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_26_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_26_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_30_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_30_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_30_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_30_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_27_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_27_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_31_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_31_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_31_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_31_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp$assignvariableop_24_conv2d_28_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp"assignvariableop_25_conv2d_28_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp0assignvariableop_26_batch_normalization_32_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_32_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_batch_normalization_32_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp:assignvariableop_29_batch_normalization_32_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp$assignvariableop_30_conv2d_29_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp"assignvariableop_31_conv2d_29_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp0assignvariableop_32_batch_normalization_33_gammaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp/assignvariableop_33_batch_normalization_33_betaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp6assignvariableop_34_batch_normalization_33_moving_meanIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp:assignvariableop_35_batch_normalization_33_moving_varianceIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp"assignvariableop_36_dense_8_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp assignvariableop_37_dense_8_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp0assignvariableop_38_batch_normalization_34_gammaIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp/assignvariableop_39_batch_normalization_34_betaIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp6assignvariableop_40_batch_normalization_34_moving_meanIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp:assignvariableop_41_batch_normalization_34_moving_varianceIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp"assignvariableop_42_dense_9_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp assignvariableop_43_dense_9_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp0assignvariableop_44_batch_normalization_35_gammaIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp/assignvariableop_45_batch_normalization_35_betaIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp6assignvariableop_46_batch_normalization_35_moving_meanIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp:assignvariableop_47_batch_normalization_35_moving_varianceIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp#assignvariableop_48_dense_10_kernelIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp!assignvariableop_49_dense_10_biasIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_50AssignVariableOpassignvariableop_50_adam_iterIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOpassignvariableop_51_adam_beta_1Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOpassignvariableop_52_adam_beta_2Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOpassignvariableop_53_adam_decayIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp&assignvariableop_54_adam_learning_rateIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOpassignvariableop_55_totalIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOpassignvariableop_56_countIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOpassignvariableop_57_total_1Identity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOpassignvariableop_58_count_1Identity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp+assignvariableop_59_adam_conv2d_24_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_conv2d_24_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp7assignvariableop_61_adam_batch_normalization_28_gamma_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOp6assignvariableop_62_adam_batch_normalization_28_beta_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOp+assignvariableop_63_adam_conv2d_25_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_conv2d_25_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOp7assignvariableop_65_adam_batch_normalization_29_gamma_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOp6assignvariableop_66_adam_batch_normalization_29_beta_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOp+assignvariableop_67_adam_conv2d_26_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_conv2d_26_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOp7assignvariableop_69_adam_batch_normalization_30_gamma_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_70AssignVariableOp6assignvariableop_70_adam_batch_normalization_30_beta_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_71AssignVariableOp+assignvariableop_71_adam_conv2d_27_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_conv2d_27_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_73AssignVariableOp7assignvariableop_73_adam_batch_normalization_31_gamma_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_74AssignVariableOp6assignvariableop_74_adam_batch_normalization_31_beta_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_75AssignVariableOp+assignvariableop_75_adam_conv2d_28_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_76AssignVariableOp)assignvariableop_76_adam_conv2d_28_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_77AssignVariableOp7assignvariableop_77_adam_batch_normalization_32_gamma_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_78AssignVariableOp6assignvariableop_78_adam_batch_normalization_32_beta_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_79AssignVariableOp+assignvariableop_79_adam_conv2d_29_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_80AssignVariableOp)assignvariableop_80_adam_conv2d_29_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_81AssignVariableOp7assignvariableop_81_adam_batch_normalization_33_gamma_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_82AssignVariableOp6assignvariableop_82_adam_batch_normalization_33_beta_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_83AssignVariableOp)assignvariableop_83_adam_dense_8_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_84AssignVariableOp'assignvariableop_84_adam_dense_8_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_85AssignVariableOp7assignvariableop_85_adam_batch_normalization_34_gamma_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_86AssignVariableOp6assignvariableop_86_adam_batch_normalization_34_beta_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_87AssignVariableOp)assignvariableop_87_adam_dense_9_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_88AssignVariableOp'assignvariableop_88_adam_dense_9_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_89AssignVariableOp7assignvariableop_89_adam_batch_normalization_35_gamma_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_90AssignVariableOp6assignvariableop_90_adam_batch_normalization_35_beta_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_91AssignVariableOp*assignvariableop_91_adam_dense_10_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_92AssignVariableOp(assignvariableop_92_adam_dense_10_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_93AssignVariableOp+assignvariableop_93_adam_conv2d_24_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_94AssignVariableOp)assignvariableop_94_adam_conv2d_24_bias_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_95AssignVariableOp7assignvariableop_95_adam_batch_normalization_28_gamma_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_96AssignVariableOp6assignvariableop_96_adam_batch_normalization_28_beta_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_97AssignVariableOp+assignvariableop_97_adam_conv2d_25_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_98AssignVariableOp)assignvariableop_98_adam_conv2d_25_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_99AssignVariableOp7assignvariableop_99_adam_batch_normalization_29_gamma_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_100AssignVariableOp7assignvariableop_100_adam_batch_normalization_29_beta_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_101AssignVariableOp,assignvariableop_101_adam_conv2d_26_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_102AssignVariableOp*assignvariableop_102_adam_conv2d_26_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_103AssignVariableOp8assignvariableop_103_adam_batch_normalization_30_gamma_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_104AssignVariableOp7assignvariableop_104_adam_batch_normalization_30_beta_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_105AssignVariableOp,assignvariableop_105_adam_conv2d_27_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_106AssignVariableOp*assignvariableop_106_adam_conv2d_27_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_107AssignVariableOp8assignvariableop_107_adam_batch_normalization_31_gamma_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_108AssignVariableOp7assignvariableop_108_adam_batch_normalization_31_beta_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_109AssignVariableOp,assignvariableop_109_adam_conv2d_28_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_110AssignVariableOp*assignvariableop_110_adam_conv2d_28_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_111AssignVariableOp8assignvariableop_111_adam_batch_normalization_32_gamma_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_112AssignVariableOp7assignvariableop_112_adam_batch_normalization_32_beta_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_113AssignVariableOp,assignvariableop_113_adam_conv2d_29_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_114AssignVariableOp*assignvariableop_114_adam_conv2d_29_bias_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_115AssignVariableOp8assignvariableop_115_adam_batch_normalization_33_gamma_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_116AssignVariableOp7assignvariableop_116_adam_batch_normalization_33_beta_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_117AssignVariableOp*assignvariableop_117_adam_dense_8_kernel_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_118AssignVariableOp(assignvariableop_118_adam_dense_8_bias_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_119AssignVariableOp8assignvariableop_119_adam_batch_normalization_34_gamma_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_120AssignVariableOp7assignvariableop_120_adam_batch_normalization_34_beta_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_121AssignVariableOp*assignvariableop_121_adam_dense_9_kernel_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_122AssignVariableOp(assignvariableop_122_adam_dense_9_bias_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_123AssignVariableOp8assignvariableop_123_adam_batch_normalization_35_gamma_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_124AssignVariableOp7assignvariableop_124_adam_batch_normalization_35_beta_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_125AssignVariableOp+assignvariableop_125_adam_dense_10_kernel_vIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_126AssignVariableOp)assignvariableop_126_adam_dense_10_bias_vIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_127Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_128IdentityIdentity_127:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_128Identity_128:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
G
+__inference_dropout_20_layer_call_fn_380352

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_377536a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_25_layer_call_fn_379534

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_377278w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????pp `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????pp : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????pp 
 
_user_specified_nameinputs
?
G
+__inference_dropout_16_layer_call_fn_379631

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_377306h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????88 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????88 :W S
/
_output_shapes
:?????????88 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_377042

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_377062

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
C
'__inference_elu_28_layer_call_fn_380262

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_28_layer_call_and_return_conditional_losses_377520a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_18_layer_call_and_return_conditional_losses_377450

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_33_layer_call_fn_380018

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_377042?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_25_layer_call_and_return_conditional_losses_377278

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????pp g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????pp w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????pp : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????pp 
 
_user_specified_nameinputs
?
^
B__inference_elu_24_layer_call_and_return_conditional_losses_377361

inputs
identityL
EluEluinputs*
T0*/
_output_shapes
:?????????88@a
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:?????????88@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????88@:W S
/
_output_shapes
:?????????88@
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_14_layer_call_fn_380059

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_377062?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_379507

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
d
+__inference_dropout_17_layer_call_fn_379855

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_377840w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_34_layer_call_fn_380144

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_377089p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_376922

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_17_layer_call_and_return_conditional_losses_377378

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
E__inference_conv2d_29_layer_call_and_return_conditional_losses_377422

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_20_layer_call_and_return_conditional_losses_377536

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_377136

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	??
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_20_layer_call_fn_380357

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_377701p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

e
F__inference_dropout_17_layer_call_and_return_conditional_losses_379872

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
C
'__inference_elu_26_layer_call_fn_379987

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_26_layer_call_and_return_conditional_losses_377433i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_9_layer_call_and_return_conditional_losses_377509

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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
?
d
+__inference_dropout_19_layer_call_fn_380221

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_19_layer_call_and_return_conditional_losses_377740p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_29_layer_call_fn_379567

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_376731?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?

?
E__inference_conv2d_28_layer_call_and_return_conditional_losses_377390

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
e
F__inference_dropout_19_layer_call_and_return_conditional_losses_377740

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_17_layer_call_fn_379850

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_377378h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_379744

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
d
H__inference_activation_4_layer_call_and_return_conditional_losses_380403

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_379817

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_376807

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
^
B__inference_elu_27_layer_call_and_return_conditional_losses_380131

inputs
identityE
EluEluinputs*
T0*(
_output_shapes
:??????????Z
IdentityIdentityElu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_379525

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
I
-__inference_activation_4_layer_call_fn_380398

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_377559`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_380054

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_376871

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_376782

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
^
B__inference_elu_28_layer_call_and_return_conditional_losses_380267

inputs
identityE
EluEluinputs*
T0*(
_output_shapes
:??????????Z
IdentityIdentityElu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_17_layer_call_and_return_conditional_losses_379860

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
^
B__inference_elu_21_layer_call_and_return_conditional_losses_377257

inputs
identityL
EluEluinputs*
T0*/
_output_shapes
:?????????pp a
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:?????????pp "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????pp :W S
/
_output_shapes
:?????????pp 
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_379626

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_376731

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_28_layer_call_fn_379489

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_376698?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_31_layer_call_fn_379799

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_376902?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
^
B__inference_elu_27_layer_call_and_return_conditional_losses_377481

inputs
identityE
EluEluinputs*
T0*(
_output_shapes
:??????????Z
IdentityIdentityElu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
C
'__inference_elu_25_layer_call_fn_379896

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_25_layer_call_and_return_conditional_losses_377401i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_34_layer_call_fn_380157

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_377136p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_379945

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_dense_10_layer_call_fn_380383

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_377548o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_376902

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_379845

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
C
'__inference_elu_24_layer_call_fn_379768

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_elu_24_layer_call_and_return_conditional_losses_377361h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????88@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????88@:W S
/
_output_shapes
:?????????88@
 
_user_specified_nameinputs
?

?
E__inference_conv2d_26_layer_call_and_return_conditional_losses_379672

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????88@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????88@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????88 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????88 
 
_user_specified_nameinputs
?	
?
C__inference_dense_8_layer_call_and_return_conditional_losses_377470

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_29_layer_call_fn_379972

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_377422x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
H__inference_activation_4_layer_call_and_return_conditional_losses_377559

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_33_layer_call_fn_380005

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_377011?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_35_layer_call_fn_380293

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_377218p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_380313

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_379434
conv2d_24_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@?

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?

unknown_34:	?

unknown_35:???

unknown_36:	?

unknown_37:	?

unknown_38:	?

unknown_39:	?

unknown_40:	?

unknown_41:
??

unknown_42:	?

unknown_43:	?

unknown_44:	?

unknown_45:	?

unknown_46:	?

unknown_47:	?

unknown_48:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_24_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./012*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_376645o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
:?????????pp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????pp
)
_user_specified_nameconv2d_24_input
?
?
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_379726

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
*__inference_conv2d_27_layer_call_fn_379753

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????88@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_377350w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????88@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????88@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????88@
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_380347

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	??
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
S
conv2d_24_input@
!serving_default_conv2d_24_input:0?????????pp@
activation_40
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?	
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer_with_weights-8
layer-16
layer-17
layer_with_weights-9
layer-18
layer_with_weights-10
layer-19
layer-20
layer_with_weights-11
layer-21
layer-22
layer-23
layer-24
layer_with_weights-12
layer-25
layer-26
layer_with_weights-13
layer-27
layer-28
layer_with_weights-14
layer-29
layer-30
 layer_with_weights-15
 layer-31
!layer-32
"layer_with_weights-16
"layer-33
#layer-34
$	optimizer
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+_default_save_signature
,
signatures"
_tf_keras_sequential
?

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
?
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
?
;axis
	<gamma
=beta
>moving_mean
?moving_variance
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
?
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Taxis
	Ugamma
Vbeta
Wmoving_mean
Xmoving_variance
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
?
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_layer
?
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i_random_generator
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_layer
?

lkernel
mbias
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
?
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
?
zaxis
	{gamma
|beta
}moving_mean
~moving_variance
	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate-m?.m?<m?=m?Fm?Gm?Um?Vm?lm?mm?{m?|m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?-v?.v?<v?=v?Fv?Gv?Uv?Vv?lv?mv?{v?|v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?"
	optimizer
?
-0
.1
<2
=3
>4
?5
F6
G7
U8
V9
W10
X11
l12
m13
{14
|15
}16
~17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47
?48
?49"
trackable_list_wrapper
?
-0
.1
<2
=3
F4
G5
U6
V7
l8
m9
{10
|11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
+_default_save_signature
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_sequential_4_layer_call_fn_377665
-__inference_sequential_4_layer_call_fn_378773
-__inference_sequential_4_layer_call_fn_378878
-__inference_sequential_4_layer_call_fn_378384?
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
H__inference_sequential_4_layer_call_and_return_conditional_losses_379071
H__inference_sequential_4_layer_call_and_return_conditional_losses_379327
H__inference_sequential_4_layer_call_and_return_conditional_losses_378523
H__inference_sequential_4_layer_call_and_return_conditional_losses_378662?
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
?B?
!__inference__wrapped_model_376645conv2d_24_input"?
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
-
?serving_default"
signature_map
*:( 2conv2d_24/kernel
: 2conv2d_24/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv2d_24_layer_call_fn_379443?
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
E__inference_conv2d_24_layer_call_and_return_conditional_losses_379453?
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_elu_21_layer_call_fn_379458?
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
B__inference_elu_21_layer_call_and_return_conditional_losses_379463?
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
 "
trackable_list_wrapper
*:( 2batch_normalization_28/gamma
):' 2batch_normalization_28/beta
2:0  (2"batch_normalization_28/moving_mean
6:4  (2&batch_normalization_28/moving_variance
<
<0
=1
>2
?3"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_batch_normalization_28_layer_call_fn_379476
7__inference_batch_normalization_28_layer_call_fn_379489?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_379507
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_379525?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
*:(  2conv2d_25/kernel
: 2conv2d_25/bias
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv2d_25_layer_call_fn_379534?
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
E__inference_conv2d_25_layer_call_and_return_conditional_losses_379544?
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_elu_22_layer_call_fn_379549?
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
B__inference_elu_22_layer_call_and_return_conditional_losses_379554?
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
 "
trackable_list_wrapper
*:( 2batch_normalization_29/gamma
):' 2batch_normalization_29/beta
2:0  (2"batch_normalization_29/moving_mean
6:4  (2&batch_normalization_29/moving_variance
<
U0
V1
W2
X3"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_batch_normalization_29_layer_call_fn_379567
7__inference_batch_normalization_29_layer_call_fn_379580?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_379598
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_379616?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
?2?
1__inference_max_pooling2d_12_layer_call_fn_379621?
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
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_379626?
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
e	variables
ftrainable_variables
gregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
+__inference_dropout_16_layer_call_fn_379631
+__inference_dropout_16_layer_call_fn_379636?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_16_layer_call_and_return_conditional_losses_379641
F__inference_dropout_16_layer_call_and_return_conditional_losses_379653?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
*:( @2conv2d_26/kernel
:@2conv2d_26/bias
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv2d_26_layer_call_fn_379662?
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
E__inference_conv2d_26_layer_call_and_return_conditional_losses_379672?
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_elu_23_layer_call_fn_379677?
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
B__inference_elu_23_layer_call_and_return_conditional_losses_379682?
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
 "
trackable_list_wrapper
*:(@2batch_normalization_30/gamma
):'@2batch_normalization_30/beta
2:0@ (2"batch_normalization_30/moving_mean
6:4@ (2&batch_normalization_30/moving_variance
<
{0
|1
}2
~3"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_batch_normalization_30_layer_call_fn_379695
7__inference_batch_normalization_30_layer_call_fn_379708?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_379726
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_379744?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
*:(@@2conv2d_27/kernel
:@2conv2d_27/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv2d_27_layer_call_fn_379753?
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
E__inference_conv2d_27_layer_call_and_return_conditional_losses_379763?
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_elu_24_layer_call_fn_379768?
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
B__inference_elu_24_layer_call_and_return_conditional_losses_379773?
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
 "
trackable_list_wrapper
*:(@2batch_normalization_31/gamma
):'@2batch_normalization_31/beta
2:0@ (2"batch_normalization_31/moving_mean
6:4@ (2&batch_normalization_31/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_batch_normalization_31_layer_call_fn_379786
7__inference_batch_normalization_31_layer_call_fn_379799?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_379817
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_379835?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
1__inference_max_pooling2d_13_layer_call_fn_379840?
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
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_379845?
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
+__inference_dropout_17_layer_call_fn_379850
+__inference_dropout_17_layer_call_fn_379855?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_17_layer_call_and_return_conditional_losses_379860
F__inference_dropout_17_layer_call_and_return_conditional_losses_379872?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
+:)@?2conv2d_28/kernel
:?2conv2d_28/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv2d_28_layer_call_fn_379881?
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
E__inference_conv2d_28_layer_call_and_return_conditional_losses_379891?
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_elu_25_layer_call_fn_379896?
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
B__inference_elu_25_layer_call_and_return_conditional_losses_379901?
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
 "
trackable_list_wrapper
+:)?2batch_normalization_32/gamma
*:(?2batch_normalization_32/beta
3:1? (2"batch_normalization_32/moving_mean
7:5? (2&batch_normalization_32/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_batch_normalization_32_layer_call_fn_379914
7__inference_batch_normalization_32_layer_call_fn_379927?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_379945
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_379963?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
,:*??2conv2d_29/kernel
:?2conv2d_29/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv2d_29_layer_call_fn_379972?
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
E__inference_conv2d_29_layer_call_and_return_conditional_losses_379982?
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_elu_26_layer_call_fn_379987?
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
B__inference_elu_26_layer_call_and_return_conditional_losses_379992?
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
 "
trackable_list_wrapper
+:)?2batch_normalization_33/gamma
*:(?2batch_normalization_33/beta
3:1? (2"batch_normalization_33/moving_mean
7:5? (2&batch_normalization_33/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_batch_normalization_33_layer_call_fn_380005
7__inference_batch_normalization_33_layer_call_fn_380018?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_380036
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_380054?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
1__inference_max_pooling2d_14_layer_call_fn_380059?
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
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_380064?
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
+__inference_dropout_18_layer_call_fn_380069
+__inference_dropout_18_layer_call_fn_380074?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_18_layer_call_and_return_conditional_losses_380079
F__inference_dropout_18_layer_call_and_return_conditional_losses_380091?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_flatten_4_layer_call_fn_380096?
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
E__inference_flatten_4_layer_call_and_return_conditional_losses_380102?
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
#:!???2dense_8/kernel
:?2dense_8/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_dense_8_layer_call_fn_380111?
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
C__inference_dense_8_layer_call_and_return_conditional_losses_380121?
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_elu_27_layer_call_fn_380126?
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
B__inference_elu_27_layer_call_and_return_conditional_losses_380131?
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
 "
trackable_list_wrapper
+:)?2batch_normalization_34/gamma
*:(?2batch_normalization_34/beta
3:1? (2"batch_normalization_34/moving_mean
7:5? (2&batch_normalization_34/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_batch_normalization_34_layer_call_fn_380144
7__inference_batch_normalization_34_layer_call_fn_380157?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_380177
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_380211?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
+__inference_dropout_19_layer_call_fn_380216
+__inference_dropout_19_layer_call_fn_380221?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_19_layer_call_and_return_conditional_losses_380226
F__inference_dropout_19_layer_call_and_return_conditional_losses_380238?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
": 
??2dense_9/kernel
:?2dense_9/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_dense_9_layer_call_fn_380247?
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
C__inference_dense_9_layer_call_and_return_conditional_losses_380257?
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_elu_28_layer_call_fn_380262?
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
B__inference_elu_28_layer_call_and_return_conditional_losses_380267?
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
 "
trackable_list_wrapper
+:)?2batch_normalization_35/gamma
*:(?2batch_normalization_35/beta
3:1? (2"batch_normalization_35/moving_mean
7:5? (2&batch_normalization_35/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_batch_normalization_35_layer_call_fn_380280
7__inference_batch_normalization_35_layer_call_fn_380293?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_380313
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_380347?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
+__inference_dropout_20_layer_call_fn_380352
+__inference_dropout_20_layer_call_fn_380357?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_20_layer_call_and_return_conditional_losses_380362
F__inference_dropout_20_layer_call_and_return_conditional_losses_380374?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
": 	?2dense_10/kernel
:2dense_10/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_10_layer_call_fn_380383?
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
D__inference_dense_10_layer_call_and_return_conditional_losses_380393?
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_activation_4_layer_call_fn_380398?
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
H__inference_activation_4_layer_call_and_return_conditional_losses_380403?
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?
>0
?1
W2
X3
}4
~5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15"
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_379434conv2d_24_input"?
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
.
>0
?1"
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
.
W0
X1"
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
.
}0
~1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
/:- 2Adam/conv2d_24/kernel/m
!: 2Adam/conv2d_24/bias/m
/:- 2#Adam/batch_normalization_28/gamma/m
.:, 2"Adam/batch_normalization_28/beta/m
/:-  2Adam/conv2d_25/kernel/m
!: 2Adam/conv2d_25/bias/m
/:- 2#Adam/batch_normalization_29/gamma/m
.:, 2"Adam/batch_normalization_29/beta/m
/:- @2Adam/conv2d_26/kernel/m
!:@2Adam/conv2d_26/bias/m
/:-@2#Adam/batch_normalization_30/gamma/m
.:,@2"Adam/batch_normalization_30/beta/m
/:-@@2Adam/conv2d_27/kernel/m
!:@2Adam/conv2d_27/bias/m
/:-@2#Adam/batch_normalization_31/gamma/m
.:,@2"Adam/batch_normalization_31/beta/m
0:.@?2Adam/conv2d_28/kernel/m
": ?2Adam/conv2d_28/bias/m
0:.?2#Adam/batch_normalization_32/gamma/m
/:-?2"Adam/batch_normalization_32/beta/m
1:/??2Adam/conv2d_29/kernel/m
": ?2Adam/conv2d_29/bias/m
0:.?2#Adam/batch_normalization_33/gamma/m
/:-?2"Adam/batch_normalization_33/beta/m
(:&???2Adam/dense_8/kernel/m
 :?2Adam/dense_8/bias/m
0:.?2#Adam/batch_normalization_34/gamma/m
/:-?2"Adam/batch_normalization_34/beta/m
':%
??2Adam/dense_9/kernel/m
 :?2Adam/dense_9/bias/m
0:.?2#Adam/batch_normalization_35/gamma/m
/:-?2"Adam/batch_normalization_35/beta/m
':%	?2Adam/dense_10/kernel/m
 :2Adam/dense_10/bias/m
/:- 2Adam/conv2d_24/kernel/v
!: 2Adam/conv2d_24/bias/v
/:- 2#Adam/batch_normalization_28/gamma/v
.:, 2"Adam/batch_normalization_28/beta/v
/:-  2Adam/conv2d_25/kernel/v
!: 2Adam/conv2d_25/bias/v
/:- 2#Adam/batch_normalization_29/gamma/v
.:, 2"Adam/batch_normalization_29/beta/v
/:- @2Adam/conv2d_26/kernel/v
!:@2Adam/conv2d_26/bias/v
/:-@2#Adam/batch_normalization_30/gamma/v
.:,@2"Adam/batch_normalization_30/beta/v
/:-@@2Adam/conv2d_27/kernel/v
!:@2Adam/conv2d_27/bias/v
/:-@2#Adam/batch_normalization_31/gamma/v
.:,@2"Adam/batch_normalization_31/beta/v
0:.@?2Adam/conv2d_28/kernel/v
": ?2Adam/conv2d_28/bias/v
0:.?2#Adam/batch_normalization_32/gamma/v
/:-?2"Adam/batch_normalization_32/beta/v
1:/??2Adam/conv2d_29/kernel/v
": ?2Adam/conv2d_29/bias/v
0:.?2#Adam/batch_normalization_33/gamma/v
/:-?2"Adam/batch_normalization_33/beta/v
(:&???2Adam/dense_8/kernel/v
 :?2Adam/dense_8/bias/v
0:.?2#Adam/batch_normalization_34/gamma/v
/:-?2"Adam/batch_normalization_34/beta/v
':%
??2Adam/dense_9/kernel/v
 :?2Adam/dense_9/bias/v
0:.?2#Adam/batch_normalization_35/gamma/v
/:-?2"Adam/batch_normalization_35/beta/v
':%	?2Adam/dense_10/kernel/v
 :2Adam/dense_10/bias/v?
!__inference__wrapped_model_376645?R-.<=>?FGUVWXlm{|}~????????????????????????????????@?=
6?3
1?.
conv2d_24_input?????????pp
? ";?8
6
activation_4&?#
activation_4??????????
H__inference_activation_4_layer_call_and_return_conditional_losses_380403X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
-__inference_activation_4_layer_call_fn_380398K/?,
%?"
 ?
inputs?????????
? "???????????
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_379507?<=>?M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_379525?<=>?M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
7__inference_batch_normalization_28_layer_call_fn_379476?<=>?M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
7__inference_batch_normalization_28_layer_call_fn_379489?<=>?M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_379598?UVWXM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_379616?UVWXM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
7__inference_batch_normalization_29_layer_call_fn_379567?UVWXM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
7__inference_batch_normalization_29_layer_call_fn_379580?UVWXM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_379726?{|}~M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_379744?{|}~M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
7__inference_batch_normalization_30_layer_call_fn_379695?{|}~M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
7__inference_batch_normalization_30_layer_call_fn_379708?{|}~M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_379817?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_379835?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
7__inference_batch_normalization_31_layer_call_fn_379786?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
7__inference_batch_normalization_31_layer_call_fn_379799?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_379945?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_379963?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
7__inference_batch_normalization_32_layer_call_fn_379914?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
7__inference_batch_normalization_32_layer_call_fn_379927?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_380036?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_380054?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
7__inference_batch_normalization_33_layer_call_fn_380005?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
7__inference_batch_normalization_33_layer_call_fn_380018?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_380177h????4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_380211h????4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_34_layer_call_fn_380144[????4?1
*?'
!?
inputs??????????
p 
? "????????????
7__inference_batch_normalization_34_layer_call_fn_380157[????4?1
*?'
!?
inputs??????????
p
? "????????????
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_380313h????4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_380347h????4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_35_layer_call_fn_380280[????4?1
*?'
!?
inputs??????????
p 
? "????????????
7__inference_batch_normalization_35_layer_call_fn_380293[????4?1
*?'
!?
inputs??????????
p
? "????????????
E__inference_conv2d_24_layer_call_and_return_conditional_losses_379453l-.7?4
-?*
(?%
inputs?????????pp
? "-?*
#? 
0?????????pp 
? ?
*__inference_conv2d_24_layer_call_fn_379443_-.7?4
-?*
(?%
inputs?????????pp
? " ??????????pp ?
E__inference_conv2d_25_layer_call_and_return_conditional_losses_379544lFG7?4
-?*
(?%
inputs?????????pp 
? "-?*
#? 
0?????????pp 
? ?
*__inference_conv2d_25_layer_call_fn_379534_FG7?4
-?*
(?%
inputs?????????pp 
? " ??????????pp ?
E__inference_conv2d_26_layer_call_and_return_conditional_losses_379672llm7?4
-?*
(?%
inputs?????????88 
? "-?*
#? 
0?????????88@
? ?
*__inference_conv2d_26_layer_call_fn_379662_lm7?4
-?*
(?%
inputs?????????88 
? " ??????????88@?
E__inference_conv2d_27_layer_call_and_return_conditional_losses_379763n??7?4
-?*
(?%
inputs?????????88@
? "-?*
#? 
0?????????88@
? ?
*__inference_conv2d_27_layer_call_fn_379753a??7?4
-?*
(?%
inputs?????????88@
? " ??????????88@?
E__inference_conv2d_28_layer_call_and_return_conditional_losses_379891o??7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_28_layer_call_fn_379881b??7?4
-?*
(?%
inputs?????????@
? "!????????????
E__inference_conv2d_29_layer_call_and_return_conditional_losses_379982p??8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_29_layer_call_fn_379972c??8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_dense_10_layer_call_and_return_conditional_losses_380393_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? 
)__inference_dense_10_layer_call_fn_380383R??0?-
&?#
!?
inputs??????????
? "???????????
C__inference_dense_8_layer_call_and_return_conditional_losses_380121a??1?.
'?$
"?
inputs???????????
? "&?#
?
0??????????
? ?
(__inference_dense_8_layer_call_fn_380111T??1?.
'?$
"?
inputs???????????
? "????????????
C__inference_dense_9_layer_call_and_return_conditional_losses_380257`??0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
(__inference_dense_9_layer_call_fn_380247S??0?-
&?#
!?
inputs??????????
? "????????????
F__inference_dropout_16_layer_call_and_return_conditional_losses_379641l;?8
1?.
(?%
inputs?????????88 
p 
? "-?*
#? 
0?????????88 
? ?
F__inference_dropout_16_layer_call_and_return_conditional_losses_379653l;?8
1?.
(?%
inputs?????????88 
p
? "-?*
#? 
0?????????88 
? ?
+__inference_dropout_16_layer_call_fn_379631_;?8
1?.
(?%
inputs?????????88 
p 
? " ??????????88 ?
+__inference_dropout_16_layer_call_fn_379636_;?8
1?.
(?%
inputs?????????88 
p
? " ??????????88 ?
F__inference_dropout_17_layer_call_and_return_conditional_losses_379860l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
F__inference_dropout_17_layer_call_and_return_conditional_losses_379872l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
+__inference_dropout_17_layer_call_fn_379850_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
+__inference_dropout_17_layer_call_fn_379855_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
F__inference_dropout_18_layer_call_and_return_conditional_losses_380079n<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
F__inference_dropout_18_layer_call_and_return_conditional_losses_380091n<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
+__inference_dropout_18_layer_call_fn_380069a<?9
2?/
)?&
inputs??????????
p 
? "!????????????
+__inference_dropout_18_layer_call_fn_380074a<?9
2?/
)?&
inputs??????????
p
? "!????????????
F__inference_dropout_19_layer_call_and_return_conditional_losses_380226^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
F__inference_dropout_19_layer_call_and_return_conditional_losses_380238^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
+__inference_dropout_19_layer_call_fn_380216Q4?1
*?'
!?
inputs??????????
p 
? "????????????
+__inference_dropout_19_layer_call_fn_380221Q4?1
*?'
!?
inputs??????????
p
? "????????????
F__inference_dropout_20_layer_call_and_return_conditional_losses_380362^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
F__inference_dropout_20_layer_call_and_return_conditional_losses_380374^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
+__inference_dropout_20_layer_call_fn_380352Q4?1
*?'
!?
inputs??????????
p 
? "????????????
+__inference_dropout_20_layer_call_fn_380357Q4?1
*?'
!?
inputs??????????
p
? "????????????
B__inference_elu_21_layer_call_and_return_conditional_losses_379463h7?4
-?*
(?%
inputs?????????pp 
? "-?*
#? 
0?????????pp 
? ?
'__inference_elu_21_layer_call_fn_379458[7?4
-?*
(?%
inputs?????????pp 
? " ??????????pp ?
B__inference_elu_22_layer_call_and_return_conditional_losses_379554h7?4
-?*
(?%
inputs?????????pp 
? "-?*
#? 
0?????????pp 
? ?
'__inference_elu_22_layer_call_fn_379549[7?4
-?*
(?%
inputs?????????pp 
? " ??????????pp ?
B__inference_elu_23_layer_call_and_return_conditional_losses_379682h7?4
-?*
(?%
inputs?????????88@
? "-?*
#? 
0?????????88@
? ?
'__inference_elu_23_layer_call_fn_379677[7?4
-?*
(?%
inputs?????????88@
? " ??????????88@?
B__inference_elu_24_layer_call_and_return_conditional_losses_379773h7?4
-?*
(?%
inputs?????????88@
? "-?*
#? 
0?????????88@
? ?
'__inference_elu_24_layer_call_fn_379768[7?4
-?*
(?%
inputs?????????88@
? " ??????????88@?
B__inference_elu_25_layer_call_and_return_conditional_losses_379901j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
'__inference_elu_25_layer_call_fn_379896]8?5
.?+
)?&
inputs??????????
? "!????????????
B__inference_elu_26_layer_call_and_return_conditional_losses_379992j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
'__inference_elu_26_layer_call_fn_379987]8?5
.?+
)?&
inputs??????????
? "!????????????
B__inference_elu_27_layer_call_and_return_conditional_losses_380131Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? x
'__inference_elu_27_layer_call_fn_380126M0?-
&?#
!?
inputs??????????
? "????????????
B__inference_elu_28_layer_call_and_return_conditional_losses_380267Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? x
'__inference_elu_28_layer_call_fn_380262M0?-
&?#
!?
inputs??????????
? "????????????
E__inference_flatten_4_layer_call_and_return_conditional_losses_380102c8?5
.?+
)?&
inputs??????????
? "'?$
?
0???????????
? ?
*__inference_flatten_4_layer_call_fn_380096V8?5
.?+
)?&
inputs??????????
? "?????????????
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_379626?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_12_layer_call_fn_379621?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_379845?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_13_layer_call_fn_379840?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_380064?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_14_layer_call_fn_380059?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_sequential_4_layer_call_and_return_conditional_losses_378523?R-.<=>?FGUVWXlm{|}~????????????????????????????????H?E
>?;
1?.
conv2d_24_input?????????pp
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_378662?R-.<=>?FGUVWXlm{|}~????????????????????????????????H?E
>?;
1?.
conv2d_24_input?????????pp
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_379071?R-.<=>?FGUVWXlm{|}~??????????????????????????????????<
5?2
(?%
inputs?????????pp
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_379327?R-.<=>?FGUVWXlm{|}~??????????????????????????????????<
5?2
(?%
inputs?????????pp
p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_4_layer_call_fn_377665?R-.<=>?FGUVWXlm{|}~????????????????????????????????H?E
>?;
1?.
conv2d_24_input?????????pp
p 

 
? "???????????
-__inference_sequential_4_layer_call_fn_378384?R-.<=>?FGUVWXlm{|}~????????????????????????????????H?E
>?;
1?.
conv2d_24_input?????????pp
p

 
? "???????????
-__inference_sequential_4_layer_call_fn_378773?R-.<=>?FGUVWXlm{|}~??????????????????????????????????<
5?2
(?%
inputs?????????pp
p 

 
? "???????????
-__inference_sequential_4_layer_call_fn_378878?R-.<=>?FGUVWXlm{|}~??????????????????????????????????<
5?2
(?%
inputs?????????pp
p

 
? "???????????
$__inference_signature_wrapper_379434?R-.<=>?FGUVWXlm{|}~????????????????????????????????S?P
? 
I?F
D
conv2d_24_input1?.
conv2d_24_input?????????pp";?8
6
activation_4&?#
activation_4?????????