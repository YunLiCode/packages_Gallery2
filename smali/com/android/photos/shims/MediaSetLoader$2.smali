.class Lcom/android/photos/shims/MediaSetLoader$2;
.super Ljava/lang/Object;
.source "MediaSetLoader.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/shims/MediaSetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/shims/MediaSetLoader;


# direct methods
.method constructor <init>(Lcom/android/photos/shims/MediaSetLoader;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/photos/shims/MediaSetLoader$2;->this$0:Lcom/android/photos/shims/MediaSetLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/photos/shims/MediaSetLoader$2;->this$0:Lcom/android/photos/shims/MediaSetLoader;

    invoke-virtual {v0}, Lcom/android/photos/shims/MediaSetLoader;->onContentChanged()V

    .line 57
    return-void
.end method
