.class public Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;
.super Landroid/widget/RelativeLayout;
.source "MtpFullscreenView.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;


# instance fields
.field private mBroker:Lcom/android/gallery3d/ingest/adapter/CheckBroker;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mImageView:Lcom/android/gallery3d/ingest/ui/MtpImageView;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mPosition:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mPosition:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mPosition:I

    .line 48
    return-void
.end method


# virtual methods
.method public getImageView()Lcom/android/gallery3d/ingest/ui/MtpImageView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mImageView:Lcom/android/gallery3d/ingest/ui/MtpImageView;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onBulkCheckedChanged()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/android/gallery3d/ingest/adapter/CheckBroker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/android/gallery3d/ingest/adapter/CheckBroker;

    iget v1, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ingest/adapter/CheckBroker;->isItemChecked(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->setChecked(Z)V

    .line 114
    :cond_0
    return-void
.end method

.method public onCheckedChanged(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "isChecked"    # Z

    .prologue
    .line 106
    iget v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mPosition:I

    if-ne p1, v0, :cond_0

    .line 107
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->setChecked(Z)V

    .line 109
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/android/gallery3d/ingest/adapter/CheckBroker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/android/gallery3d/ingest/adapter/CheckBroker;

    iget v1, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mPosition:I

    invoke-virtual {v0, v1, p2}, Lcom/android/gallery3d/ingest/adapter/CheckBroker;->setItemChecked(IZ)V

    .line 102
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 75
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->setPositionAndBroker(ILcom/android/gallery3d/ingest/adapter/CheckBroker;)V

    .line 76
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 77
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 53
    const v0, 0x7f0a0116

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ingest/ui/MtpImageView;

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mImageView:Lcom/android/gallery3d/ingest/ui/MtpImageView;

    .line 54
    const v0, 0x7f0a0117

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mCheckbox:Landroid/widget/CheckBox;

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 56
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    return-void
.end method

.method public setPositionAndBroker(ILcom/android/gallery3d/ingest/adapter/CheckBroker;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "b"    # Lcom/android/gallery3d/ingest/adapter/CheckBroker;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/android/gallery3d/ingest/adapter/CheckBroker;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/android/gallery3d/ingest/adapter/CheckBroker;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ingest/adapter/CheckBroker;->unregisterOnCheckedChangeListener(Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;)V

    .line 91
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mPosition:I

    .line 92
    iput-object p2, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/android/gallery3d/ingest/adapter/CheckBroker;

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/android/gallery3d/ingest/adapter/CheckBroker;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/android/gallery3d/ingest/adapter/CheckBroker;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ingest/adapter/CheckBroker;->isItemChecked(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/android/gallery3d/ingest/adapter/CheckBroker;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ingest/adapter/CheckBroker;->registerOnCheckedChangeListener(Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;)V

    .line 97
    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 71
    return-void
.end method
