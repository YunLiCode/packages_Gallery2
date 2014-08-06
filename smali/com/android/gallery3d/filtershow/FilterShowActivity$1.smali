.class Lcom/android/gallery3d/filtershow/FilterShowActivity$1;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;->loadEditorPanel(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;Lcom/android/gallery3d/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field final synthetic val$currentId:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;I)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$1;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iput p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$1;->val$currentId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 178
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/editors/EditorPanel;-><init>()V

    .line 179
    .local v0, "panel":Lcom/android/gallery3d/filtershow/editors/EditorPanel;
    iget v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$1;->val$currentId:I

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->setEditor(I)V

    .line 180
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$1;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 181
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$1;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "MainPanel"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 182
    const v2, 0x7f0a00bf

    const-string v3, "MainPanel"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 183
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 184
    return-void
.end method
