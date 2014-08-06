.class Lcom/android/photos/data/MediaCache$NotifyImageReady;
.super Ljava/lang/Object;
.source "MediaCache.java"

# interfaces
.implements Lcom/android/photos/data/MediaCache$NotifyReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/data/MediaCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyImageReady"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/photos/data/MediaCache$ImageReady;

.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/android/photos/data/MediaCache$ImageReady;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/photos/data/MediaCache$ImageReady;

    .prologue
    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/android/photos/data/MediaCache$NotifyImageReady;->mCallback:Lcom/android/photos/data/MediaCache$ImageReady;

    .line 146
    return-void
.end method


# virtual methods
.method public isPrefetch()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/photos/data/MediaCache$NotifyImageReady;->mCallback:Lcom/android/photos/data/MediaCache$ImageReady;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyReady()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/photos/data/MediaCache$NotifyImageReady;->mCallback:Lcom/android/photos/data/MediaCache$ImageReady;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/photos/data/MediaCache$NotifyImageReady;->mCallback:Lcom/android/photos/data/MediaCache$ImageReady;

    iget-object v1, p0, Lcom/android/photos/data/MediaCache$NotifyImageReady;->mInputStream:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lcom/android/photos/data/MediaCache$ImageReady;->imageReady(Ljava/io/InputStream;)V

    .line 153
    :cond_0
    return-void
.end method

.method public setBytes([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 161
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/android/photos/data/MediaCache$NotifyImageReady;->mInputStream:Ljava/io/InputStream;

    .line 162
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/photos/data/MediaCache$NotifyImageReady;->mInputStream:Ljava/io/InputStream;

    .line 158
    return-void
.end method
