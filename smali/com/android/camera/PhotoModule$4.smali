.class Lcom/android/camera/PhotoModule$4;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->locationFirstRun()V
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
    .line 497
    iput-object p1, p0, Lcom/android/camera/PhotoModule$4;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/camera/PhotoModule$4;->this$0:Lcom/android/camera/PhotoModule;

    const-string v1, "off"

    # invokes: Lcom/android/camera/PhotoModule;->setLocationPreference(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;Ljava/lang/String;)V

    .line 501
    return-void
.end method
