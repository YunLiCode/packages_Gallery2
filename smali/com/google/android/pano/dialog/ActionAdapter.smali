.class public Lcom/google/android/pano/dialog/ActionAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActionAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/google/android/pano/widget/ScrollAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;,
        Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;,
        Lcom/google/android/pano/dialog/ActionAdapter$Listener;
    }
.end annotation


# instance fields
.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFocusedChevronBackgroundColor:I

.field private final mFocusedDescriptionColor:I

.field private final mFocusedTitleColor:I

.field private mKeyPressed:Z

.field private mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

.field private mOnFocusListener:Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;

.field private mOnKeyListener:Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

.field private mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

.field private final mUnfocusedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/pano/R$color;->list_item_unselected_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mUnfocusedColor:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/pano/R$color;->list_item_selected_title_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mFocusedTitleColor:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/pano/R$color;->list_item_selected_description_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mFocusedDescriptionColor:I

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/pano/R$color;->list_item_selected_chevron_background_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mFocusedChevronBackgroundColor:I

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mKeyPressed:Z

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/pano/dialog/ActionAdapter;)Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/dialog/ActionAdapter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mOnKeyListener:Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/pano/dialog/ActionAdapter;)Lcom/google/android/pano/dialog/ActionAdapter$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/dialog/ActionAdapter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    return-object v0
.end method

.method private fadeCheckmarks(Landroid/view/View;Lcom/google/android/pano/dialog/Action;IILandroid/view/animation/Interpolator;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "action"    # Lcom/google/android/pano/dialog/Action;
    .param p3, "duration"    # I
    .param p4, "delay"    # I
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 339
    invoke-virtual {p2}, Lcom/google/android/pano/dialog/Action;->getCheckSetId()I

    move-result v1

    .line 340
    .local v1, "actionCheckSetId":I
    if-eqz v1, :cond_4

    .line 341
    iget-object v6, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    if-eqz v6, :cond_4

    .line 344
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v6, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 345
    iget-object v6, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/Action;

    .line 346
    .local v0, "a":Lcom/google/android/pano/dialog/Action;
    if-eq v0, p2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->getCheckSetId()I

    move-result v6

    if-ne v6, v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 347
    iget-object v6, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v6, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getItemView(I)Landroid/view/View;

    move-result-object v5

    .line 348
    .local v5, "viewToAnimateOut":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 349
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/android/pano/dialog/Action;->setChecked(Z)V

    .line 350
    sget v6, Lcom/google/android/pano/R$id;->action_checkmark:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 352
    .local v2, "checkView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v7, p3

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v7, p4

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 354
    if-eqz p5, :cond_0

    .line 355
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 357
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/google/android/pano/dialog/ActionAdapter$2;

    invoke-direct {v7, p0, v2}, Lcom/google/android/pano/dialog/ActionAdapter$2;-><init>(Lcom/google/android/pano/dialog/ActionAdapter;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 344
    .end local v2    # "checkView":Landroid/view/View;
    .end local v5    # "viewToAnimateOut":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    .end local v0    # "a":Lcom/google/android/pano/dialog/Action;
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/pano/dialog/Action;->isChecked()Z

    move-result v6

    if-nez v6, :cond_4

    .line 369
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/google/android/pano/dialog/Action;->setChecked(Z)V

    .line 370
    sget v6, Lcom/google/android/pano/R$id;->action_checkmark:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 371
    .restart local v2    # "checkView":Landroid/view/View;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 372
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 373
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v7, p3

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v7, p4

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 375
    if-eqz p5, :cond_3

    .line 376
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 378
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 382
    .end local v2    # "checkView":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_4
    return-void
.end method

.method private prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "initAlpha"    # F
    .param p3, "destAlpha"    # F
    .param p4, "duration"    # I
    .param p5, "delay"    # I
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p7, "pressed"    # Z

    .prologue
    .line 297
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 298
    sget v0, Lcom/google/android/pano/R$id;->action_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/dialog/Action;

    .line 300
    .local v2, "action":Lcom/google/android/pano/dialog/Action;
    if-nez p7, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 301
    invoke-direct/range {v0 .. v5}, Lcom/google/android/pano/dialog/ActionAdapter;->fadeCheckmarks(Landroid/view/View;Lcom/google/android/pano/dialog/Action;IILandroid/view/animation/Interpolator;)V

    .line 304
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 305
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->buildLayer()V

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, p4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, p5

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 308
    if-eqz p6, :cond_1

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 311
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/pano/dialog/ActionAdapter$1;

    invoke-direct {v1, p0, p1, p7, v2}, Lcom/google/android/pano/dialog/ActionAdapter$1;-><init>(Lcom/google/android/pano/dialog/ActionAdapter;Landroid/view/View;ZLcom/google/android/pano/dialog/Action;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 335
    .end local v2    # "action":Lcom/google/android/pano/dialog/Action;
    :cond_2
    return-void
.end method


# virtual methods
.method public addAction(Lcom/google/android/pano/dialog/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/ActionAdapter;->notifyDataSetChanged()V

    .line 205
    return-void
.end method

.method public getActions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExpandAdapter()Lcom/google/android/pano/widget/ScrollAdapterBase;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 130
    int-to-long v0, p1

    return-wide v0
.end method

.method public getScrapView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 113
    iget-object v2, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 114
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/google/android/pano/R$layout;->settings_list_item:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "view":Landroid/view/View;
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 140
    if-nez p2, :cond_0

    .line 141
    invoke-virtual {p0, p3}, Lcom/google/android/pano/dialog/ActionAdapter;->getScrapView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 143
    :cond_0
    iget-object v9, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/Action;

    .line 144
    .local v0, "action":Lcom/google/android/pano/dialog/Action;
    sget v9, Lcom/google/android/pano/R$id;->action_title:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 145
    .local v8, "title":Landroid/widget/TextView;
    sget v9, Lcom/google/android/pano/R$id;->action_description:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 146
    .local v4, "description":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x8

    :goto_0
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    sget v9, Lcom/google/android/pano/R$id;->action_checkmark:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 152
    .local v1, "checkmarkView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v9, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Lcom/google/android/pano/dialog/Action;->getIndicator(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 155
    .local v5, "indicator":Landroid/graphics/drawable/Drawable;
    sget v9, Lcom/google/android/pano/R$id;->action_icon:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 156
    .local v6, "indicatorView":Landroid/widget/ImageView;
    if-eqz v5, :cond_3

    .line 157
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    :goto_2
    sget v9, Lcom/google/android/pano/R$id;->action_next_chevron:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 164
    .local v3, "chevronView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    sget v9, Lcom/google/android/pano/R$id;->action_next_chevron_background:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 167
    .local v2, "chevronBackgroundView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 170
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 171
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v9, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->hasMultilineDescription()Z

    move-result v9

    if-eqz v9, :cond_6

    sget v9, Lcom/google/android/pano/R$dimen;->action_multiline_description_height:I

    :goto_5
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 174
    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    sget v9, Lcom/google/android/pano/R$id;->action_title:I

    invoke-virtual {p2, v9, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 177
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 178
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 180
    const/4 v9, 0x0

    invoke-virtual {p0, p2, v9}, Lcom/google/android/pano/dialog/ActionAdapter;->onFocusChange(Landroid/view/View;Z)V

    .line 182
    return-object p2

    .line 147
    .end local v1    # "checkmarkView":Landroid/widget/ImageView;
    .end local v2    # "chevronBackgroundView":Landroid/view/View;
    .end local v3    # "chevronView":Landroid/widget/ImageView;
    .end local v5    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v6    # "indicatorView":Landroid/widget/ImageView;
    .end local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 152
    .restart local v1    # "checkmarkView":Landroid/widget/ImageView;
    :cond_2
    const/4 v9, 0x4

    goto :goto_1

    .line 160
    .restart local v5    # "indicator":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "indicatorView":Landroid/widget/ImageView;
    :cond_3
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 164
    .restart local v3    # "chevronView":Landroid/widget/ImageView;
    :cond_4
    const/16 v9, 0x8

    goto :goto_3

    .line 167
    .restart local v2    # "chevronBackgroundView":Landroid/view/View;
    :cond_5
    const/4 v9, 0x4

    goto :goto_4

    .line 171
    .restart local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    sget v9, Lcom/google/android/pano/R$dimen;->action_singleline_description_height:I

    goto :goto_5
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 222
    sget v7, Lcom/google/android/pano/R$id;->action_title:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 223
    .local v6, "title":Landroid/widget/TextView;
    if-eqz p2, :cond_1

    iget v7, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mFocusedTitleColor:I

    :goto_0
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    sget v7, Lcom/google/android/pano/R$id;->action_description:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 225
    .local v3, "description":Landroid/widget/TextView;
    if-eqz p2, :cond_2

    iget v7, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mFocusedDescriptionColor:I

    :goto_1
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    if-eqz p2, :cond_3

    iget v7, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mFocusedTitleColor:I

    :goto_2
    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v5, v7, 0xff

    .line 227
    .local v5, "imageAlpha":I
    sget v7, Lcom/google/android/pano/R$id;->action_checkmark:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 228
    .local v0, "checkmark":Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 229
    sget v7, Lcom/google/android/pano/R$id;->action_icon:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 230
    .local v4, "icon":Landroid/widget/ImageView;
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 231
    sget v7, Lcom/google/android/pano/R$id;->action_next_chevron:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 232
    .local v1, "chevron":Landroid/widget/ImageView;
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 233
    sget v7, Lcom/google/android/pano/R$id;->action_next_chevron_background:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 234
    .local v2, "chevronBackground":Landroid/view/View;
    if-eqz p2, :cond_4

    iget v7, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mFocusedChevronBackgroundColor:I

    :goto_3
    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 235
    iget-object v7, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mOnFocusListener:Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;

    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    .line 236
    iget-object v8, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mOnFocusListener:Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;

    sget v7, Lcom/google/android/pano/R$id;->action_title:I

    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/pano/dialog/Action;

    invoke-interface {v8, v7}, Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;->onActionFocused(Lcom/google/android/pano/dialog/Action;)V

    .line 238
    :cond_0
    return-void

    .line 223
    .end local v0    # "checkmark":Landroid/widget/ImageView;
    .end local v1    # "chevron":Landroid/widget/ImageView;
    .end local v2    # "chevronBackground":Landroid/view/View;
    .end local v3    # "description":Landroid/widget/TextView;
    .end local v4    # "icon":Landroid/widget/ImageView;
    .end local v5    # "imageAlpha":I
    :cond_1
    iget v7, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mUnfocusedColor:I

    goto :goto_0

    .line 225
    .restart local v3    # "description":Landroid/widget/TextView;
    :cond_2
    iget v7, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mUnfocusedColor:I

    goto :goto_1

    .line 226
    :cond_3
    iget v7, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mUnfocusedColor:I

    goto :goto_2

    .line 234
    .restart local v0    # "checkmark":Landroid/widget/ImageView;
    .restart local v1    # "chevron":Landroid/widget/ImageView;
    .restart local v2    # "chevronBackground":Landroid/view/View;
    .restart local v4    # "icon":Landroid/widget/ImageView;
    .restart local v5    # "imageAlpha":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 292
    :goto_0
    return v0

    .line 252
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 292
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 260
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mKeyPressed:Z

    if-nez v0, :cond_1

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mKeyPressed:Z

    .line 267
    const/high16 v2, 0x3f800000

    const v3, 0x3e4ccccd

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mKeyPressed:Z

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/pano/dialog/ActionAdapter;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V

    goto :goto_1

    .line 273
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mKeyPressed:Z

    if-eqz v0, :cond_1

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mKeyPressed:Z

    .line 280
    const v2, 0x3e4ccccd

    const/high16 v3, 0x3f800000

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mKeyPressed:Z

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/pano/dialog/ActionAdapter;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V

    goto :goto_1

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_0
        0xa0 -> :sswitch_0
    .end sparse-switch

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setActions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 216
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/ActionAdapter;->notifyDataSetChanged()V

    .line 218
    return-void
.end method

.method public setListener(Lcom/google/android/pano/dialog/ActionAdapter$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    .line 192
    return-void
.end method

.method public setOnFocusListener(Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;)V
    .locals 0
    .param p1, "onFocusListener"    # Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mOnFocusListener:Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;

    .line 196
    return-void
.end method

.method public setOnKeyListener(Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;)V
    .locals 0
    .param p1, "onKeyListener"    # Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mOnKeyListener:Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    .line 200
    return-void
.end method

.method setScrollAdapterView(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0
    .param p1, "scrollAdapterView"    # Lcom/google/android/pano/widget/ScrollAdapterView;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    .line 242
    return-void
.end method

.method public viewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 109
    return-void
.end method
