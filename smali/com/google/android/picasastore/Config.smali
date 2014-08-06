.class public final Lcom/google/android/picasastore/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static sScreenNailSize:I

.field public static sThumbNailSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x280

    sput v0, Lcom/google/android/picasastore/Config;->sScreenNailSize:I

    .line 30
    const/16 v0, 0xc8

    sput v0, Lcom/google/android/picasastore/Config;->sThumbNailSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 34
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 36
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 39
    .local v0, "maxDimensionPixels":I
    div-int/lit8 v3, v0, 0x2

    sput v3, Lcom/google/android/picasastore/Config;->sScreenNailSize:I

    .line 40
    div-int/lit8 v3, v0, 0x5

    sput v3, Lcom/google/android/picasastore/Config;->sThumbNailSize:I

    .line 41
    return-void
.end method
