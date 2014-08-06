.class Lcom/google/android/picasastore/PicasaPhotoContentProvider0$1;
.super Landroid/database/ContentObserver;
.source "PicasaPhotoContentProvider0.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasastore/PicasaPhotoContentProvider0;


# direct methods
.method constructor <init>(Lcom/google/android/picasastore/PicasaPhotoContentProvider0;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0$1;->this$0:Lcom/google/android/picasastore/PicasaPhotoContentProvider0;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0$1;->this$0:Lcom/google/android/picasastore/PicasaPhotoContentProvider0;

    # invokes: Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->onFsIdChanged()V
    invoke-static {v0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->access$000(Lcom/google/android/picasastore/PicasaPhotoContentProvider0;)V

    .line 127
    return-void
.end method
