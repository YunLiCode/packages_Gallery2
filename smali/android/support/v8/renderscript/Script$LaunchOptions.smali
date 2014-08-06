.class public final Landroid/support/v8/renderscript/Script$LaunchOptions;
.super Ljava/lang/Object;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchOptions"
.end annotation


# instance fields
.field protected strategy:I

.field protected xend:I

.field protected xstart:I

.field protected yend:I

.field protected ystart:I

.field protected zend:I

.field protected zstart:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 448
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->xstart:I

    .line 450
    iput v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->ystart:I

    .line 451
    iput v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->xend:I

    .line 452
    iput v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->yend:I

    .line 453
    iput v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->zstart:I

    .line 454
    iput v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->zend:I

    return-void
.end method


# virtual methods
.method public getXEnd()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->xend:I

    return v0
.end method

.method public getXStart()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->xstart:I

    return v0
.end method

.method public getYEnd()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->yend:I

    return v0
.end method

.method public getYStart()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->ystart:I

    return v0
.end method

.method public getZEnd()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->zend:I

    return v0
.end method

.method public getZStart()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->zstart:I

    return v0
.end method

.method public setX(II)Landroid/support/v8/renderscript/Script$LaunchOptions;
    .locals 2
    .param p1, "xstartArg"    # I
    .param p2, "xendArg"    # I

    .prologue
    .line 459
    if-ltz p1, :cond_0

    if-gt p2, p1, :cond_1

    .line 460
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_1
    iput p1, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->xstart:I

    .line 463
    iput p2, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->xend:I

    .line 464
    return-object p0
.end method

.method public setY(II)Landroid/support/v8/renderscript/Script$LaunchOptions;
    .locals 2
    .param p1, "ystartArg"    # I
    .param p2, "yendArg"    # I

    .prologue
    .line 468
    if-ltz p1, :cond_0

    if-gt p2, p1, :cond_1

    .line 469
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_1
    iput p1, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->ystart:I

    .line 472
    iput p2, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->yend:I

    .line 473
    return-object p0
.end method

.method public setZ(II)Landroid/support/v8/renderscript/Script$LaunchOptions;
    .locals 2
    .param p1, "zstartArg"    # I
    .param p2, "zendArg"    # I

    .prologue
    .line 477
    if-ltz p1, :cond_0

    if-gt p2, p1, :cond_1

    .line 478
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_1
    iput p1, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->zstart:I

    .line 481
    iput p2, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->zend:I

    .line 482
    return-object p0
.end method
