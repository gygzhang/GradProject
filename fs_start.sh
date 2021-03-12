#docker run --dns 119.29.29.29  -i -t -v /home/gzhang/Downloads/:/home/tut_data/  -w /app/ fs_test:v4
docker run --dns 119.29.29.29 --rm -ti -v /home/gzhang/Downloads/:/home/tut_data/  -w /app/ fs_test:v4 
FREESURFER_HOME=/app/freesurfer

FREE_V="freeview -v \
good_output/mri/T1.mgz \
good_output/mri/wm.mgz \
good_output/mri/brainmask.mgz \
good_output/mri/aseg.mgz:colormap=lut:opacity=0.2 \
-f good_output/surf/lh.white:edgecolor=blue \
good_output/surf/lh.pial:edgecolor=red \
good_output/surf/rh.white:edgecolor=blue \
good_output/surf/rh.pial:edgecolor=red"

#docker run --dns 119.29.29.29 --rm -ti -v /home/gzhang/Downloads/:/home/tut_data/  -w /app/ fs_test:v4 /bin/bash -c "source $FREESURFER_HOME/SetUpFreeSurfer.sh&&  export TUTORIAL_DATA=/home/tut_data/tutorial_data_20190918_1558/&&cd $TUTORIAL_DATA&&export SUBJECTS_DIR=$TUTORIAL_DATA/buckner_data/tutorial_subjs&&cd $SUBJECTS_DIR&& $FREE_V"
