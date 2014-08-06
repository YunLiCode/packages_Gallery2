.class Lcom/android/photos/shims/MediaItemsLoader$2;
.super Ljava/lang/Object;
.source "MediaItemsLoader.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/shims/MediaItemsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/shims/MediaItemsLoader;


# direct methods
.method constructor <init>(Lcom/android/photos/shims/MediaItemsLoader;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/photos/shims/MediaItemsLoader$2;->this$0:Lcom/android/photos/shims/MediaItemsLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/photos/shims/MediaItemsLoader$2;->this$0:Lcom/android/photos/shims/MediaItemsLoader;

    invoke-virtual {v0}, Lcom/android/photos/shims/MediaItemsLoader;->onContentChanged()V

    .line 60
    return-void
.end method
