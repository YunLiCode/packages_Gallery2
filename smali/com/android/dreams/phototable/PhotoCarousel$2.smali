.class Lcom/android/dreams/phototable/PhotoCarousel$2;
.super Ljava/lang/Object;
.source "PhotoCarousel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/phototable/PhotoCarousel;->flip(F)V
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
    .line 258
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoCarousel$2;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel$2;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    # invokes: Lcom/android/dreams/phototable/PhotoCarousel;->maybeLoadMore()V
    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoCarousel;->access$000(Lcom/android/dreams/phototable/PhotoCarousel;)V

    .line 262
    return-void
.end method
