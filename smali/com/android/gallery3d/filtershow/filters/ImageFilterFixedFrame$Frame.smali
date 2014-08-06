.class Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;
.super Ljava/lang/Object;
.source "ImageFilterFixedFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Frame"
.end annotation


# instance fields
.field private mAlloc:Landroid/support/v8/renderscript/Allocation;

.field private mID:I

.field final synthetic this$0:Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 2
    .param p2, "frameID"    # I
    .param p3, "in"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;->this$0:Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;->mAlloc:Landroid/support/v8/renderscript/Allocation;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;->mID:I

    .line 63
    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;->mID:I

    .line 64
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;->mAlloc:Landroid/support/v8/renderscript/Allocation;

    .line 66
    return-void
.end method


# virtual methods
.method public destroyAlloc()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;->mAlloc:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;->mAlloc:Landroid/support/v8/renderscript/Allocation;

    .line 71
    return-void
.end method

.method public getAllocation()Landroid/support/v8/renderscript/Allocation;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;->mAlloc:Landroid/support/v8/renderscript/Allocation;

    return-object v0
.end method

.method public isEqual(ILandroid/support/v8/renderscript/Allocation;)Z
    .locals 6
    .param p1, "frameID"    # I
    .param p2, "in"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v4, 0x0

    .line 74
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;->mAlloc:Landroid/support/v8/renderscript/Allocation;

    if-eqz v5, :cond_0

    if-nez p2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v4

    .line 77
    :cond_1
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    .line 78
    .local v3, "inWidth":I
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    .line 80
    .local v2, "inHeight":I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;->mAlloc:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    .line 81
    .local v1, "frameWidth":I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;->mAlloc:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    .line 83
    .local v0, "frameHeight":I
    if-ne v1, v3, :cond_0

    if-ne v0, v2, :cond_0

    iget v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;->mID:I

    if-ne v5, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method
