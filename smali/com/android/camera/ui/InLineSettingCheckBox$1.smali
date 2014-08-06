.class Lcom/android/camera/ui/InLineSettingCheckBox$1;
.super Ljava/lang/Object;
.source "InLineSettingCheckBox.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/InLineSettingCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/InLineSettingCheckBox;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/InLineSettingCheckBox;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingCheckBox$1;->this$0:Lcom/android/camera/ui/InLineSettingCheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 37
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingCheckBox$1;->this$0:Lcom/android/camera/ui/InLineSettingCheckBox;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/InLineSettingCheckBox;->changeIndex(I)Z

    .line 38
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
