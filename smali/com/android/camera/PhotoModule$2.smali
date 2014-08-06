.class Lcom/android/camera/PhotoModule$2;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
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
    .line 177
    iput-object p1, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    # invokes: Lcom/android/camera/PhotoModule;->animateFlash()V
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$000(Lcom/android/camera/PhotoModule;)V

    .line 181
    return-void
.end method
