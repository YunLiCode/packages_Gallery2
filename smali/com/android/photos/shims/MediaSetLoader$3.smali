.class Lcom/android/photos/shims/MediaSetLoader$3;
.super Ljava/lang/Object;
.source "MediaSetLoader.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/photos/shims/MediaSetLoader;->urisForSubItems(Landroid/database/Cursor;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/shims/MediaSetLoader;

.field final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/photos/shims/MediaSetLoader;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/photos/shims/MediaSetLoader$3;->this$0:Lcom/android/photos/shims/MediaSetLoader;

    iput-object p2, p0, Lcom/android/photos/shims/MediaSetLoader$3;->val$result:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/android/gallery3d/data/MediaItem;

    .prologue
    .line 166
    if-eqz p2, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/photos/shims/MediaSetLoader$3;->val$result:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    return-void
.end method
