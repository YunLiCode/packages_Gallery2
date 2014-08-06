.class public Lcom/android/gallery3d/filtershow/filters/SplineMath;
.super Ljava/lang/Object;
.source "SplineMath.java"


# instance fields
.field mDerivatives:[D

.field mPoints:[[D


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "n"    # I

    .prologue
    const/4 v2, 0x2

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x6

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/SplineMath;->mPoints:[[D

    .line 8
    filled-new-array {p1, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/SplineMath;->mPoints:[[D

    .line 9
    return-void
.end method


# virtual methods
.method public calculatetCurve(I)[[F
    .locals 47
    .param p1, "n"    # I

    .prologue
    .line 18
    const/16 v41, 0x2

    move/from16 v0, p1

    move/from16 v1, v41

    filled-new-array {v0, v1}, [I

    move-result-object v41

    sget-object v42, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[F

    .line 19
    .local v7, "curve":[[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/SplineMath;->mPoints:[[D

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    const/16 v42, 0x2

    filled-new-array/range {v41 .. v42}, [I

    move-result-object v41

    sget-object v42, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[D

    .line 20
    .local v19, "points":[[D
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/SplineMath;->mPoints:[[D

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v14, v0, :cond_0

    .line 22
    aget-object v41, v19, v14

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/SplineMath;->mPoints:[[D

    move-object/from16 v43, v0

    aget-object v43, v43, v14

    const/16 v44, 0x0

    aget-wide v43, v43, v44

    aput-wide v43, v41, v42

    .line 23
    aget-object v41, v19, v14

    const/16 v42, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/SplineMath;->mPoints:[[D

    move-object/from16 v43, v0

    aget-object v43, v43, v14

    const/16 v44, 0x1

    aget-wide v43, v43, v44

    aput-wide v43, v41, v42

    .line 20
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 26
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/SplineMath;->solveSystem([[D)[D

    move-result-object v12

    .line 27
    .local v12, "derivatives":[D
    const/16 v41, 0x0

    aget-object v41, v19, v41

    const/16 v42, 0x0

    aget-wide v41, v41, v42

    move-wide/from16 v0, v41

    double-to-float v0, v0

    move/from16 v20, v0

    .line 28
    .local v20, "start":F
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v41, v0

    add-int/lit8 v41, v41, -0x1

    aget-object v41, v19, v41

    const/16 v42, 0x0

    aget-wide v41, v41, v42

    move-wide/from16 v0, v41

    double-to-float v13, v0

    .line 30
    .local v13, "end":F
    const/16 v41, 0x0

    aget-object v41, v7, v41

    const/16 v42, 0x0

    const/16 v43, 0x0

    aget-object v43, v19, v43

    const/16 v44, 0x0

    aget-wide v43, v43, v44

    move-wide/from16 v0, v43

    double-to-float v0, v0

    move/from16 v43, v0

    aput v43, v41, v42

    .line 31
    const/16 v41, 0x0

    aget-object v41, v7, v41

    const/16 v42, 0x1

    const/16 v43, 0x0

    aget-object v43, v19, v43

    const/16 v44, 0x1

    aget-wide v43, v43, v44

    move-wide/from16 v0, v43

    double-to-float v0, v0

    move/from16 v43, v0

    aput v43, v41, v42

    .line 32
    array-length v0, v7

    move/from16 v41, v0

    add-int/lit8 v16, v41, -0x1

    .line 33
    .local v16, "last":I
    aget-object v41, v7, v16

    const/16 v42, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x1

    aget-object v43, v19, v43

    const/16 v44, 0x0

    aget-wide v43, v43, v44

    move-wide/from16 v0, v43

    double-to-float v0, v0

    move/from16 v43, v0

    aput v43, v41, v42

    .line 34
    aget-object v41, v7, v16

    const/16 v42, 0x1

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x1

    aget-object v43, v19, v43

    const/16 v44, 0x1

    aget-wide v43, v43, v44

    move-wide/from16 v0, v43

    double-to-float v0, v0

    move/from16 v43, v0

    aput v43, v41, v42

    .line 36
    const/4 v14, 0x0

    :goto_1
    array-length v0, v7

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v14, v0, :cond_4

    .line 38
    const/4 v6, 0x0

    .line 39
    .local v6, "cur":[D
    const/16 v17, 0x0

    .line 40
    .local v17, "next":[D
    int-to-float v0, v14

    move/from16 v41, v0

    sub-float v42, v13, v20

    mul-float v41, v41, v42

    array-length v0, v7

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    add-float v41, v41, v20

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v29, v0

    .line 41
    .local v29, "x":D
    const/16 v18, 0x0

    .line 42
    .local v18, "pivot":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v41, v0

    add-int/lit8 v41, v41, -0x1

    move/from16 v0, v41

    if-ge v15, v0, :cond_2

    .line 43
    aget-object v41, v19, v15

    const/16 v42, 0x0

    aget-wide v41, v41, v42

    cmpl-double v41, v29, v41

    if-ltz v41, :cond_1

    add-int/lit8 v41, v15, 0x1

    aget-object v41, v19, v41

    const/16 v42, 0x0

    aget-wide v41, v41, v42

    cmpg-double v41, v29, v41

    if-gtz v41, :cond_1

    .line 44
    move/from16 v18, v15

    .line 42
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 47
    :cond_2
    aget-object v6, v19, v18

    .line 48
    add-int/lit8 v41, v18, 0x1

    aget-object v17, v19, v41

    .line 49
    const/16 v41, 0x0

    aget-wide v41, v17, v41

    cmpg-double v41, v29, v41

    if-gtz v41, :cond_3

    .line 50
    const/16 v41, 0x0

    aget-wide v31, v6, v41

    .line 51
    .local v31, "x1":D
    const/16 v41, 0x0

    aget-wide v33, v17, v41

    .line 52
    .local v33, "x2":D
    const/16 v41, 0x1

    aget-wide v37, v6, v41

    .line 53
    .local v37, "y1":D
    const/16 v41, 0x1

    aget-wide v39, v17, v41

    .line 57
    .local v39, "y2":D
    sub-double v8, v33, v31

    .line 58
    .local v8, "delta":D
    mul-double v10, v8, v8

    .line 59
    .local v10, "delta2":D
    sub-double v41, v29, v31

    div-double v4, v41, v8

    .line 60
    .local v4, "b":D
    const-wide/high16 v41, 0x3ff0000000000000L

    sub-double v2, v41, v4

    .line 61
    .local v2, "a":D
    mul-double v21, v2, v37

    .line 62
    .local v21, "ta":D
    mul-double v23, v4, v39

    .line 63
    .local v23, "tb":D
    mul-double v41, v2, v2

    mul-double v41, v41, v2

    sub-double v41, v41, v2

    aget-wide v43, v12, v18

    mul-double v25, v41, v43

    .line 64
    .local v25, "tc":D
    mul-double v41, v4, v4

    mul-double v41, v41, v4

    sub-double v41, v41, v4

    add-int/lit8 v43, v18, 0x1

    aget-wide v43, v12, v43

    mul-double v27, v41, v43

    .line 65
    .local v27, "td":D
    add-double v41, v21, v23

    const-wide/high16 v43, 0x4018000000000000L

    div-double v43, v10, v43

    add-double v45, v25, v27

    mul-double v43, v43, v45

    add-double v35, v41, v43

    .line 67
    .local v35, "y":D
    aget-object v41, v7, v14

    const/16 v42, 0x0

    move-wide/from16 v0, v29

    double-to-float v0, v0

    move/from16 v43, v0

    aput v43, v41, v42

    .line 68
    aget-object v41, v7, v14

    const/16 v42, 0x1

    move-wide/from16 v0, v35

    double-to-float v0, v0

    move/from16 v43, v0

    aput v43, v41, v42

    .line 36
    .end local v2    # "a":D
    .end local v4    # "b":D
    .end local v8    # "delta":D
    .end local v10    # "delta2":D
    .end local v21    # "ta":D
    .end local v23    # "tb":D
    .end local v25    # "tc":D
    .end local v27    # "td":D
    .end local v31    # "x1":D
    .end local v33    # "x2":D
    .end local v35    # "y":D
    .end local v37    # "y1":D
    .end local v39    # "y2":D
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 70
    :cond_3
    aget-object v41, v7, v14

    const/16 v42, 0x0

    const/16 v43, 0x0

    aget-wide v43, v17, v43

    move-wide/from16 v0, v43

    double-to-float v0, v0

    move/from16 v43, v0

    aput v43, v41, v42

    .line 71
    aget-object v41, v7, v14

    const/16 v42, 0x1

    const/16 v43, 0x1

    aget-wide v43, v17, v43

    move-wide/from16 v0, v43

    double-to-float v0, v0

    move/from16 v43, v0

    aput v43, v41, v42

    goto :goto_3

    .line 74
    .end local v6    # "cur":[D
    .end local v15    # "j":I
    .end local v17    # "next":[D
    .end local v18    # "pivot":I
    .end local v29    # "x":D
    :cond_4
    return-object v7
.end method

.method public setPoint(IDD)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "x"    # D
    .param p4, "y"    # D

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/SplineMath;->mPoints:[[D

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aput-wide p2, v0, v1

    .line 13
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/SplineMath;->mPoints:[[D

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aput-wide p4, v0, v1

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/SplineMath;->mDerivatives:[D

    .line 15
    return-void
.end method

.method solveSystem([[D)[D
    .locals 29
    .param p1, "points"    # [[D

    .prologue
    .line 113
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    .line 114
    .local v19, "n":I
    const/16 v23, 0x3

    move/from16 v0, v19

    move/from16 v1, v23

    filled-new-array {v0, v1}, [I

    move-result-object v23

    sget-object v24, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [[D

    .line 115
    .local v22, "system":[[D
    move/from16 v0, v19

    new-array v0, v0, [D

    move-object/from16 v20, v0

    .line 116
    .local v20, "result":[D
    move/from16 v0, v19

    new-array v0, v0, [D

    move-object/from16 v21, v0

    .line 117
    .local v21, "solution":[D
    const/16 v23, 0x0

    aget-object v23, v22, v23

    const/16 v24, 0x1

    const-wide/high16 v25, 0x3ff0000000000000L

    aput-wide v25, v23, v24

    .line 118
    add-int/lit8 v23, v19, -0x1

    aget-object v23, v22, v23

    const/16 v24, 0x1

    const-wide/high16 v25, 0x3ff0000000000000L

    aput-wide v25, v23, v24

    .line 119
    const-wide v4, 0x3fc5555555555555L

    .line 120
    .local v4, "d6":D
    const-wide v2, 0x3fd5555555555555L

    .line 125
    .local v2, "d3":D
    const/16 v16, 0x1

    .local v16, "i":I
    :goto_0
    add-int/lit8 v23, v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 126
    aget-object v23, p1, v16

    const/16 v24, 0x0

    aget-wide v23, v23, v24

    add-int/lit8 v25, v16, -0x1

    aget-object v25, p1, v25

    const/16 v26, 0x0

    aget-wide v25, v25, v26

    sub-double v10, v23, v25

    .line 127
    .local v10, "deltaPrevX":D
    add-int/lit8 v23, v16, 0x1

    aget-object v23, p1, v23

    const/16 v24, 0x0

    aget-wide v23, v23, v24

    add-int/lit8 v25, v16, -0x1

    aget-object v25, p1, v25

    const/16 v26, 0x0

    aget-wide v25, v25, v26

    sub-double v14, v23, v25

    .line 128
    .local v14, "deltaX":D
    add-int/lit8 v23, v16, 0x1

    aget-object v23, p1, v23

    const/16 v24, 0x0

    aget-wide v23, v23, v24

    aget-object v25, p1, v16

    const/16 v26, 0x0

    aget-wide v25, v25, v26

    sub-double v6, v23, v25

    .line 129
    .local v6, "deltaNextX":D
    add-int/lit8 v23, v16, 0x1

    aget-object v23, p1, v23

    const/16 v24, 0x1

    aget-wide v23, v23, v24

    aget-object v25, p1, v16

    const/16 v26, 0x1

    aget-wide v25, v25, v26

    sub-double v8, v23, v25

    .line 130
    .local v8, "deltaNextY":D
    aget-object v23, p1, v16

    const/16 v24, 0x1

    aget-wide v23, v23, v24

    add-int/lit8 v25, v16, -0x1

    aget-object v25, p1, v25

    const/16 v26, 0x1

    aget-wide v25, v25, v26

    sub-double v12, v23, v25

    .line 131
    .local v12, "deltaPrevY":D
    aget-object v23, v22, v16

    const/16 v24, 0x0

    mul-double v25, v4, v10

    aput-wide v25, v23, v24

    .line 132
    aget-object v23, v22, v16

    const/16 v24, 0x1

    mul-double v25, v2, v14

    aput-wide v25, v23, v24

    .line 133
    aget-object v23, v22, v16

    const/16 v24, 0x2

    mul-double v25, v4, v6

    aput-wide v25, v23, v24

    .line 134
    div-double v23, v8, v6

    div-double v25, v12, v10

    sub-double v23, v23, v25

    aput-wide v23, v20, v16

    .line 125
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 138
    .end local v6    # "deltaNextX":D
    .end local v8    # "deltaNextY":D
    .end local v10    # "deltaPrevX":D
    .end local v12    # "deltaPrevY":D
    .end local v14    # "deltaX":D
    :cond_0
    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 140
    aget-object v23, v22, v16

    const/16 v24, 0x0

    aget-wide v23, v23, v24

    add-int/lit8 v25, v16, -0x1

    aget-object v25, v22, v25

    const/16 v26, 0x1

    aget-wide v25, v25, v26

    div-double v17, v23, v25

    .line 142
    .local v17, "m":D
    aget-object v23, v22, v16

    const/16 v24, 0x1

    aget-object v25, v22, v16

    const/16 v26, 0x1

    aget-wide v25, v25, v26

    add-int/lit8 v27, v16, -0x1

    aget-object v27, v22, v27

    const/16 v28, 0x2

    aget-wide v27, v27, v28

    mul-double v27, v27, v17

    sub-double v25, v25, v27

    aput-wide v25, v23, v24

    .line 144
    aget-wide v23, v20, v16

    add-int/lit8 v25, v16, -0x1

    aget-wide v25, v20, v25

    mul-double v25, v25, v17

    sub-double v23, v23, v25

    aput-wide v23, v20, v16

    .line 138
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 148
    .end local v17    # "m":D
    :cond_1
    add-int/lit8 v23, v19, -0x1

    add-int/lit8 v24, v19, -0x1

    aget-wide v24, v20, v24

    add-int/lit8 v26, v19, -0x1

    aget-object v26, v22, v26

    const/16 v27, 0x1

    aget-wide v26, v26, v27

    div-double v24, v24, v26

    aput-wide v24, v21, v23

    .line 149
    add-int/lit8 v16, v19, -0x2

    :goto_2
    if-ltz v16, :cond_2

    .line 150
    aget-wide v23, v20, v16

    aget-object v25, v22, v16

    const/16 v26, 0x2

    aget-wide v25, v25, v26

    add-int/lit8 v27, v16, 0x1

    aget-wide v27, v21, v27

    mul-double v25, v25, v27

    sub-double v23, v23, v25

    aget-object v25, v22, v16

    const/16 v26, 0x1

    aget-wide v25, v25, v26

    div-double v23, v23, v25

    aput-wide v23, v21, v16

    .line 149
    add-int/lit8 v16, v16, -0x1

    goto :goto_2

    .line 152
    :cond_2
    return-object v21
.end method
