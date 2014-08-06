.class Lcom/android/camera/ui/PieRenderer$Disappear;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disappear"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/PieRenderer;)V
    .locals 0

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p2, "x1"    # Lcom/android/camera/ui/PieRenderer$1;

    .prologue
    .line 1030
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer$Disappear;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1033
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    # getter for: Lcom/android/camera/ui/PieRenderer;->mState:I
    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$1600(Lcom/android/camera/ui/PieRenderer;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/PieRenderer;->setVisible(Z)V

    .line 1035
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    # getter for: Lcom/android/camera/ui/PieRenderer;->mCenterX:I
    invoke-static {v1}, Lcom/android/camera/ui/PieRenderer;->access$1800(Lcom/android/camera/ui/PieRenderer;)I

    move-result v1

    # setter for: Lcom/android/camera/ui/PieRenderer;->mFocusX:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/PieRenderer;->access$1702(Lcom/android/camera/ui/PieRenderer;I)I

    .line 1036
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    # getter for: Lcom/android/camera/ui/PieRenderer;->mCenterY:I
    invoke-static {v1}, Lcom/android/camera/ui/PieRenderer;->access$2000(Lcom/android/camera/ui/PieRenderer;)I

    move-result v1

    # setter for: Lcom/android/camera/ui/PieRenderer;->mFocusY:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/PieRenderer;->access$1902(Lcom/android/camera/ui/PieRenderer;I)I

    .line 1037
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    # setter for: Lcom/android/camera/ui/PieRenderer;->mState:I
    invoke-static {v0, v3}, Lcom/android/camera/ui/PieRenderer;->access$1602(Lcom/android/camera/ui/PieRenderer;I)I

    .line 1038
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    # getter for: Lcom/android/camera/ui/PieRenderer;->mFocusX:I
    invoke-static {v1}, Lcom/android/camera/ui/PieRenderer;->access$1700(Lcom/android/camera/ui/PieRenderer;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    # getter for: Lcom/android/camera/ui/PieRenderer;->mFocusY:I
    invoke-static {v2}, Lcom/android/camera/ui/PieRenderer;->access$1900(Lcom/android/camera/ui/PieRenderer;)I

    move-result v2

    # invokes: Lcom/android/camera/ui/PieRenderer;->setCircle(II)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/PieRenderer;->access$2100(Lcom/android/camera/ui/PieRenderer;II)V

    .line 1039
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$Disappear;->this$0:Lcom/android/camera/ui/PieRenderer;

    # setter for: Lcom/android/camera/ui/PieRenderer;->mFocused:Z
    invoke-static {v0, v3}, Lcom/android/camera/ui/PieRenderer;->access$2202(Lcom/android/camera/ui/PieRenderer;Z)Z

    goto :goto_0
.end method
