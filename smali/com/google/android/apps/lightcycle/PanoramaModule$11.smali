.class Lcom/google/android/apps/lightcycle/PanoramaModule$11;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;->pauseCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

.field final synthetic val$renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$11;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$11;->val$renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$11;->val$renderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->freeGLMemory()V

    .line 794
    return-void
.end method
