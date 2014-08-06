.class public Lcom/google/android/pano/widget/SteppedProgressBar;
.super Landroid/view/View;
.source "SteppedProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;,
        Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA_CURRENT_STEP:I

.field private static final DEFAULT_TYPEFACE:Landroid/graphics/Typeface;

.field private static final KEY_BUNDLE:Ljava/lang/String;

.field private static final SUPPORTED_VERSIONS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

.field private final DEFAULT_ALPHA_OTHER_STEP:I

.field private mActiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

.field private mCurrentStep:I

.field private mCutPaint:Landroid/graphics/Paint;

.field private mDesiredHeight:F

.field private mDesiredWidth:F

.field final mDotRect:Landroid/graphics/RectF;

.field private mInactiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field final mScratchRect:Landroid/graphics/Rect;

.field private mStepLabels:[Ljava/lang/String;

.field private mTextHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/pano/widget/SteppedProgressBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".stateBundle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/pano/widget/SteppedProgressBar;->KEY_BUNDLE:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/pano/widget/SteppedProgressBar;->SUPPORTED_VERSIONS:Ljava/util/ArrayList;

    .line 81
    sget-object v0, Lcom/google/android/pano/widget/SteppedProgressBar;->SUPPORTED_VERSIONS:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/google/android/pano/widget/SteppedProgressBar;->SUPPORTED_VERSIONS:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    const/high16 v0, 0x424c0000

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULT_ALPHA_CURRENT_STEP:I

    .line 91
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULT_TYPEFACE:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/pano/widget/SteppedProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/pano/widget/SteppedProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x40800000

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    const/high16 v0, 0x414c0000

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULT_ALPHA_OTHER_STEP:I

    .line 95
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mStepLabels:[Ljava/lang/String;

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDotRect:Landroid/graphics/RectF;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mScratchRect:Landroid/graphics/Rect;

    .line 108
    iput v1, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDesiredWidth:F

    .line 109
    iput v1, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDesiredHeight:F

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mTextHeight:I

    .line 114
    iput v2, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mCurrentStep:I

    .line 126
    invoke-direct {p0}, Lcom/google/android/pano/widget/SteppedProgressBar;->loadValuesFromResources()Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/SteppedProgressBar;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    invoke-direct {p0}, Lcom/google/android/pano/widget/SteppedProgressBar;->initPaints()V

    .line 129
    return-void
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 328
    if-nez p2, :cond_0

    .line 379
    :goto_0
    return-void

    .line 332
    :cond_0
    sget-object v8, Lcom/google/android/pano/R$styleable;->SteppedProgressBar:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 334
    .local v7, "viewAttrs":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 336
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "ptr":I
    :goto_1
    const/4 v8, -0x1

    if-le v3, v8, :cond_3

    .line 337
    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 338
    .local v0, "attr":I
    packed-switch v0, :pswitch_data_0

    .line 336
    :cond_1
    :goto_2
    :pswitch_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 342
    :pswitch_1
    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 343
    .local v5, "styleId":I
    if-eqz v5, :cond_2

    .line 347
    sget-object v8, Lcom/google/android/pano/R$styleable;->TextAppearanceAlias:[I

    invoke-virtual {p1, v5, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 349
    .local v6, "textAttributes":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v6}, Lcom/google/android/pano/widget/SteppedProgressBar;->initPaintFromTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mActiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    .line 350
    iget-object v8, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mActiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    iget-object v8, v8, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 351
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 353
    .end local v6    # "textAttributes":Landroid/content/res/TypedArray;
    :cond_2
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "textAppearanceActive must reference a style."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 357
    .end local v5    # "styleId":I
    :pswitch_2
    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 358
    .restart local v5    # "styleId":I
    if-eqz v5, :cond_1

    .line 359
    sget-object v8, Lcom/google/android/pano/R$styleable;->TextAppearanceAlias:[I

    invoke-virtual {p1, v5, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 361
    .restart local v6    # "textAttributes":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v6}, Lcom/google/android/pano/widget/SteppedProgressBar;->initPaintFromTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mInactiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    .line 362
    iget-object v8, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mInactiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    iget-object v8, v8, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 363
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 367
    .end local v5    # "styleId":I
    .end local v6    # "textAttributes":Landroid/content/res/TypedArray;
    :pswitch_3
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 369
    .local v2, "labels":[Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 370
    array-length v8, v2

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mStepLabels:[Ljava/lang/String;

    .line 371
    const/4 v1, 0x0

    .local v1, "copyPtr":I
    :goto_3
    array-length v8, v2

    if-ge v1, v8, :cond_1

    .line 372
    iget-object v8, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mStepLabels:[Ljava/lang/String;

    aget-object v9, v2, v1

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 378
    .end local v0    # "attr":I
    .end local v1    # "copyPtr":I
    .end local v2    # "labels":[Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private initPaintFromTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v10, 0x0

    .line 280
    new-instance v5, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    invoke-direct {v5, v9, v10}, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;-><init>(Landroid/graphics/Paint;Z)V

    .line 282
    .local v5, "record":Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;
    const/4 v1, 0x0

    .line 283
    .local v1, "fontFamily":Ljava/lang/String;
    const/4 v2, 0x0

    .line 285
    .local v2, "fontStyle":I
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "ptr":I
    :goto_0
    const/4 v9, -0x1

    if-le v4, v9, :cond_0

    .line 286
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 288
    .local v0, "attr":I
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 289
    .local v3, "foo":Landroid/util/TypedValue;
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 291
    packed-switch v0, :pswitch_data_0

    .line 285
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 293
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    goto :goto_1

    .line 296
    :pswitch_1
    invoke-virtual {p2, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v5, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->allCapsOn:Z

    goto :goto_1

    .line 299
    :pswitch_2
    invoke-virtual {p2, v0, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 300
    .local v6, "textColor":I
    iget-object v9, v5, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 303
    .end local v6    # "textColor":I
    :pswitch_3
    const/4 v9, 0x0

    invoke-virtual {p2, v0, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 304
    .local v7, "textSize":F
    iget-object v9, v5, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    .line 307
    .end local v7    # "textSize":F
    :pswitch_4
    invoke-virtual {p2, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 308
    goto :goto_1

    .line 310
    :pswitch_5
    invoke-virtual {p2, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    goto :goto_1

    .line 316
    .end local v0    # "attr":I
    .end local v3    # "foo":Landroid/util/TypedValue;
    :cond_0
    if-nez v1, :cond_1

    .line 317
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v9, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v8

    .line 322
    .local v8, "typeface":Landroid/graphics/Typeface;
    :goto_2
    iget-object v9, v5, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 323
    iget-object v9, v5, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 324
    return-object v5

    .line 319
    .end local v8    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    .restart local v8    # "typeface":Landroid/graphics/Typeface;
    goto :goto_2

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initPaints()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 382
    iget-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mActiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-direct {v0, v1, v3}, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;-><init>(Landroid/graphics/Paint;Z)V

    iput-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mActiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    .line 384
    iget-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mActiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    iget-object v0, v0, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    iget-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mActiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    iget-object v0, v0, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    sget-object v1, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULT_TYPEFACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 386
    iget-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mActiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    iget-object v0, v0, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    sget v1, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULT_ALPHA_CURRENT_STEP:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 387
    iget-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mActiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    iget-object v0, v0, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SteppedProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 389
    iget-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mActiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    iget-object v0, v0, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mInactiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    if-nez v0, :cond_1

    .line 393
    new-instance v0, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mActiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    iget-object v2, v2, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-direct {v0, v1, v3}, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;-><init>(Landroid/graphics/Paint;Z)V

    iput-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mInactiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    .line 394
    iget-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mInactiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    iget-object v0, v0, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULT_ALPHA_OTHER_STEP:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 397
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mActiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    iget-object v1, v1, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mLinePaint:Landroid/graphics/Paint;

    .line 398
    iget-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SteppedProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/pano/R$integer;->progress_bar_line_alpha:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 400
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mCutPaint:Landroid/graphics/Paint;

    .line 401
    iget-object v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mCutPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 402
    return-void
.end method

.method private loadValuesFromResources()Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;
    .locals 9

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SteppedProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 407
    .local v8, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    sget v1, Lcom/google/android/pano/R$dimen;->progress_bar_step_separation:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sget v2, Lcom/google/android/pano/R$dimen;->active_indicator_radius:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sget v3, Lcom/google/android/pano/R$dimen;->inactive_indicator_radius:I

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sget v4, Lcom/google/android/pano/R$dimen;->text_to_line_distance:I

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sget v5, Lcom/google/android/pano/R$dimen;->progress_bar_line_width:I

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sget v6, Lcom/google/android/pano/R$dimen;->active_indicator_center_cut_radius:I

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sget v7, Lcom/google/android/pano/R$dimen;->label_width_max:I

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;-><init>(FFFFFFF)V

    return-object v0
.end method

.method private measureHeight(I)V
    .locals 5
    .param p1, "heightMeasureSpec"    # I

    .prologue
    .line 448
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 449
    .local v2, "suggestedHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 451
    .local v1, "mode":I
    sparse-switch v1, :sswitch_data_0

    .line 477
    :goto_0
    return-void

    .line 453
    :sswitch_0
    iput v2, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mMeasuredHeight:I

    goto :goto_0

    .line 456
    :sswitch_1
    const v2, 0x7fffffff

    .line 460
    :sswitch_2
    iget v3, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDesiredHeight:F

    const/high16 v4, -0x40800000

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 461
    iget v3, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mTextHeight:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/google/android/pano/widget/SteppedProgressBar;->measureText()V

    .line 465
    :cond_0
    iget-object v3, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    iget v3, v3, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->ACTIVE_INDICATOR_RADIUS:F

    const/high16 v4, 0x40000000

    mul-float v0, v3, v4

    .line 468
    .local v0, "activeIndicatorDiameter":F
    iget v3, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mTextHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    iget v4, v4, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->DISTANCE_TEXT_TO_LINE:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    iget v4, v4, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->LINE_WIDTH:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    iget v0, v4, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->LINE_WIDTH:F

    .end local v0    # "activeIndicatorDiameter":F
    :cond_1
    add-float/2addr v3, v0

    iput v3, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDesiredHeight:F

    .line 473
    :cond_2
    iget v3, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDesiredHeight:F

    int-to-float v4, v2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    iget v3, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDesiredHeight:F

    :goto_1
    float-to-int v3, v3

    iput v3, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mMeasuredHeight:I

    goto :goto_0

    :cond_3
    int-to-float v3, v2

    goto :goto_1

    .line 451
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private measureText()V
    .locals 7

    .prologue
    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v1, "allLabelsBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "ptr":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mStepLabels:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 483
    iget-object v3, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mStepLabels:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 485
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "allLabels":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mActiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    iget-object v3, v3, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mScratchRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 488
    iget-object v3, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mScratchRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mScratchRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mTextHeight:I

    .line 489
    return-void
.end method

.method private measureWidth(I)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 417
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 418
    .local v1, "suggestedWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 420
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 445
    :goto_0
    return-void

    .line 423
    :sswitch_0
    iput v1, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mMeasuredWidth:I

    goto :goto_0

    .line 427
    :sswitch_1
    const v1, 0x7fffffff

    .line 430
    :sswitch_2
    iget v2, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDesiredWidth:F

    const/high16 v3, -0x40800000

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 435
    iget-object v2, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mStepLabels:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    iget v3, v3, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->STEP_SEPARATION:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    iget v3, v3, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->LABEL_WIDTH_MAX:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDesiredWidth:F

    .line 441
    :cond_0
    iget v2, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDesiredWidth:F

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDesiredWidth:F

    :goto_1
    float-to-int v2, v2

    iput v2, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mMeasuredWidth:I

    goto :goto_0

    :cond_1
    int-to-float v2, v1

    goto :goto_1

    .line 420
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    iget v2, v2, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->STEP_SEPARATION:F

    const/high16 v4, 0x40000000

    div-float v15, v2, v4

    .line 143
    .local v15, "halfStep":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    iget v2, v2, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->LABEL_WIDTH_MAX:F

    const/high16 v4, 0x40000000

    div-float v13, v2, v4

    .line 144
    .local v13, "halfLabelWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    iget v2, v2, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->LINE_WIDTH:F

    const/high16 v4, 0x40000000

    div-float v14, v2, v4

    .line 145
    .local v14, "halfLineWidth":F
    move v3, v13

    .line 147
    .local v3, "offset":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mTextHeight:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/SteppedProgressBar;->measureText()V

    .line 151
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mTextHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    iget v4, v4, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->DISTANCE_TEXT_TO_LINE:F

    add-float/2addr v2, v4

    add-float v12, v2, v14

    .line 152
    .local v12, "distanceToLineCenter":F
    sub-float v4, v12, v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/SteppedProgressBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v5, v2, v3

    add-float v6, v12, v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 155
    const/16 v17, 0x0

    .local v17, "ptr":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mStepLabels:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_9

    .line 156
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mCurrentStep:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    const/16 v16, 0x1

    .line 157
    .local v16, "isActive":Z
    :goto_1
    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mActiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    .line 159
    .local v11, "currentPaint":Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;
    :goto_2
    iget-boolean v2, v11, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->allCapsOn:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mStepLabels:[Ljava/lang/String;

    aget-object v2, v2, v17

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    .line 161
    .local v19, "text":Ljava/lang/String;
    :goto_3
    iget-object v2, v11, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v4, 0x40000000

    div-float v21, v2, v4

    .line 162
    .local v21, "textWidth":F
    sub-float v10, v3, v13

    .line 165
    .local v10, "clipLeft":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    const/4 v2, 0x0

    add-float v4, v3, v13

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mTextHeight:I

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    sub-float v20, v3, v21

    .line 168
    .local v20, "textLeft":F
    cmpg-float v2, v20, v10

    if-gez v2, :cond_6

    .end local v10    # "clipLeft":F
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mTextHeight:I

    int-to-float v2, v2

    iget-object v4, v11, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 171
    .end local v20    # "textLeft":F
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 174
    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    iget v0, v2, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->ACTIVE_INDICATOR_RADIUS:F

    move/from16 v18, v0

    .line 176
    .local v18, "radius":F
    :goto_5
    if-nez v16, :cond_8

    const/16 v16, 0x1

    .line 177
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDotRect:Landroid/graphics/RectF;

    sub-float v4, v12, v18

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDotRect:Landroid/graphics/RectF;

    sub-float v4, v3, v18

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDotRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDotRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float v4, v4, v18

    add-float v4, v4, v18

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDotRect:Landroid/graphics/RectF;

    add-float v4, v3, v18

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 181
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDotRect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/high16 v7, 0x43b40000

    const/4 v8, 0x1

    iget-object v9, v11, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 183
    if-nez v16, :cond_2

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDotRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    iget v4, v4, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->ACTIVE_INDICATOR_CENTER_CUT_RADIUS:F

    sub-float v4, v12, v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDotRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    iget v4, v4, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->ACTIVE_INDICATOR_CENTER_CUT_RADIUS:F

    sub-float v4, v3, v4

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDotRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    iget v4, v4, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->ACTIVE_INDICATOR_CENTER_CUT_RADIUS:F

    add-float/2addr v4, v12

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDotRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    iget v4, v4, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->ACTIVE_INDICATOR_CENTER_CUT_RADIUS:F

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 190
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mDotRect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/high16 v7, 0x43b40000

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mCutPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 155
    :cond_2
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    iget v2, v2, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->STEP_SEPARATION:F

    add-float/2addr v3, v2

    goto/16 :goto_0

    .line 156
    .end local v11    # "currentPaint":Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;
    .end local v16    # "isActive":Z
    .end local v18    # "radius":F
    .end local v19    # "text":Ljava/lang/String;
    .end local v21    # "textWidth":F
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 157
    .restart local v16    # "isActive":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mInactiveStepText:Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;

    goto/16 :goto_2

    .line 159
    .restart local v11    # "currentPaint":Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->mStepLabels:[Ljava/lang/String;

    aget-object v19, v2, v17

    goto/16 :goto_3

    .restart local v10    # "clipLeft":F
    .restart local v19    # "text":Ljava/lang/String;
    .restart local v20    # "textLeft":F
    .restart local v21    # "textWidth":F
    :cond_6
    move/from16 v10, v20

    .line 168
    goto/16 :goto_4

    .line 174
    .end local v10    # "clipLeft":F
    .end local v20    # "textLeft":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/SteppedProgressBar;->DEFAULTS:Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;

    iget v0, v2, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->INACTIVE_INDICATOR_RADIUS:F

    move/from16 v18, v0

    goto/16 :goto_5

    .line 176
    .restart local v18    # "radius":F
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 193
    .end local v11    # "currentPaint":Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;
    .end local v16    # "isActive":Z
    .end local v18    # "radius":F
    .end local v19    # "text":Ljava/lang/String;
    .end local v21    # "textWidth":F
    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/SteppedProgressBar;->measureWidth(I)V

    .line 134
    invoke-direct {p0, p2}, Lcom/google/android/pano/widget/SteppedProgressBar;->measureHeight(I)V

    .line 135
    iget v0, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mMeasuredWidth:I

    iget v1, p0, Lcom/google/android/pano/widget/SteppedProgressBar;->mMeasuredHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/pano/widget/SteppedProgressBar;->setMeasuredDimension(II)V

    .line 136
    return-void
.end method
