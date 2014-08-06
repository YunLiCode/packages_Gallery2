.class public Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;
.super Ljava/lang/Object;
.source "RedEyeCandidate.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/filters/FilterPoint;


# instance fields
.field mBounds:Landroid/graphics/RectF;

.field mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;->mRect:Landroid/graphics/RectF;

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;->mBounds:Landroid/graphics/RectF;

    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;->mRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public intersect(Landroid/graphics/RectF;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method
