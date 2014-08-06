.class Lcom/android/gallery3d/filtershow/state/StatePanelTrack$1;
.super Landroid/database/DataSetObserver;
.source "StatePanelTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/state/StatePanelTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/state/StatePanelTrack;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/state/StatePanelTrack;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack$1;->this$0:Lcom/android/gallery3d/filtershow/state/StatePanelTrack;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack$1;->this$0:Lcom/android/gallery3d/filtershow/state/StatePanelTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->fillContent(Z)V

    .line 66
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack$1;->this$0:Lcom/android/gallery3d/filtershow/state/StatePanelTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->fillContent(Z)V

    .line 72
    return-void
.end method
