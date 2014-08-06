.class Lcom/android/camera/PhotoUI$3;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoUI;->initializeControlByIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoUI;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/camera/PhotoUI$3;->this$0:Lcom/android/camera/PhotoUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/camera/PhotoUI$3;->this$0:Lcom/android/camera/PhotoUI;

    # invokes: Lcom/android/camera/PhotoUI;->openMenu()V
    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$400(Lcom/android/camera/PhotoUI;)V

    .line 218
    return-void
.end method
