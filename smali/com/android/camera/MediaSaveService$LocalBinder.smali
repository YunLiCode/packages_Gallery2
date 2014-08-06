.class Lcom/android/camera/MediaSaveService$LocalBinder;
.super Landroid/os/Binder;
.source "MediaSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MediaSaveService;


# direct methods
.method constructor <init>(Lcom/android/camera/MediaSaveService;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/camera/MediaSaveService$LocalBinder;->this$0:Lcom/android/camera/MediaSaveService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/android/camera/MediaSaveService;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/MediaSaveService$LocalBinder;->this$0:Lcom/android/camera/MediaSaveService;

    return-object v0
.end method
