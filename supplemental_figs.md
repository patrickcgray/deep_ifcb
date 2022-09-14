# Suppemental figures from Nardelli et al

These five figures are the supplemental materials for Nardelli et al 2022 <b>A convolutional neural network to classify phytoplankton images along the West Antarctic Peninsula</b>
 
![Fig S1](https://user-images.githubusercontent.com/2497349/190219008-3839d3a4-4a74-46a0-baeb-25ae732fe47a.png)
Figure S1. This confusion shows the full unmerged set of classes the CNN was trained on. These matrices show the same model as reported in the paper but with a different random initiation of the model and different random shuffling of the training data so some minor variation is expected. The data here is from a test dataset that the model was not trained or validated on but still was balanced (~500 samples per class) and screened manually for samples with multiple cells, out of focus samples, or indistinguishable contents. The major diagonal represents correctly predicted samples and anything off the diagonal is misclassified. The color stretch shows the percent of each class in that category – note that white is 0% and the darkest green is 90%.

![Fig S2](https://user-images.githubusercontent.com/2497349/190219035-6ca433c3-411c-4ffe-b062-99e92417c559.png)
Figure S2. This confusion matrix shows the same data as S1 but it has been merged into a coarser set of classes. Notice that the percent correct goes up substantially, though the color stretch has been changed (dark green is 20%) to emphasize misclassifications.

![Fig S3](https://user-images.githubusercontent.com/2497349/190219051-0715ce37-e75d-44b5-a4d1-27d564812df5.png)
Figure S3. This confusion matrix shows the same data again but this time in the most merged (coarsest) set of classes. As in S2 the color stretch here goes from 0% to 20% to emphasize misclassifications. 

![Fig S4](https://user-images.githubusercontent.com/2497349/190219092-c535add8-9740-4a14-8dd4-2984e9958927.png)
Figure S4. This confusion matrix shows the same CNN model used in Figures S1-S3, but this time the data being displayed is from a random test dataset with a real-world distribution. The count of each class is displayed before the name which makes clear that many classes are extremely rare or even nonexistent and a few classes dominate the dataset. Note that the color stretch has been changed again (dark green is 25%) to best emphasize misclassifications.

![Fig S5](https://user-images.githubusercontent.com/2497349/190219123-7d1cf5b5-d20d-416d-9705-b92d3ef6a10a.png)
Figure S5. Sample count for the 40 training classes.  
