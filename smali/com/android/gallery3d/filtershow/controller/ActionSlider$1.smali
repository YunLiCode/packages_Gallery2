.class Lcom/android/gallery3d/filtershow/controller/ActionSlider$1;
.super Ljava/lang/Object;
.source "ActionSlider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/controller/ActionSlider;->setUp(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/Parameter;Lcom/android/gallery3d/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/controller/ActionSlider;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/controller/ActionSlider;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/ActionSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/ActionSlider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/ActionSlider$1;->this$0:Lcom/android/gallery3d/filtershow/controller/ActionSlider;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/controller/TitledSlider;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterInteger;

    check-cast v0, Lcom/android/gallery3d/filtershow/controller/ParameterActionAndInt;

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/controller/ParameterActionAndInt;->fireLeftAction()V

    .line 45
    return-void
.end method
