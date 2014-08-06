.class Lcom/android/photos/data/MediaCache$3;
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
    .line 221
    iput-object p1, p0, Lcom/android/photos/data/MediaCache$3;->this$0:Lcom/android/photos/data/MediaCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/net/Uri;JLcom/android/photos/data/MediaRetriever$MediaSize;Ljava/lang/Object;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "id"    # J
    .param p4, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;
    .param p5, "parameter"    # Ljava/lang/Object;

    .prologue
    .line 224
    iget-object v3, p0, Lcom/android/photos/data/MediaCache$3;->this$0:Lcom/android/photos/data/MediaCache;

    # invokes: Lcom/android/photos/data/MediaCache;->createCacheImagePath(J)Ljava/io/File;
    invoke-static {v3, p2, p3}, Lcom/android/photos/data/MediaCache;->access$200(Lcom/android/photos/data/MediaCache;J)Ljava/io/File;

    move-result-object v0

    .line 225
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 226
    iget-object v3, p0, Lcom/android/photos/data/MediaCache$3;->this$0:Lcom/android/photos/data/MediaCache;

    # getter for: Lcom/android/photos/data/MediaCache;->mCacheSizeLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/photos/data/MediaCache;->access$400(Lcom/android/photos/data/MediaCache;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 227
    :try_start_0
    iget-object v3, p0, Lcom/android/photos/data/MediaCache$3;->this$0:Lcom/android/photos/data/MediaCache;

    # getter for: Lcom/android/photos/data/MediaCache;->mCacheSize:J
    invoke-static {v3}, Lcom/android/photos/data/MediaCache;->access$500(Lcom/android/photos/data/MediaCache;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    .line 228
    check-cast p5, Ljava/lang/Long;

    .end local p5    # "parameter":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 229
    .local v1, "length":J
    iget-object v3, p0, Lcom/android/photos/data/MediaCache$3;->this$0:Lcom/android/photos/data/MediaCache;

    # -= operator for: Lcom/android/photos/data/MediaCache;->mCacheSize:J
    invoke-static {v3, v1, v2}, Lcom/android/photos/data/MediaCache;->access$522(Lcom/android/photos/data/MediaCache;J)J

    .line 230
    sget-object v3, Lcom/android/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    if-ne p4, v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/android/photos/data/MediaCache$3;->this$0:Lcom/android/photos/data/MediaCache;

    # -= operator for: Lcom/android/photos/data/MediaCache;->mThumbCacheSize:J
    invoke-static {v3, v1, v2}, Lcom/android/photos/data/MediaCache;->access$622(Lcom/android/photos/data/MediaCache;J)J

    .line 234
    .end local v1    # "length":J
    :cond_0
    monitor-exit v4

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
