.class Lcom/android/photos/data/MediaCache$1;
.super Ljava/lang/Object;
.source "MediaCache.java"

# interfaces
.implements Lcom/android/photos/data/MediaCacheDatabase$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/data/MediaCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/data/MediaCache;


# direct methods
.method constructor <init>(Lcom/android/photos/data/MediaCache;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/photos/data/MediaCache$1;->this$0:Lcom/android/photos/data/MediaCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/net/Uri;JLcom/android/photos/data/MediaRetriever$MediaSize;Ljava/lang/Object;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "id"    # J
    .param p4, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;
    .param p5, "parameter"    # Ljava/lang/Object;

    .prologue
    .line 206
    move-object v1, p5

    check-cast v1, Lcom/android/photos/data/MediaCache$ProcessingJob;

    .line 207
    .local v1, "job":Lcom/android/photos/data/MediaCache$ProcessingJob;
    iget-object v2, p0, Lcom/android/photos/data/MediaCache$1;->this$0:Lcom/android/photos/data/MediaCache;

    # invokes: Lcom/android/photos/data/MediaCache;->createCacheImagePath(J)Ljava/io/File;
    invoke-static {v2, p2, p3}, Lcom/android/photos/data/MediaCache;->access$200(Lcom/android/photos/data/MediaCache;J)Ljava/io/File;

    move-result-object v0

    .line 208
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lcom/android/photos/data/MediaCache$1;->this$0:Lcom/android/photos/data/MediaCache;

    iget-object v3, v1, Lcom/android/photos/data/MediaCache$ProcessingJob;->lowResolution:Lcom/android/photos/data/MediaCache$NotifyImageReady;

    # invokes: Lcom/android/photos/data/MediaCache;->addNotification(Lcom/android/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V
    invoke-static {v2, v3, v0}, Lcom/android/photos/data/MediaCache;->access$300(Lcom/android/photos/data/MediaCache;Lcom/android/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V

    .line 209
    return-void
.end method
