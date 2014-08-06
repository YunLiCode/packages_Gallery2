.class public Landroid/support/v8/renderscript/FieldPacker;
.super Ljava/lang/Object;
.source "FieldPacker.java"


# static fields
.field private static thunk:I


# instance fields
.field private final mData:[B

.field private mLen:I

.field private mN:Landroid/renderscript/FieldPacker;

.field private mPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Landroid/support/v8/renderscript/FieldPacker;->thunk:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    .line 49
    iput p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    .line 50
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    .line 51
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-direct {v0, p1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    .line 54
    :cond_0
    return-void
.end method

.method private shouldThunk()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 32
    sget v2, Landroid/support/v8/renderscript/FieldPacker;->thunk:I

    if-nez v2, :cond_1

    .line 33
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-gt v2, v3, :cond_0

    const-string v2, "debug.rs.forcenative"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    :cond_0
    sput v0, Landroid/support/v8/renderscript/FieldPacker;->thunk:I

    .line 41
    :cond_1
    :goto_0
    sget v2, Landroid/support/v8/renderscript/FieldPacker;->thunk:I

    if-ne v2, v0, :cond_3

    .line 44
    :goto_1
    return v0

    .line 38
    :cond_2
    const/4 v2, -0x1

    sput v2, Landroid/support/v8/renderscript/FieldPacker;->thunk:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 44
    goto :goto_1
.end method


# virtual methods
.method public addBoolean(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 550
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 555
    :goto_0
    return-void

    .line 554
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public addF32(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0
.end method

.method public addF32(Landroid/support/v8/renderscript/Float2;)V
    .locals 4
    .param p1, "v"    # Landroid/support/v8/renderscript/Float2;

    .prologue
    .line 240
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Float2;

    iget v2, p1, Landroid/support/v8/renderscript/Float2;->x:F

    iget v3, p1, Landroid/support/v8/renderscript/Float2;->y:F

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Float2;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Float2;->x:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 245
    iget v0, p1, Landroid/support/v8/renderscript/Float2;->y:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto :goto_0
.end method

.method public addF32(Landroid/support/v8/renderscript/Float3;)V
    .locals 5
    .param p1, "v"    # Landroid/support/v8/renderscript/Float3;

    .prologue
    .line 248
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Float3;

    iget v2, p1, Landroid/support/v8/renderscript/Float3;->x:F

    iget v3, p1, Landroid/support/v8/renderscript/Float3;->y:F

    iget v4, p1, Landroid/support/v8/renderscript/Float3;->z:F

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Float3;-><init>(FFF)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Float3;->x:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 253
    iget v0, p1, Landroid/support/v8/renderscript/Float3;->y:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 254
    iget v0, p1, Landroid/support/v8/renderscript/Float3;->z:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto :goto_0
.end method

.method public addF32(Landroid/support/v8/renderscript/Float4;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Float4;

    .prologue
    .line 257
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Float4;

    iget v2, p1, Landroid/support/v8/renderscript/Float4;->x:F

    iget v3, p1, Landroid/support/v8/renderscript/Float4;->y:F

    iget v4, p1, Landroid/support/v8/renderscript/Float4;->z:F

    iget v5, p1, Landroid/support/v8/renderscript/Float4;->w:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Float4;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 265
    :goto_0
    return-void

    .line 261
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Float4;->x:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 262
    iget v0, p1, Landroid/support/v8/renderscript/Float4;->y:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 263
    iget v0, p1, Landroid/support/v8/renderscript/Float4;->z:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 264
    iget v0, p1, Landroid/support/v8/renderscript/Float4;->w:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto :goto_0
.end method

.method public addF64(D)V
    .locals 2
    .param p1, "v"    # D

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto :goto_0
.end method

.method public addF64(Landroid/support/v8/renderscript/Double2;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Double2;

    .prologue
    .line 268
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Double2;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Double2;->x:D

    iget-wide v4, p1, Landroid/support/v8/renderscript/Double2;->y:D

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Double2;-><init>(DD)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double2;)V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double2;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 273
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double2;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto :goto_0
.end method

.method public addF64(Landroid/support/v8/renderscript/Double3;)V
    .locals 8
    .param p1, "v"    # Landroid/support/v8/renderscript/Double3;

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v7, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v0, Landroid/renderscript/Double3;

    iget-wide v1, p1, Landroid/support/v8/renderscript/Double3;->x:D

    iget-wide v3, p1, Landroid/support/v8/renderscript/Double3;->y:D

    iget-wide v5, p1, Landroid/support/v8/renderscript/Double3;->z:D

    invoke-direct/range {v0 .. v6}, Landroid/renderscript/Double3;-><init>(DDD)V

    invoke-virtual {v7, v0}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double3;)V

    .line 283
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double3;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 281
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double3;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 282
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double3;->z:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto :goto_0
.end method

.method public addF64(Landroid/support/v8/renderscript/Double4;)V
    .locals 10
    .param p1, "v"    # Landroid/support/v8/renderscript/Double4;

    .prologue
    .line 285
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v9, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v0, Landroid/renderscript/Double4;

    iget-wide v1, p1, Landroid/support/v8/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/support/v8/renderscript/Double4;->y:D

    iget-wide v5, p1, Landroid/support/v8/renderscript/Double4;->z:D

    iget-wide v7, p1, Landroid/support/v8/renderscript/Double4;->w:D

    invoke-direct/range {v0 .. v8}, Landroid/renderscript/Double4;-><init>(DDDD)V

    invoke-virtual {v9, v0}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double4;)V

    .line 293
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 290
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 291
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->z:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    .line 292
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->w:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto :goto_0
.end method

.method public addI16(Landroid/support/v8/renderscript/Short2;)V
    .locals 4
    .param p1, "v"    # Landroid/support/v8/renderscript/Short2;

    .prologue
    .line 352
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short2;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short2;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short2;->y:S

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Short2;-><init>(SS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short2;)V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 357
    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    goto :goto_0
.end method

.method public addI16(Landroid/support/v8/renderscript/Short3;)V
    .locals 5
    .param p1, "v"    # Landroid/support/v8/renderscript/Short3;

    .prologue
    .line 360
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short3;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short3;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short3;->y:S

    iget-short v4, p1, Landroid/support/v8/renderscript/Short3;->z:S

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Short3;-><init>(SSS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short3;)V

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 365
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 366
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->z:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    goto :goto_0
.end method

.method public addI16(Landroid/support/v8/renderscript/Short4;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Short4;

    .prologue
    .line 369
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short4;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short4;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short4;->y:S

    iget-short v4, p1, Landroid/support/v8/renderscript/Short4;->z:S

    iget-short v5, p1, Landroid/support/v8/renderscript/Short4;->w:S

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Short4;-><init>(SSSS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short4;)V

    .line 377
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 374
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 375
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    .line 376
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->w:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    goto :goto_0
.end method

.method public addI16(S)V
    .locals 3
    .param p1, "v"    # S

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 114
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 115
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public addI32(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 124
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 125
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 126
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 127
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public addI32(Landroid/support/v8/renderscript/Int2;)V
    .locals 4
    .param p1, "v"    # Landroid/support/v8/renderscript/Int2;

    .prologue
    .line 408
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int2;

    iget v2, p1, Landroid/support/v8/renderscript/Int2;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int2;->y:I

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Int2;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int2;)V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 413
    iget v0, p1, Landroid/support/v8/renderscript/Int2;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0
.end method

.method public addI32(Landroid/support/v8/renderscript/Int3;)V
    .locals 5
    .param p1, "v"    # Landroid/support/v8/renderscript/Int3;

    .prologue
    .line 416
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int3;

    iget v2, p1, Landroid/support/v8/renderscript/Int3;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int3;->y:I

    iget v4, p1, Landroid/support/v8/renderscript/Int3;->z:I

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Int3;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int3;)V

    .line 423
    :goto_0
    return-void

    .line 420
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 421
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 422
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->z:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0
.end method

.method public addI32(Landroid/support/v8/renderscript/Int4;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Int4;

    .prologue
    .line 425
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int4;

    iget v2, p1, Landroid/support/v8/renderscript/Int4;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int4;->y:I

    iget v4, p1, Landroid/support/v8/renderscript/Int4;->z:I

    iget v5, p1, Landroid/support/v8/renderscript/Int4;->w:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Int4;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int4;)V

    .line 433
    :goto_0
    return-void

    .line 429
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 430
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 431
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 432
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->w:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0
.end method

.method public addI64(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 131
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 144
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0, v6}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 136
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 137
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 138
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 139
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 140
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 141
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 142
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 143
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0
.end method

.method public addI64(Landroid/support/v8/renderscript/Long2;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Long2;

    .prologue
    .line 464
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long2;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Long2;->x:J

    iget-wide v4, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Long2;-><init>(JJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long2;)V

    .line 470
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 469
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto :goto_0
.end method

.method public addI64(Landroid/support/v8/renderscript/Long3;)V
    .locals 8
    .param p1, "v"    # Landroid/support/v8/renderscript/Long3;

    .prologue
    .line 472
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v7, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v0, Landroid/renderscript/Long3;

    iget-wide v1, p1, Landroid/support/v8/renderscript/Long3;->x:J

    iget-wide v3, p1, Landroid/support/v8/renderscript/Long3;->y:J

    iget-wide v5, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-direct/range {v0 .. v6}, Landroid/renderscript/Long3;-><init>(JJJ)V

    invoke-virtual {v7, v0}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long3;)V

    .line 479
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 477
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 478
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto :goto_0
.end method

.method public addI64(Landroid/support/v8/renderscript/Long4;)V
    .locals 10
    .param p1, "v"    # Landroid/support/v8/renderscript/Long4;

    .prologue
    .line 481
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v9, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v0, Landroid/renderscript/Long4;

    iget-wide v1, p1, Landroid/support/v8/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/support/v8/renderscript/Long4;->y:J

    iget-wide v5, p1, Landroid/support/v8/renderscript/Long4;->z:J

    iget-wide v7, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-direct/range {v0 .. v8}, Landroid/renderscript/Long4;-><init>(JJJJ)V

    invoke-virtual {v9, v0}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long4;)V

    .line 489
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 486
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 487
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    .line 488
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto :goto_0
.end method

.method public addI8(B)V
    .locals 3
    .param p1, "v"    # B

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aput-byte p1, v0, v1

    goto :goto_0
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte2;)V
    .locals 4
    .param p1, "v"    # Landroid/support/v8/renderscript/Byte2;

    .prologue
    .line 296
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Byte2;

    iget-byte v2, p1, Landroid/support/v8/renderscript/Byte2;->x:B

    iget-byte v3, p1, Landroid/support/v8/renderscript/Byte2;->y:B

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Byte2;-><init>(BB)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte2;)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte2;->x:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 301
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte2;->y:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto :goto_0
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte3;)V
    .locals 5
    .param p1, "v"    # Landroid/support/v8/renderscript/Byte3;

    .prologue
    .line 304
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Byte3;

    iget-byte v2, p1, Landroid/support/v8/renderscript/Byte3;->x:B

    iget-byte v3, p1, Landroid/support/v8/renderscript/Byte3;->y:B

    iget-byte v4, p1, Landroid/support/v8/renderscript/Byte3;->z:B

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Byte3;-><init>(BBB)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte3;)V

    .line 311
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte3;->x:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 309
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte3;->y:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 310
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte3;->z:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto :goto_0
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte4;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Byte4;

    .prologue
    .line 313
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Byte4;

    iget-byte v2, p1, Landroid/support/v8/renderscript/Byte4;->x:B

    iget-byte v3, p1, Landroid/support/v8/renderscript/Byte4;->y:B

    iget-byte v4, p1, Landroid/support/v8/renderscript/Byte4;->z:B

    iget-byte v5, p1, Landroid/support/v8/renderscript/Byte4;->w:B

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Byte4;-><init>(BBBB)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte4;)V

    .line 321
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->x:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 318
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->y:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 319
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->z:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    .line 320
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->w:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto :goto_0
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix2f;)V
    .locals 4
    .param p1, "v"    # Landroid/support/v8/renderscript/Matrix2f;

    .prologue
    .line 540
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v2, Landroid/renderscript/Matrix2f;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix2f;->getArray()[F

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/Matrix2f;-><init>([F)V

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix2f;)V

    .line 547
    :cond_0
    return-void

    .line 544
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 545
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix3f;)V
    .locals 4
    .param p1, "v"    # Landroid/support/v8/renderscript/Matrix3f;

    .prologue
    .line 530
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v2, Landroid/renderscript/Matrix3f;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix3f;->getArray()[F

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/Matrix3f;-><init>([F)V

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix3f;)V

    .line 537
    :cond_0
    return-void

    .line 534
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 535
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix4f;)V
    .locals 4
    .param p1, "v"    # Landroid/support/v8/renderscript/Matrix4f;

    .prologue
    .line 520
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v2, Landroid/renderscript/Matrix4f;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix4f;->getArray()[F

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/Matrix4f;-><init>([F)V

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 527
    :cond_0
    return-void

    .line 524
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 525
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addObj(Landroid/support/v8/renderscript/BaseObj;)V
    .locals 2
    .param p1, "obj"    # Landroid/support/v8/renderscript/BaseObj;

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 237
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    goto :goto_0

    .line 232
    :cond_1
    if-eqz p1, :cond_2

    .line 233
    invoke-virtual {p1, v1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0

    .line 235
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0
.end method

.method public addU16(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 158
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 169
    :goto_0
    return-void

    .line 162
    :cond_0
    if-ltz p1, :cond_1

    const v0, 0xffff

    if-le p1, v0, :cond_2

    .line 163
    :cond_1
    const-string v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldPacker.addU16( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 167
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 168
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public addU16(Landroid/support/v8/renderscript/Int2;)V
    .locals 4
    .param p1, "v"    # Landroid/support/v8/renderscript/Int2;

    .prologue
    .line 380
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int2;

    iget v2, p1, Landroid/support/v8/renderscript/Int2;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int2;->y:I

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Int2;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU16(Landroid/renderscript/Int2;)V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 385
    iget v0, p1, Landroid/support/v8/renderscript/Int2;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    goto :goto_0
.end method

.method public addU16(Landroid/support/v8/renderscript/Int3;)V
    .locals 5
    .param p1, "v"    # Landroid/support/v8/renderscript/Int3;

    .prologue
    .line 388
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int3;

    iget v2, p1, Landroid/support/v8/renderscript/Int3;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int3;->y:I

    iget v4, p1, Landroid/support/v8/renderscript/Int3;->z:I

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Int3;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU16(Landroid/renderscript/Int3;)V

    .line 395
    :goto_0
    return-void

    .line 392
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 393
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 394
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->z:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    goto :goto_0
.end method

.method public addU16(Landroid/support/v8/renderscript/Int4;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Int4;

    .prologue
    .line 397
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int4;

    iget v2, p1, Landroid/support/v8/renderscript/Int4;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int4;->y:I

    iget v4, p1, Landroid/support/v8/renderscript/Int4;->z:I

    iget v5, p1, Landroid/support/v8/renderscript/Int4;->w:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Int4;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU16(Landroid/renderscript/Int4;)V

    .line 405
    :goto_0
    return-void

    .line 401
    :cond_0
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 402
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 403
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    .line 404
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->w:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    goto :goto_0
.end method

.method public addU32(J)V
    .locals 6
    .param p1, "v"    # J

    .prologue
    const-wide/16 v4, 0xff

    .line 172
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 185
    :goto_0
    return-void

    .line 176
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 177
    :cond_1
    const-string v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldPacker.addU32( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 181
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 182
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x8

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 183
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 184
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public addU32(Landroid/support/v8/renderscript/Long2;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Long2;

    .prologue
    .line 436
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long2;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Long2;->x:J

    iget-wide v4, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Long2;-><init>(JJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU32(Landroid/renderscript/Long2;)V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 441
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    goto :goto_0
.end method

.method public addU32(Landroid/support/v8/renderscript/Long3;)V
    .locals 8
    .param p1, "v"    # Landroid/support/v8/renderscript/Long3;

    .prologue
    .line 444
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v7, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v0, Landroid/renderscript/Long3;

    iget-wide v1, p1, Landroid/support/v8/renderscript/Long3;->x:J

    iget-wide v3, p1, Landroid/support/v8/renderscript/Long3;->y:J

    iget-wide v5, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-direct/range {v0 .. v6}, Landroid/renderscript/Long3;-><init>(JJJ)V

    invoke-virtual {v7, v0}, Landroid/renderscript/FieldPacker;->addU32(Landroid/renderscript/Long3;)V

    .line 451
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 449
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 450
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    goto :goto_0
.end method

.method public addU32(Landroid/support/v8/renderscript/Long4;)V
    .locals 10
    .param p1, "v"    # Landroid/support/v8/renderscript/Long4;

    .prologue
    .line 453
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v9, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v0, Landroid/renderscript/Long4;

    iget-wide v1, p1, Landroid/support/v8/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/support/v8/renderscript/Long4;->y:J

    iget-wide v5, p1, Landroid/support/v8/renderscript/Long4;->z:J

    iget-wide v7, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-direct/range {v0 .. v8}, Landroid/renderscript/Long4;-><init>(JJJJ)V

    invoke-virtual {v9, v0}, Landroid/renderscript/FieldPacker;->addU32(Landroid/renderscript/Long4;)V

    .line 461
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 458
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 459
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 460
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    goto :goto_0
.end method

.method public addU64(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 188
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 205
    :goto_0
    return-void

    .line 192
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 193
    const-string v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldPacker.addU64( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    invoke-virtual {p0, v6}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    .line 197
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 198
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 199
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 200
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 201
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 202
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 203
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 204
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0
.end method

.method public addU64(Landroid/support/v8/renderscript/Long2;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Long2;

    .prologue
    .line 492
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long2;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Long2;->x:J

    iget-wide v4, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Long2;-><init>(JJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU64(Landroid/renderscript/Long2;)V

    .line 498
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 497
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    goto :goto_0
.end method

.method public addU64(Landroid/support/v8/renderscript/Long3;)V
    .locals 8
    .param p1, "v"    # Landroid/support/v8/renderscript/Long3;

    .prologue
    .line 500
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v7, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v0, Landroid/renderscript/Long3;

    iget-wide v1, p1, Landroid/support/v8/renderscript/Long3;->x:J

    iget-wide v3, p1, Landroid/support/v8/renderscript/Long3;->y:J

    iget-wide v5, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-direct/range {v0 .. v6}, Landroid/renderscript/Long3;-><init>(JJJ)V

    invoke-virtual {v7, v0}, Landroid/renderscript/FieldPacker;->addU64(Landroid/renderscript/Long3;)V

    .line 507
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 505
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 506
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    goto :goto_0
.end method

.method public addU64(Landroid/support/v8/renderscript/Long4;)V
    .locals 10
    .param p1, "v"    # Landroid/support/v8/renderscript/Long4;

    .prologue
    .line 509
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v9, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v0, Landroid/renderscript/Long4;

    iget-wide v1, p1, Landroid/support/v8/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/support/v8/renderscript/Long4;->y:J

    iget-wide v5, p1, Landroid/support/v8/renderscript/Long4;->z:J

    iget-wide v7, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-direct/range {v0 .. v8}, Landroid/renderscript/Long4;-><init>(JJJJ)V

    invoke-virtual {v9, v0}, Landroid/renderscript/FieldPacker;->addU64(Landroid/renderscript/Long4;)V

    .line 517
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 514
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 515
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    .line 516
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    goto :goto_0
.end method

.method public addU8(Landroid/support/v8/renderscript/Short2;)V
    .locals 4
    .param p1, "v"    # Landroid/support/v8/renderscript/Short2;

    .prologue
    .line 324
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short2;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short2;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short2;->y:S

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Short2;-><init>(SS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU8(Landroid/renderscript/Short2;)V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 329
    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    goto :goto_0
.end method

.method public addU8(Landroid/support/v8/renderscript/Short3;)V
    .locals 5
    .param p1, "v"    # Landroid/support/v8/renderscript/Short3;

    .prologue
    .line 332
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short3;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short3;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short3;->y:S

    iget-short v4, p1, Landroid/support/v8/renderscript/Short3;->z:S

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Short3;-><init>(SSS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU8(Landroid/renderscript/Short3;)V

    .line 339
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 337
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 338
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->z:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    goto :goto_0
.end method

.method public addU8(Landroid/support/v8/renderscript/Short4;)V
    .locals 6
    .param p1, "v"    # Landroid/support/v8/renderscript/Short4;

    .prologue
    .line 341
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short4;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short4;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short4;->y:S

    iget-short v4, p1, Landroid/support/v8/renderscript/Short4;->z:S

    iget-short v5, p1, Landroid/support/v8/renderscript/Short4;->w:S

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Short4;-><init>(SSSS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU8(Landroid/renderscript/Short4;)V

    .line 349
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 346
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 347
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    .line 348
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->w:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    goto :goto_0
.end method

.method public addU8(S)V
    .locals 3
    .param p1, "v"    # S

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-le p1, v0, :cond_2

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_2
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public align(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 68
    :cond_0
    return-void

    .line 61
    :cond_1
    if-lez p1, :cond_2

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    .line 62
    :cond_2
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argument must be a non-negative non-zero power of 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_3
    :goto_0
    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final getData()[B
    .locals 1

    .prologue
    .line 558
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v0

    .line 561
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->reset()V

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    goto :goto_0
.end method

.method public reset(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    if-lt p1, v0, :cond_2

    .line 83
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "out of range argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_2
    iput p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    goto :goto_0
.end method

.method public skip(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/support/v8/renderscript/FieldPacker;->shouldThunk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p1}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int v0, v1, p1

    .line 94
    .local v0, "res":I
    if-ltz v0, :cond_1

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    if-le v0, v1, :cond_2

    .line 95
    :cond_1
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out of range argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_2
    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    goto :goto_0
.end method
