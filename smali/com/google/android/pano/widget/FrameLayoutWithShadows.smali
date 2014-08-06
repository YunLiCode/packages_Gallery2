.class public Lcom/google/android/pano/widget/FrameLayoutWithShadows;
.super Landroid/widget/FrameLayout;
.source "FrameLayoutWithShadows.java"


# instance fields
.field private mShadowResourceId:I

.field private mShadowsAlpha:F

.field private rect:Landroid/graphics/Rect;

.field private rectf:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    .line 35
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mShadowsAlpha:F

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method private addDirectShadowView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shadow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 174
    sget v1, Lcom/google/android/pano/R$id;->ShadowView:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 175
    .local v0, "shadowView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 176
    new-instance v0, Landroid/view/View;

    .end local v0    # "shadowView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 177
    .restart local v0    # "shadowView":Landroid/view/View;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    sget v1, Lcom/google/android/pano/R$id;->ShadowView:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 179
    sget v1, Lcom/google/android/pano/R$id;->ShadowedView:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 180
    invoke-virtual {p0, v0, v2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->addView(Landroid/view/View;I)V

    .line 182
    :cond_0
    iget v1, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mShadowsAlpha:F

    const/high16 v2, 0x437f0000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 183
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 184
    return-object v0
.end method

.method public static findParentShadowsView(Landroid/view/View;)Lcom/google/android/pano/widget/FrameLayoutWithShadows;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 288
    .local v0, "nextView":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    if-nez v1, :cond_0

    .line 289
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 291
    :cond_0
    check-cast v0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    .end local v0    # "nextView":Landroid/view/ViewParent;
    return-object v0
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    if-nez p2, :cond_0

    .line 72
    :goto_0
    return-void

    .line 60
    :cond_0
    sget-object v4, Lcom/google/android/pano/R$styleable;->FrameLayoutWithShadows:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 62
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 63
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 64
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 65
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 63
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 67
    :pswitch_0
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mShadowResourceId:I

    goto :goto_2

    .line 71
    .end local v2    # "attr":I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private prune()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getChildCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 94
    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "shadow":Landroid/view/View;
    sget v4, Lcom/google/android/pano/R$id;->ShadowedView:I

    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 96
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 97
    invoke-static {v2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->findParentShadowsView(Landroid/view/View;)Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    move-result-object v4

    if-eq p0, v4, :cond_0

    .line 98
    sget v4, Lcom/google/android/pano/R$id;->ShadowView:I

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 99
    sget v4, Lcom/google/android/pano/R$id;->ShadowedView:I

    invoke-virtual {v1, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 100
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 101
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 107
    .end local v1    # "shadow":Landroid/view/View;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 108
    new-instance v4, Lcom/google/android/pano/widget/FrameLayoutWithShadows$1;

    invoke-direct {v4, p0, v3}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$1;-><init>(Lcom/google/android/pano/widget/FrameLayoutWithShadows;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->post(Ljava/lang/Runnable;)Z

    .line 118
    :cond_2
    return-void
.end method


# virtual methods
.method public addShadowView(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "shadow":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mShadowResourceId:I

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mShadowResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 205
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->addShadowView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public addShadowView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shadow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->addDirectShadowView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public layoutShadows()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f000000

    .line 126
    invoke-direct {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->prune()V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getChildCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 128
    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 129
    .local v4, "shadow":Landroid/view/View;
    sget v6, Lcom/google/android/pano/R$id;->ShadowedView:I

    invoke-virtual {v4, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 130
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 131
    invoke-static {v5}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->findParentShadowsView(Landroid/view/View;)Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    move-result-object v6

    if-eq p0, v6, :cond_1

    .line 127
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 134
    :cond_1
    const/4 v2, 0x0

    .line 135
    .local v2, "isImageMatrix":Z
    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    move-object v6, v5

    .line 138
    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .local v3, "matrix":Landroid/graphics/Matrix;
    move-object v6, v5

    .line 139
    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v0, :cond_2

    .line 141
    const/4 v2, 0x1

    .line 142
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 143
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 144
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 145
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 146
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 149
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 150
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 151
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 152
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 153
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v12

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 154
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v12

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 155
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v12

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 156
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v12

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 159
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    :cond_2
    if-nez v2, :cond_3

    .line 160
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 161
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 162
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 164
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 167
    :cond_3
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v6}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 168
    iget-object v6, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 171
    .end local v2    # "isImageMatrix":Z
    .end local v4    # "shadow":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 52
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->layoutShadows()V

    .line 54
    return-void
.end method

.method public setShadowsAlpha(F)V
    .locals 5
    .param p1, "alpha"    # F

    .prologue
    .line 75
    iput p1, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mShadowsAlpha:F

    .line 76
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 77
    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 78
    .local v2, "shadow":Landroid/view/View;
    sget v3, Lcom/google/android/pano/R$id;->ShadowedView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 81
    iget v3, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mShadowsAlpha:F

    const/high16 v4, 0x437f0000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 82
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 76
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 86
    .end local v2    # "shadow":Landroid/view/View;
    :cond_1
    return-void
.end method
