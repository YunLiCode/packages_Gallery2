.class Lcom/android/dreams/phototable/FlipperDreamSettings$1$1;
.super Landroid/database/DataSetObserver;
.source "FlipperDreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/phototable/FlipperDreamSettings$1;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dreams/phototable/FlipperDreamSettings$1;


# direct methods
.method constructor <init>(Lcom/android/dreams/phototable/FlipperDreamSettings$1;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/dreams/phototable/FlipperDreamSettings$1$1;->this$1:Lcom/android/dreams/phototable/FlipperDreamSettings$1;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings$1$1;->this$1:Lcom/android/dreams/phototable/FlipperDreamSettings$1;

    iget-object v0, v0, Lcom/android/dreams/phototable/FlipperDreamSettings$1;->this$0:Lcom/android/dreams/phototable/FlipperDreamSettings;

    # invokes: Lcom/android/dreams/phototable/FlipperDreamSettings;->updateActionItem()V
    invoke-static {v0}, Lcom/android/dreams/phototable/FlipperDreamSettings;->access$200(Lcom/android/dreams/phototable/FlipperDreamSettings;)V

    .line 83
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings$1$1;->this$1:Lcom/android/dreams/phototable/FlipperDreamSettings$1;

    iget-object v0, v0, Lcom/android/dreams/phototable/FlipperDreamSettings$1;->this$0:Lcom/android/dreams/phototable/FlipperDreamSettings;

    # invokes: Lcom/android/dreams/phototable/FlipperDreamSettings;->updateActionItem()V
    invoke-static {v0}, Lcom/android/dreams/phototable/FlipperDreamSettings;->access$200(Lcom/android/dreams/phototable/FlipperDreamSettings;)V

    .line 87
    return-void
.end method
