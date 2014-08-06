.class Lcom/android/camera/PhotoModule$7;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->addIdleHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 694
    invoke-static {}, Lcom/android/camera/Storage;->ensureOSXCompatible()V

    .line 695
    const/4 v0, 0x0

    return v0
.end method
