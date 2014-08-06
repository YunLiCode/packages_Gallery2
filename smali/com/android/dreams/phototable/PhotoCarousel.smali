.class public Lcom/android/dreams/phototable/PhotoCarousel;
.super Landroid/widget/FrameLayout;
.source "PhotoCarousel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;,
        Lcom/android/dreams/phototable/PhotoCarousel$Flipper;
    }
.end annotation


# instance fields
.field private final mBitmapLoaders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapQueueLimit:I

.field private final mBitmapStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mDropPeriod:I

.field private final mFlipDuration:I

.field private final mFlipper:Lcom/android/dreams/phototable/PhotoCarousel$Flipper;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mLastFlipTime:J

.field private mLongSide:I

.field private mOrientation:I

.field private final mPanel:[Landroid/view/View;

.field private final mPhotoSource:Lcom/android/dreams/phototable/PhotoSourcePlexor;

.field private mShortSide:I

.field private mSpinner:Landroid/view/View;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "as"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoCarousel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 99
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mDropPeriod:I

    .line 100
    const v1, 0x7f0d0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mBitmapQueueLimit:I

    .line 101
    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mFlipDuration:I

    .line 102
    new-instance v1, Lcom/android/dreams/phototable/PhotoSourcePlexor;

    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoCarousel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoCarousel;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "FlipperDream"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/dreams/phototable/PhotoSourcePlexor;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSourcePlexor;

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mBitmapStore:Ljava/util/HashMap;

    .line 105
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mBitmapQueue:Ljava/util/LinkedList;

    .line 106
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mBitmapLoaders:Ljava/util/LinkedList;

    .line 108
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    .line 109
    new-instance v1, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;

    invoke-direct {v1, p0}, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;-><init>(Lcom/android/dreams/phototable/PhotoCarousel;)V

    iput-object v1, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mFlipper:Lcom/android/dreams/phototable/PhotoCarousel$Flipper;

    .line 111
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/dreams/phototable/PhotoCarousel$1;

    invoke-direct {v2, p0}, Lcom/android/dreams/phototable/PhotoCarousel$1;-><init>(Lcom/android/dreams/phototable/PhotoCarousel;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/dreams/phototable/PhotoCarousel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoCarousel;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/dreams/phototable/PhotoCarousel;->maybeLoadMore()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/dreams/phototable/PhotoCarousel;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoCarousel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mBitmapQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/dreams/phototable/PhotoCarousel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoCarousel;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mShortSide:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/dreams/phototable/PhotoCarousel;)Lcom/android/dreams/phototable/PhotoSourcePlexor;
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoCarousel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSourcePlexor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dreams/phototable/PhotoCarousel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoCarousel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mSpinner:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dreams/phototable/PhotoCarousel;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoCarousel;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mLastFlipTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/dreams/phototable/PhotoCarousel;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoCarousel;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mLastFlipTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/dreams/phototable/PhotoCarousel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoCarousel;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mDropPeriod:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/dreams/phototable/PhotoCarousel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoCarousel;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/dreams/phototable/PhotoCarousel;->changePhoto()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/dreams/phototable/PhotoCarousel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoCarousel;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/dreams/phototable/PhotoCarousel;->canFlip()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/dreams/phototable/PhotoCarousel;)Lcom/android/dreams/phototable/PhotoCarousel$Flipper;
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoCarousel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mFlipper:Lcom/android/dreams/phototable/PhotoCarousel$Flipper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/dreams/phototable/PhotoCarousel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoCarousel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/PhotoCarousel;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/dreams/phototable/PhotoCarousel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/PhotoCarousel;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mLongSide:I

    return v0
.end method

.method private canFlip()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mBitmapStore:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/android/dreams/phototable/PhotoCarousel;->getBackface()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private changePhoto()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 184
    iget-object v7, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mBitmapQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 185
    .local v4, "photo":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/android/dreams/phototable/PhotoCarousel;->getBackface()Landroid/widget/ImageView;

    move-result-object v0

    .line 187
    .local v0, "destination":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 188
    .local v5, "width":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 189
    .local v1, "height":I
    if-le v5, v1, :cond_0

    move v3, v6

    .line 191
    .local v3, "orientation":I
    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    const v7, 0x7f0a001d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 193
    const v7, 0x7f0a001c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 194
    const v7, 0x7f0a001b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 195
    invoke-direct {p0, v0}, Lcom/android/dreams/phototable/PhotoCarousel;->setScaleType(Landroid/view/View;)V

    .line 197
    iget-object v7, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mBitmapStore:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 198
    .local v2, "old":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSourcePlexor;

    invoke-virtual {v7, v2}, Lcom/android/dreams/phototable/PhotoSourcePlexor;->recycle(Landroid/graphics/Bitmap;)V

    .line 202
    .end local v0    # "destination":Landroid/widget/ImageView;
    .end local v1    # "height":I
    .end local v2    # "old":Landroid/graphics/Bitmap;
    .end local v3    # "orientation":I
    .end local v5    # "width":I
    :goto_1
    return v6

    .line 189
    .restart local v0    # "destination":Landroid/widget/ImageView;
    .restart local v1    # "height":I
    .restart local v5    # "width":I
    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    .line 202
    .end local v0    # "destination":Landroid/widget/ImageView;
    .end local v1    # "height":I
    .end local v5    # "width":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private getBackface()Landroid/widget/ImageView;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    aget-object v0, v0, v2

    :goto_0
    check-cast v0, Landroid/widget/ImageView;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private lockTo180(F)F
    .locals 3
    .param p1, "a"    # F

    .prologue
    const/high16 v2, 0x43340000

    .line 123
    div-float v0, p1, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v2

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 304
    return-void
.end method

.method private maybeLoadMore()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 158
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mBitmapLoaders:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 159
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mBitmapLoaders:Ljava/util/LinkedList;

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 160
    .local v0, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;

    .line 162
    .local v1, "loader":Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;
    invoke-virtual {v1}, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_0

    .line 163
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 168
    .end local v0    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;>;"
    .end local v1    # "loader":Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;
    :cond_1
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mBitmapLoaders:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mBitmapQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mBitmapQueueLimit:I

    if-ge v3, v4, :cond_2

    .line 169
    new-instance v2, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;

    invoke-direct {v2, p0}, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;-><init>(Lcom/android/dreams/phototable/PhotoCarousel;)V

    .line 170
    .local v2, "task":Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mBitmapLoaders:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 171
    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 173
    .end local v2    # "task":Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;
    :cond_2
    return-void
.end method

.method private setScaleType(Landroid/view/View;)V
    .locals 5
    .param p1, "photo"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0a001d

    .line 207
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 208
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 209
    .local v1, "orientation":I
    const v3, 0x7f0a001c

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 210
    .local v2, "width":I
    const v3, 0x7f0a001b

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 212
    .local v0, "height":I
    iget v3, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mWidth:I

    if-ge v2, v3, :cond_0

    iget v3, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mHeight:I

    if-ge v0, v3, :cond_0

    .line 213
    const-string v3, "too small: FIT_CENTER"

    invoke-direct {p0, v3}, Lcom/android/dreams/phototable/PhotoCarousel;->log(Ljava/lang/String;)V

    .line 214
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "photo":Landroid/view/View;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 225
    .end local v0    # "height":I
    .end local v1    # "orientation":I
    .end local v2    # "width":I
    :goto_0
    return-void

    .line 215
    .restart local v0    # "height":I
    .restart local v1    # "orientation":I
    .restart local v2    # "width":I
    .restart local p1    # "photo":Landroid/view/View;
    :cond_0
    iget v3, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mOrientation:I

    if-ne v1, v3, :cond_1

    .line 216
    const-string v3, "orientations match: CENTER_CROP"

    invoke-direct {p0, v3}, Lcom/android/dreams/phototable/PhotoCarousel;->log(Ljava/lang/String;)V

    .line 217
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "photo":Landroid/view/View;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 219
    .restart local p1    # "photo":Landroid/view/View;
    :cond_1
    const-string v3, "orientations do not match: CENTER_INSIDE"

    invoke-direct {p0, v3}, Lcom/android/dreams/phototable/PhotoCarousel;->log(Ljava/lang/String;)V

    .line 220
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "photo":Landroid/view/View;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 223
    .end local v0    # "height":I
    .end local v1    # "orientation":I
    .end local v2    # "width":I
    .restart local p1    # "photo":Landroid/view/View;
    :cond_2
    const-string v3, "no tag!"

    invoke-direct {p0, v3}, Lcom/android/dreams/phototable/PhotoCarousel;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private wrap360(F)F
    .locals 3
    .param p1, "a"    # F

    .prologue
    const/high16 v2, 0x43b40000

    .line 127
    div-float v0, p1, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float v0, p1, v0

    return v0
.end method


# virtual methods
.method public flip(F)V
    .locals 11
    .param p1, "sgn"    # F

    .prologue
    const/high16 v10, 0x43340000

    const/high16 v8, 0x3f800000

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 228
    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 229
    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 231
    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->getRotationY()F

    move-result v5

    .line 232
    .local v5, "frontY":F
    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroid/view/View;->getRotationY()F

    move-result v2

    .line 233
    .local v2, "backY":F
    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v3

    .line 234
    .local v3, "frontA":F
    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 236
    .local v0, "backA":F
    invoke-direct {p0, v5}, Lcom/android/dreams/phototable/PhotoCarousel;->wrap360(F)F

    move-result v5

    .line 237
    invoke-direct {p0, v2}, Lcom/android/dreams/phototable/PhotoCarousel;->wrap360(F)F

    move-result v2

    .line 239
    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    aget-object v6, v6, v7

    invoke-virtual {v6, v5}, Landroid/view/View;->setRotationY(F)V

    .line 240
    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    aget-object v6, v6, v9

    invoke-virtual {v6, v2}, Landroid/view/View;->setRotationY(F)V

    .line 242
    mul-float v6, p1, v10

    add-float/2addr v6, v5

    invoke-direct {p0, v6}, Lcom/android/dreams/phototable/PhotoCarousel;->lockTo180(F)F

    move-result v5

    .line 243
    mul-float v6, p1, v10

    add-float/2addr v6, v2

    invoke-direct {p0, v6}, Lcom/android/dreams/phototable/PhotoCarousel;->lockTo180(F)F

    move-result v2

    .line 244
    sub-float v3, v8, v3

    .line 245
    sub-float v0, v8, v0

    .line 248
    const/4 v2, 0x0

    move v5, v2

    .line 250
    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mFlipDuration:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 254
    .local v4, "frontAnim":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mFlipDuration:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/dreams/phototable/PhotoCarousel$2;

    invoke-direct {v7, p0}, Lcom/android/dreams/phototable/PhotoCarousel$2;-><init>(Lcom/android/dreams/phototable/PhotoCarousel;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 265
    .local v1, "backAnim":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 266
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 267
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    const/4 v1, 0x0

    const v2, 0x7f0a0086

    invoke-virtual {p0, v2}, Lcom/android/dreams/phototable/PhotoCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 272
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    const/4 v1, 0x1

    const v2, 0x7f0a0087

    invoke-virtual {p0, v2}, Lcom/android/dreams/phototable/PhotoCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 273
    const v0, 0x7f0a0088

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/PhotoCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mSpinner:Landroid/view/View;

    .line 274
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mFlipper:Lcom/android/dreams/phototable/PhotoCarousel$Flipper;

    invoke-virtual {v0}, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->run()V

    .line 275
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v1, 0x1

    .line 279
    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mHeight:I

    .line 280
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mWidth:I

    .line 282
    iget v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mWidth:I

    iget v2, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mHeight:I

    if-le v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mOrientation:I

    .line 284
    iget v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mWidth:I

    iget v2, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mLongSide:I

    .line 285
    iget v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mWidth:I

    iget v2, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mShortSide:I

    .line 288
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/android/dreams/phototable/PhotoCarousel;->setScaleType(Landroid/view/View;)V

    .line 289
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mPanel:[Landroid/view/View;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/dreams/phototable/PhotoCarousel;->setScaleType(Landroid/view/View;)V

    .line 291
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 292
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 297
    const/4 v0, 0x1

    return v0
.end method
