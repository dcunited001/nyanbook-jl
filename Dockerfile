## -*- docker-image-name: "nb-julia" -*-

FROM jupyter/datascience-notebook:latest

EXPOSE 8888:8888

# RUN (in julia)
RUN julia -e 'using Pkg; Pkg.add("Catlab")' &&\
    julia -e 'using Pkg; Pkg.add("AlgebraicRelations")' &&\
    julia -e 'using Pkg; Pkg.add("AlgebraicPetri")' &&\
    julia -e 'using Pkg; Pkg.add("Convex")' &&\
    julia -e 'using Pkg; Pkg.add("SCS")'

# (in jupyter/base-notebook)
# CMD ["start-notebook.sh"]
