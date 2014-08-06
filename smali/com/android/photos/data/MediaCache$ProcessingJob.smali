.class Lcom/android/photos/data/MediaCache$ProcessingJob;
.super Ljava/lang/Object;
.source "MediaCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/data/MediaCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessingJob"
.end annotation


# instance fields
.field public complete:Lcom/android/photos/data/MediaCache$NotifyReady;

.field public contentUri:Landroid/net/Uri;

.field public lowResolution:Lcom/android/photos/data/MediaCache$NotifyImageReady;

.field public size:Lcom/android/photos/data/MediaRetriever$MediaSize;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;Lcom/android/photos/data/MediaCache$NotifyReady;Lcom/android/photos/data/MediaCache$NotifyImageReady;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;
    .param p3, "complete"    # Lcom/android/photos/data/MediaCache$NotifyReady;
    .param p4, "lowResolution"    # Lcom/android/photos/data/MediaCache$NotifyImageReady;

    .prologue
    .line 173
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/android/photos/data/MediaCache$ProcessingJob;->contentUri:Landroid/net/Uri;

    .line 175
    iput-object p2, p0, Lcom/android/photos/data/MediaCache$ProcessingJob;->size:Lcom/android/photos/data/MediaRetriever$MediaSize;

    .line 176
    iput-object p3, p0, Lcom/android/photos/data/MediaCache$ProcessingJob;->complete:Lcom/android/photos/data/MediaCache$NotifyReady;

    .line 177
    iput-object p4, p0, Lcom/android/photos/data/MediaCache$ProcessingJob;->lowResolution:Lcom/android/photos/data/MediaCache$NotifyImageReady;

    .line 178
    return-void
.end method
