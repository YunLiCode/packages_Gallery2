.class Lcom/android/gallery3d/app/StateManager$StateEntry;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateEntry"
.end annotation


# instance fields
.field public activityState:Lcom/android/gallery3d/app/ActivityState;

.field public data:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/android/gallery3d/app/ActivityState;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "state"    # Lcom/android/gallery3d/app/ActivityState;

    .prologue
    .line 338
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/android/gallery3d/app/StateManager$StateEntry;->data:Landroid/os/Bundle;

    .line 340
    iput-object p2, p0, Lcom/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/android/gallery3d/app/ActivityState;

    .line 341
    return-void
.end method
