.class Lcom/android/camera/ui/CountdownTimerPopup$2;
.super Ljava/lang/Object;
.source "CountdownTimerPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CountdownTimerPopup;->initialize(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CountdownTimerPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CountdownTimerPopup;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/ui/CountdownTimerPopup$2;->this$0:Lcom/android/camera/ui/CountdownTimerPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/CountdownTimerPopup$2;->this$0:Lcom/android/camera/ui/CountdownTimerPopup;

    # invokes: Lcom/android/camera/ui/CountdownTimerPopup;->updateInputState()V
    invoke-static {v0}, Lcom/android/camera/ui/CountdownTimerPopup;->access$000(Lcom/android/camera/ui/CountdownTimerPopup;)V

    .line 95
    return-void
.end method
