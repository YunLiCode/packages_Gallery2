.class Lcom/android/camera/ui/TimeIntervalPopup$2;
.super Ljava/lang/Object;
.source "TimeIntervalPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/TimeIntervalPopup;->initialize(Lcom/android/camera/IconListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/TimeIntervalPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/TimeIntervalPopup;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/camera/ui/TimeIntervalPopup$2;->this$0:Lcom/android/camera/ui/TimeIntervalPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/TimeIntervalPopup$2;->this$0:Lcom/android/camera/ui/TimeIntervalPopup;

    # invokes: Lcom/android/camera/ui/TimeIntervalPopup;->updateInputState()V
    invoke-static {v0}, Lcom/android/camera/ui/TimeIntervalPopup;->access$000(Lcom/android/camera/ui/TimeIntervalPopup;)V

    .line 105
    return-void
.end method
