.class Lcom/google/android/picasasync/UploadsManager$1;
.super Landroid/database/ContentObserver;
.source "UploadsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/UploadsManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasasync/UploadsManager;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/UploadsManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/android/picasasync/UploadsManager$1;->this$0:Lcom/google/android/picasasync/UploadsManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$1;->this$0:Lcom/google/android/picasasync/UploadsManager;

    # invokes: Lcom/google/android/picasasync/UploadsManager;->onFsIdChangedInternal()V
    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->access$000(Lcom/google/android/picasasync/UploadsManager;)V

    .line 198
    return-void
.end method
