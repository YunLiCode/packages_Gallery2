.class Lcom/google/android/apps/lightcycle/panorama/TargetManager$HitTarget;
.super Ljava/lang/Object;
.source "TargetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/TargetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HitTarget"
.end annotation


# instance fields
.field public final mIndex:I

.field public final mTransform:[F

.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/TargetManager;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/panorama/TargetManager;I[F)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "transform"    # [F

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager$HitTarget;->this$0:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p2, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager$HitTarget;->mIndex:I

    .line 50
    iput-object p3, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager$HitTarget;->mTransform:[F

    .line 51
    return-void
.end method
