.class Lcom/google/android/picasastore/PicasaStore$1;
.super Landroid/content/BroadcastReceiver;
.source "PicasaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasastore/PicasaStore;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasastore/PicasaStore;


# direct methods
.method constructor <init>(Lcom/google/android/picasastore/PicasaStore;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaStore$1;->this$0:Lcom/google/android/picasastore/PicasaStore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore$1;->this$0:Lcom/google/android/picasastore/PicasaStore;

    # invokes: Lcom/google/android/picasastore/PicasaStore;->onMediaMountOrUnmount()V
    invoke-static {v0}, Lcom/google/android/picasastore/PicasaStore;->access$000(Lcom/google/android/picasastore/PicasaStore;)V

    .line 139
    return-void
.end method
