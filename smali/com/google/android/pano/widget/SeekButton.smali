.class public Lcom/google/android/pano/widget/SeekButton;
.super Landroid/view/View;
.source "SeekButton.java"


# instance fields
.field protected mAnimationStartTime:J

.field protected mAnimationState:I

.field protected mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

.field protected mDirection:I

.field private mIconHeight:I

.field private mIconWidth:I

.field private mMaxTextWidth:F

.field protected mPosition:F

.field protected mRate:F

.field protected mRect:Landroid/graphics/Rect;

.field protected mRes:Landroid/content/res/Resources;

.field protected mSeek:Landroid/graphics/drawable/Drawable;

.field protected mSeekActiveAlpha:I

.field protected mSeekAlpha:I

.field protected mSeekRes:I

.field protected mStretch:Landroid/graphics/drawable/Drawable;

.field protected mStretchRes:I

.field protected mTextColor:I

.field protected mTextPaint:Landroid/graphics/Paint;

.field protected mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationStartTime:J

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    .line 84
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRate:F

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    .line 111
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->initDefaults()V

    .line 112
    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/SeekButton;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method protected initDefaults()V
    .locals 1

    .prologue
    .line 390
    sget v0, Lcom/google/android/pano/R$drawable;->ic_playback_scrub_ff_normal_pano_dark:I

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    .line 391
    sget v0, Lcom/google/android/pano/R$drawable;->ic_playback_scrub_stretchline_normal_pano_dark:I

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mStretchRes:I

    .line 392
    const/16 v0, 0x66

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekAlpha:I

    .line 393
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekActiveAlpha:I

    .line 394
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    .line 395
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->updateDrawables()V

    .line 396
    return-void
.end method

.method protected initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 400
    .local v4, "res":Landroid/content/res/Resources;
    sget-object v6, Lcom/google/android/pano/R$styleable;->SeekButton:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 402
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    .line 403
    .local v5, "updateDrawables":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 404
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 405
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 406
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 404
    :goto_1
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 408
    :pswitch_1
    const/16 v6, 0x66

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekAlpha:I

    goto :goto_1

    .line 411
    :pswitch_2
    const/16 v6, 0xff

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekActiveAlpha:I

    goto :goto_1

    .line 414
    :pswitch_3
    const/4 v6, 0x1

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    goto :goto_1

    .line 417
    :pswitch_4
    sget v6, Lcom/google/android/pano/R$drawable;->ic_playback_scrub_ff_normal_pano_dark:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    .line 419
    const/4 v5, 0x1

    .line 420
    goto :goto_1

    .line 422
    :pswitch_5
    sget v6, Lcom/google/android/pano/R$drawable;->ic_playback_scrub_stretchline_normal_pano_dark:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/pano/widget/SeekButton;->mStretchRes:I

    .line 424
    const/4 v5, 0x1

    goto :goto_1

    .line 428
    .end local v2    # "attr":I
    :cond_0
    if-eqz v5, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->updateDrawables()V

    .line 431
    :cond_1
    return-void

    .line 406
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x2

    .line 256
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getWidth()I

    move-result v9

    .line 258
    .local v9, "w":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getHeight()I

    move-result v2

    .line 260
    .local v2, "h":I
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    div-int/lit8 v7, v10, 0x2

    .line 261
    .local v7, "stretchXStart":I
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 262
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingLeft()I

    move-result v10

    add-int/2addr v7, v10

    .line 267
    :goto_0
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    mul-int/lit8 v8, v10, 0x3

    .line 268
    .local v8, "stretchableWidth":I
    const/4 v1, 0x1

    .line 269
    .local v1, "directionMult":I
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    if-ne v10, v13, :cond_0

    .line 270
    const/4 v1, -0x1

    .line 273
    :cond_0
    mul-int v10, v1, v8

    int-to-float v10, v10

    iget v11, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int v6, v7, v10

    .line 274
    .local v6, "stretchX":I
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    int-to-float v10, v10

    const v11, 0x3dcccccd

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    float-to-int v4, v10

    .line 278
    .local v4, "overlap":I
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    div-int/lit8 v10, v10, 0x2

    sub-int v3, v10, v4

    .line 281
    .local v3, "iconOffset":I
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    cmpl-float v10, v10, v12

    if-nez v10, :cond_3

    .line 282
    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekAlpha:I

    .line 287
    .local v0, "alpha":I
    :goto_1
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    cmpl-float v10, v10, v12

    if-eqz v10, :cond_1

    .line 288
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mStretch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 289
    .local v5, "stretchHeight":I
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    div-int/lit8 v11, v2, 0x2

    div-int/lit8 v12, v5, 0x2

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 290
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    div-int/lit8 v11, v2, 0x2

    div-int/lit8 v12, v5, 0x2

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 291
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    if-ne v10, v13, :cond_4

    .line 292
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    add-int v11, v6, v3

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 293
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingRight()I

    move-result v11

    sub-int v11, v9, v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 299
    :goto_2
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mStretch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 300
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mStretch:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 301
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mStretch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 304
    .end local v5    # "stretchHeight":I
    :cond_1
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 305
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/ClipDrawable;->setAlpha(I)V

    .line 307
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    if-ne v10, v13, :cond_5

    .line 308
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v11, v6, v4

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 309
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    add-int v11, v6, v3

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 314
    :goto_3
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingTop()I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 315
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 317
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

    iget-object v11, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/ClipDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 318
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/ClipDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 320
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    if-ne v10, v13, :cond_6

    .line 321
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v11, v6, v3

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 322
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    add-int v11, v6, v4

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 328
    :goto_4
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 329
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 330
    return-void

    .line 264
    .end local v0    # "alpha":I
    .end local v1    # "directionMult":I
    .end local v3    # "iconOffset":I
    .end local v4    # "overlap":I
    .end local v6    # "stretchX":I
    .end local v8    # "stretchableWidth":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingRight()I

    move-result v10

    add-int/2addr v7, v10

    .line 265
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getWidth()I

    move-result v10

    sub-int v7, v10, v7

    goto/16 :goto_0

    .line 284
    .restart local v1    # "directionMult":I
    .restart local v3    # "iconOffset":I
    .restart local v4    # "overlap":I
    .restart local v6    # "stretchX":I
    .restart local v8    # "stretchableWidth":I
    :cond_3
    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekActiveAlpha:I

    .restart local v0    # "alpha":I
    goto/16 :goto_1

    .line 295
    .restart local v5    # "stretchHeight":I
    :cond_4
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingLeft()I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 296
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v11, v6, v3

    iput v11, v10, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2

    .line 311
    .end local v5    # "stretchHeight":I
    :cond_5
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v11, v6, v3

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 312
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    add-int v11, v6, v4

    iput v11, v10, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 324
    :cond_6
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v11, v6, v4

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 325
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    add-int v11, v6, v3

    iput v11, v10, Landroid/graphics/Rect;->right:I

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 334
    iget-object v9, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    .line 335
    iget-object v9, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iput v9, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    .line 337
    iget-object v9, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    const-string v10, "5.5x"

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    iput v9, p0, Lcom/google/android/pano/widget/SeekButton;->mMaxTextWidth:F

    .line 338
    iget-object v9, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Paint$FontMetrics;->top:F

    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float v5, v9, v10

    .line 340
    .local v5, "maxTextHeight":F
    iget v9, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    mul-int/lit8 v9, v9, 0x4

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mMaxTextWidth:F

    add-float/2addr v9, v10

    float-to-int v1, v9

    .line 342
    .local v1, "desiredWidth":I
    iget v9, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-int v0, v9

    .line 345
    .local v0, "desiredHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 346
    .local v7, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 347
    .local v8, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 348
    .local v3, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 353
    .local v4, "heightSize":I
    sparse-switch v7, :sswitch_data_0

    .line 364
    move v6, v1

    .line 368
    .local v6, "width":I
    :goto_0
    sparse-switch v3, :sswitch_data_1

    .line 379
    move v2, v0

    .line 383
    .local v2, "height":I
    :goto_1
    const-string v9, "SeekButton"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onMeasure: desiredWidth "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " desiredHeight "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " width "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " height "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p0, v6, v2}, Lcom/google/android/pano/widget/SeekButton;->setMeasuredDimension(II)V

    .line 387
    return-void

    .line 355
    .end local v2    # "height":I
    .end local v6    # "width":I
    :sswitch_0
    move v6, v8

    .line 356
    .restart local v6    # "width":I
    goto :goto_0

    .line 358
    .end local v6    # "width":I
    :sswitch_1
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 359
    .restart local v6    # "width":I
    goto :goto_0

    .line 361
    .end local v6    # "width":I
    :sswitch_2
    move v6, v1

    .line 362
    .restart local v6    # "width":I
    goto :goto_0

    .line 370
    :sswitch_3
    move v2, v4

    .line 371
    .restart local v2    # "height":I
    goto :goto_1

    .line 373
    .end local v2    # "height":I
    :sswitch_4
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 374
    .restart local v2    # "height":I
    goto :goto_1

    .line 376
    .end local v2    # "height":I
    :sswitch_5
    move v2, v0

    .line 377
    .restart local v2    # "height":I
    goto :goto_1

    .line 353
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 368
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x0 -> :sswitch_5
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public setButtonActiveAlpha(I)V
    .locals 1
    .param p1, "activeAlpha"    # I

    .prologue
    .line 183
    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekActiveAlpha:I

    if-eq v0, p1, :cond_0

    .line 184
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekActiveAlpha:I

    .line 185
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->postInvalidate()V

    .line 187
    :cond_0
    return-void
.end method

.method public setButtonAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 171
    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekAlpha:I

    if-eq v0, p1, :cond_0

    .line 172
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekAlpha:I

    .line 173
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->postInvalidate()V

    .line 175
    :cond_0
    return-void
.end method

.method public setResource(II)V
    .locals 5
    .param p1, "which"    # I
    .param p2, "resourceId"    # I

    .prologue
    .line 123
    packed-switch p1, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget v4, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    if-eq v4, p2, :cond_0

    .line 126
    iput p2, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    .line 127
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->updateDrawables()V

    .line 128
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->postInvalidate()V

    goto :goto_0

    .line 132
    :pswitch_1
    iget v4, p0, Lcom/google/android/pano/widget/SeekButton;->mStretchRes:I

    if-eq v4, p2, :cond_0

    .line 133
    iput p2, p0, Lcom/google/android/pano/widget/SeekButton;->mStretchRes:I

    .line 134
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->updateDrawables()V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->postInvalidate()V

    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v4, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 140
    .local v2, "color":I
    iget v4, p0, Lcom/google/android/pano/widget/SeekButton;->mTextColor:I

    if-eq v4, v2, :cond_0

    .line 141
    iput v2, p0, Lcom/google/android/pano/widget/SeekButton;->mTextColor:I

    .line 142
    iget-object v4, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->postInvalidate()V

    goto :goto_0

    .line 147
    .end local v2    # "color":I
    :pswitch_3
    iget-object v4, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    and-int/lit16 v1, v4, 0xff

    .line 148
    .local v1, "alpha":I
    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/SeekButton;->setButtonAlpha(I)V

    goto :goto_0

    .line 151
    .end local v1    # "alpha":I
    :pswitch_4
    iget-object v4, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 152
    .local v0, "activeAlpha":I
    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/SeekButton;->setButtonActiveAlpha(I)V

    goto :goto_0

    .line 155
    .end local v0    # "activeAlpha":I
    :pswitch_5
    iget-object v4, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 156
    .local v3, "textSize":F
    iget v4, p0, Lcom/google/android/pano/widget/SeekButton;->mTextSize:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_0

    .line 157
    iput v3, p0, Lcom/google/android/pano/widget/SeekButton;->mTextSize:F

    .line 158
    iget-object v4, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 159
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->postInvalidate()V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected updateDrawables()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 434
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    .line 435
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    iget-object v2, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v1, p0, Lcom/google/android/pano/widget/SeekButton;->mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

    .line 438
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 440
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    .line 441
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 442
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mStretchRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mStretch:Landroid/graphics/drawable/Drawable;

    .line 443
    return-void

    .line 435
    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public updatePosition(F)V
    .locals 0
    .param p1, "position"    # F

    .prologue
    .line 210
    iput p1, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    .line 211
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->postInvalidate()V

    .line 212
    return-void
.end method
