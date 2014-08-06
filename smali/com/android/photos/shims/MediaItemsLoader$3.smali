.class Lcom/android/photos/shims/MediaItemsLoader$3;
.super Ljava/lang/Object;
.source "MediaItemsLoader.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/photos/shims/MediaItemsLoader;->loadInBackground()Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/shims/MediaItemsLoader;

.field final synthetic val$cursor:Landroid/database/MatrixCursor;

.field final synthetic val$mediaItems:Landroid/util/SparseArray;

.field final synthetic val$row:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/photos/shims/MediaItemsLoader;[Ljava/lang/Object;Landroid/database/MatrixCursor;Landroid/util/SparseArray;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/photos/shims/MediaItemsLoader$3;->this$0:Lcom/android/photos/shims/MediaItemsLoader;

    iput-object p2, p0, Lcom/android/photos/shims/MediaItemsLoader$3;->val$row:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/photos/shims/MediaItemsLoader$3;->val$cursor:Landroid/database/MatrixCursor;

    iput-object p4, p0, Lcom/android/photos/shims/MediaItemsLoader$3;->val$mediaItems:Landroid/util/SparseArray;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/android/gallery3d/data/MediaItem;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 117
    iget-object v2, p0, Lcom/android/photos/shims/MediaItemsLoader$3;->val$row:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 118
    iget-object v2, p0, Lcom/android/photos/shims/MediaItemsLoader$3;->val$row:[Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 119
    iget-object v2, p0, Lcom/android/photos/shims/MediaItemsLoader$3;->val$row:[Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    .line 120
    iget-object v2, p0, Lcom/android/photos/shims/MediaItemsLoader$3;->val$row:[Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 121
    iget-object v2, p0, Lcom/android/photos/shims/MediaItemsLoader$3;->val$row:[Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 122
    iget-object v2, p0, Lcom/android/photos/shims/MediaItemsLoader$3;->val$row:[Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 123
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    .line 124
    .local v1, "rawMediaType":I
    const/4 v0, 0x0

    .line 125
    .local v0, "mappedMediaType":I
    if-ne v1, v5, :cond_1

    .line 126
    const/4 v0, 0x1

    .line 130
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/photos/shims/MediaItemsLoader$3;->val$row:[Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 131
    iget-object v2, p0, Lcom/android/photos/shims/MediaItemsLoader$3;->val$row:[Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 133
    iget-object v2, p0, Lcom/android/photos/shims/MediaItemsLoader$3;->val$cursor:Landroid/database/MatrixCursor;

    iget-object v3, p0, Lcom/android/photos/shims/MediaItemsLoader$3;->val$row:[Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 134
    iget-object v2, p0, Lcom/android/photos/shims/MediaItemsLoader$3;->val$mediaItems:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 135
    return-void

    .line 127
    :cond_1
    if-ne v1, v6, :cond_0

    .line 128
    const/4 v0, 0x3

    goto :goto_0
.end method
