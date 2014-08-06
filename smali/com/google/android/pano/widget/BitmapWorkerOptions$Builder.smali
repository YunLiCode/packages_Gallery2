.class public Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;
.super Ljava/lang/Object;
.source "BitmapWorkerOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/BitmapWorkerOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private mCacheFlag:I

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mPackageName:Ljava/lang/String;

.field private mResourceName:Ljava/lang/String;

.field private mResourceUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v0, 0x800

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mWidth:I

    .line 53
    iput v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mHeight:I

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mContext:Landroid/content/Context;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mCacheFlag:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 57
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .locals 8

    .prologue
    .line 60
    new-instance v1, Lcom/google/android/pano/widget/BitmapWorkerOptions;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/google/android/pano/widget/BitmapWorkerOptions;-><init>(Lcom/google/android/pano/widget/BitmapWorkerOptions$1;)V

    .line 62
    .local v1, "options":Lcom/google/android/pano/widget/BitmapWorkerOptions;
    iget-object v4, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 63
    new-instance v4, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v4}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    # setter for: Lcom/google/android/pano/widget/BitmapWorkerOptions;->mIconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1, v4}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->access$102(Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/content/Intent$ShortcutIconResource;)Landroid/content/Intent$ShortcutIconResource;

    .line 64
    # getter for: Lcom/google/android/pano/widget/BitmapWorkerOptions;->mIconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->access$100(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mPackageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 65
    # getter for: Lcom/google/android/pano/widget/BitmapWorkerOptions;->mIconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->access$100(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mResourceName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 68
    :cond_0
    iget v4, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mWidth:I

    iget v5, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 69
    .local v0, "largestDim":I
    const/16 v4, 0x800

    if-le v0, v4, :cond_1

    .line 70
    const-wide/high16 v4, 0x40a0000000000000L

    int-to-double v6, v0

    div-double v2, v4, v6

    .line 71
    .local v2, "scale":D
    iget v4, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mWidth:I

    .line 72
    iget v4, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mHeight:I

    .line 75
    .end local v2    # "scale":D
    :cond_1
    iget-object v4, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mResourceUri:Landroid/net/Uri;

    # setter for: Lcom/google/android/pano/widget/BitmapWorkerOptions;->mResourceUri:Landroid/net/Uri;
    invoke-static {v1, v4}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->access$202(Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/net/Uri;)Landroid/net/Uri;

    .line 76
    iget v4, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mWidth:I

    # setter for: Lcom/google/android/pano/widget/BitmapWorkerOptions;->mWidth:I
    invoke-static {v1, v4}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->access$302(Lcom/google/android/pano/widget/BitmapWorkerOptions;I)I

    .line 77
    iget v4, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mHeight:I

    # setter for: Lcom/google/android/pano/widget/BitmapWorkerOptions;->mHeight:I
    invoke-static {v1, v4}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->access$402(Lcom/google/android/pano/widget/BitmapWorkerOptions;I)I

    .line 78
    iget-object v4, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mContext:Landroid/content/Context;

    # setter for: Lcom/google/android/pano/widget/BitmapWorkerOptions;->mContext:Landroid/content/Context;
    invoke-static {v1, v4}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->access$502(Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/content/Context;)Landroid/content/Context;

    .line 79
    iget v4, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mCacheFlag:I

    # setter for: Lcom/google/android/pano/widget/BitmapWorkerOptions;->mCacheFlag:I
    invoke-static {v1, v4}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->access$602(Lcom/google/android/pano/widget/BitmapWorkerOptions;I)I

    .line 80
    iget-object v4, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    # setter for: Lcom/google/android/pano/widget/BitmapWorkerOptions;->mBitmapConfig:Landroid/graphics/Bitmap$Config;
    invoke-static {v1, v4}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->access$702(Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;

    .line 81
    # getter for: Lcom/google/android/pano/widget/BitmapWorkerOptions;->mIconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->access$100(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    if-nez v4, :cond_2

    # getter for: Lcom/google/android/pano/widget/BitmapWorkerOptions;->mResourceUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->access$200(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_2

    .line 82
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Both Icon and ResourceUri are null"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 84
    :cond_2
    return-object v1
.end method

.method public resource(Landroid/net/Uri;)Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;
    .locals 0
    .param p1, "resourceUri"    # Landroid/net/Uri;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mResourceUri:Landroid/net/Uri;

    .line 101
    return-object p0
.end method

.method public width(I)Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 105
    if-lez p1, :cond_0

    .line 106
    iput p1, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->mWidth:I

    .line 110
    return-object p0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set width to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
