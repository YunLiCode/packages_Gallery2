.class public Lcom/android/gallery3d/filtershow/category/CategoryTrack;
.super Landroid/widget/LinearLayout;
.source "CategoryTrack.java"


# instance fields
.field private mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

.field private mElemSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/R$styleable;->CategoryTrack:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->mElemSize:I

    .line 35
    return-void
.end method


# virtual methods
.method public fillContent()V
    .locals 5

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->removeAllViews()V

    .line 46
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->getCount()I

    move-result v1

    .line 47
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 48
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, p0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 49
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2, v0}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->addView(Landroid/view/View;I)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->requestLayout()V

    .line 52
    return-void
.end method

.method public setAdapter(Lcom/android/gallery3d/filtershow/category/CategoryAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    iget v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->mElemSize:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->setItemWidth(I)V

    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->setItemHeight(I)V

    .line 41
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->fillContent()V

    .line 42
    return-void
.end method
