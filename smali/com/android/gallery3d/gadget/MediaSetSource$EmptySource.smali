.class Lcom/android/gallery3d/gadget/MediaSetSource$EmptySource;
.super Ljava/lang/Object;
.source "MediaSetSource.java"

# interfaces
.implements Lcom/android/gallery3d/gadget/WidgetSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/gadget/MediaSetSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptySource"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/gadget/MediaSetSource$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/gadget/MediaSetSource$1;

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/android/gallery3d/gadget/MediaSetSource$EmptySource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public getContentUri(I)Landroid/net/Uri;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 221
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 216
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reload()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public setContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/gallery3d/data/ContentListener;

    .prologue
    .line 225
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method
