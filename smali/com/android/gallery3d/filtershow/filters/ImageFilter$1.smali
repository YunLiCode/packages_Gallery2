.class Lcom/android/gallery3d/filtershow/filters/ImageFilter$1;
.super Ljava/lang/Object;
.source "ImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/filters/ImageFilter;->displayLowMemoryToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/filters/ImageFilter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter$1;->this$0:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 54
    # getter for: Lcom/android/gallery3d/filtershow/filters/ImageFilter;->sActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->access$000()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Memory too low for filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter$1;->this$0:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", please file a bug report"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 56
    return-void
.end method
