.class Lcom/android/dreams/phototable/PhotoCarousel$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoCarousel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/phototable/PhotoCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoCarousel;


# direct methods
.method constructor <init>(Lcom/android/dreams/phototable/PhotoCarousel;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoCarousel$1;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "vX"    # F
    .param p4, "vY"    # F

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel$1;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/dreams/phototable/PhotoCarousel;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PhotoCarousel;->access$800(Lcom/android/dreams/phototable/PhotoCarousel;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel$1;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/PhotoCarousel;->flip(F)V

    .line 117
    const/4 v0, 0x1

    return v0
.end method
