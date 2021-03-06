% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/double_ml_irm.R
\name{DoubleMLIRM}
\alias{DoubleMLIRM}
\title{Double machine learning for interactive regression models}
\format{
\link[R6:R6Class]{R6::R6Class} object inheriting from \link{DoubleML}.
}
\description{
Double machine learning for interactive regression models.
}
\details{
Interactive regression (IRM) models take the form

\eqn{Y = g_0(D,X) + U},

\eqn{D = m_0(X) + V},

with \eqn{E[U|X,D]=0} and \eqn{E[V|X] = 0}. \eqn{Y} is the outcome variable and \eqn{D \in \{0,1\}} is the binary treatment variable. We consider estimation of the average treamtent effects when treatment effects are fully heterogeneous. Target parameters of interest in this model are the average treatment effect (ATE),

\eqn{\theta_0 = E[g_0(1,X) - g_0(0,X)]}

and the average treament effect on the treated (ATTE),

\eqn{\theta_0 = E[g_0(1,X) - g_0(0,X)|D=1]}.
}
\examples{
\donttest{
library(DoubleML)
library(mlr3)
library(mlr3learners)
library(data.table)
set.seed(2)
ml_g = lrn("regr.ranger", num.trees = 100, mtry = 20, min.node.size = 2, max.depth = 5)
ml_m = lrn("classif.ranger", num.trees = 100, mtry = 20, min.node.size = 2, max.depth = 5)
obj_dml_data = make_irm_data(theta = 0.5)
dml_irm_obj = DoubleMLIRM$new(obj_dml_data, ml_g, ml_m)
dml_irm_obj$fit()
dml_irm_obj$summary()
}
}
\seealso{
Other DoubleML: 
\code{\link{DoubleMLIIVM}},
\code{\link{DoubleMLPLIV}},
\code{\link{DoubleMLPLR}},
\code{\link{DoubleML}}
}
\concept{DoubleML}
\section{Super class}{
\code{\link[DoubleML:DoubleML]{DoubleML::DoubleML}} -> \code{DoubleMLIRM}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{trimming_rule}}{(\code{character(1)}) \cr
A \code{character(1)} specifying the trimming approach.}

\item{\code{trimming_threshold}}{(\code{numeric(1)}) \cr
The threshold used for timming.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{DoubleMLIRM$new()}}
\item \href{#method-clone}{\code{DoubleMLIRM$clone()}}
}
}
\if{html}{
\out{<details ><summary>Inherited methods</summary>}
\itemize{
\item \out{<span class="pkg-link" data-pkg="DoubleML" data-topic="DoubleML" data-id="bootstrap">}\href{../../DoubleML/html/DoubleML.html#method-bootstrap}{\code{DoubleML::DoubleML$bootstrap()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="DoubleML" data-topic="DoubleML" data-id="confint">}\href{../../DoubleML/html/DoubleML.html#method-confint}{\code{DoubleML::DoubleML$confint()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="DoubleML" data-topic="DoubleML" data-id="fit">}\href{../../DoubleML/html/DoubleML.html#method-fit}{\code{DoubleML::DoubleML$fit()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="DoubleML" data-topic="DoubleML" data-id="get_params">}\href{../../DoubleML/html/DoubleML.html#method-get_params}{\code{DoubleML::DoubleML$get_params()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="DoubleML" data-topic="DoubleML" data-id="learner_names">}\href{../../DoubleML/html/DoubleML.html#method-learner_names}{\code{DoubleML::DoubleML$learner_names()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="DoubleML" data-topic="DoubleML" data-id="p_adjust">}\href{../../DoubleML/html/DoubleML.html#method-p_adjust}{\code{DoubleML::DoubleML$p_adjust()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="DoubleML" data-topic="DoubleML" data-id="params_names">}\href{../../DoubleML/html/DoubleML.html#method-params_names}{\code{DoubleML::DoubleML$params_names()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="DoubleML" data-topic="DoubleML" data-id="print">}\href{../../DoubleML/html/DoubleML.html#method-print}{\code{DoubleML::DoubleML$print()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="DoubleML" data-topic="DoubleML" data-id="set_ml_nuisance_params">}\href{../../DoubleML/html/DoubleML.html#method-set_ml_nuisance_params}{\code{DoubleML::DoubleML$set_ml_nuisance_params()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="DoubleML" data-topic="DoubleML" data-id="set_sample_splitting">}\href{../../DoubleML/html/DoubleML.html#method-set_sample_splitting}{\code{DoubleML::DoubleML$set_sample_splitting()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="DoubleML" data-topic="DoubleML" data-id="split_samples">}\href{../../DoubleML/html/DoubleML.html#method-split_samples}{\code{DoubleML::DoubleML$split_samples()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="DoubleML" data-topic="DoubleML" data-id="summary">}\href{../../DoubleML/html/DoubleML.html#method-summary}{\code{DoubleML::DoubleML$summary()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="DoubleML" data-topic="DoubleML" data-id="tune">}\href{../../DoubleML/html/DoubleML.html#method-tune}{\code{DoubleML::DoubleML$tune()}}\out{</span>}
}
\out{</details>}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
Creates a new instance of this R6 class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DoubleMLIRM$new(
  data,
  ml_g,
  ml_m,
  n_folds = 5,
  n_rep = 1,
  score = "ATE",
  trimming_rule = "truncate",
  trimming_threshold = 1e-12,
  dml_procedure = "dml2",
  draw_sample_splitting = TRUE,
  apply_cross_fitting = TRUE
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{data}}{(\code{DoubleMLData}) \cr
The \code{DoubleMLData} object providing the data and specifying the variables of the causal model.}

\item{\code{ml_g}}{(\code{\link[mlr3:LearnerRegr]{LearnerRegr}}, \code{character(1)}) \cr
An object of the class \link[mlr3:LearnerRegr]{mlr3 regression learner} to pass a learner, possibly with specified parameters, for example \code{lrn(regr.cv_glmnet, s = "lambda.min")}.
Alternatively, a \code{character(1)} specifying the name of a \link[mlr3:LearnerRegr]{mlr3 regression learner} that is available in \href{https://mlr3.mlr-org.com/index.html}{mlr3} or its extension packages \href{https://mlr3learners.mlr-org.com/}{mlr3learners} or \href{https://mlr3extralearners.mlr-org.com/}{mlr3extralearners}, for example \code{"regr.cv_glmnet"}.  \cr
\code{ml_g} refers to the nuisance function \eqn{g_0(X) = E[Y|X,D]}.}

\item{\code{ml_m}}{(\code{\link[mlr3:LearnerClassif]{LearnerClassif}}, \code{character(1)}) \cr
An object of the class \link[mlr3:LearnerClassif]{mlr3 classification learner} to pass a learner, possibly with specified parameters, for example \code{lrn(classif.cv_glmnet, s = "lambda.min")}.
Alternatively, a \code{character(1)} specifying the name of a \link[mlr3:LearnerClassif]{mlr3 classification learner} that is available in \href{https://mlr3.mlr-org.com/index.html}{mlr3} or its extension packages \href{https://mlr3learners.mlr-org.com/}{mlr3learners} or \href{https://mlr3extralearners.mlr-org.com/}{mlr3extralearners}, for example \code{"regr.cv_glmnet"}. \cr
\code{ml_m} refers to the nuisance function \eqn{m_0(X) = E[D|X]}.}

\item{\code{n_folds}}{(\code{integer(1)})\cr
Number of folds. Default is \code{5}.}

\item{\code{n_rep}}{(\code{integer(1)}) \cr
Number of repetitions for the sample splitting. Default is \code{1}.}

\item{\code{score}}{(\code{character(1)}, \verb{function()}) \cr
A \code{character(1)} (\code{"ATE"} or \code{ATTE}) or a \verb{function()} specifying the score function. If a \verb{function()}
is provided, it must be of the form \verb{function(y, d, g0_hat, g1_hat, m_hat, smpls)} and the returned output
must be a named \code{list()} with elements \code{psi_a} and \code{psi_b}. Default is \code{"ATE"}.}

\item{\code{trimming_rule}}{(\code{character(1)}) \cr
A \code{character(1)} (\code{"truncate"} is the only choice) specifying the trimming approach. Default is \code{"truncate"}.}

\item{\code{trimming_threshold}}{(\code{numeric(1)}) \cr
The threshold used for timming. Default is \code{1e-12}.}

\item{\code{dml_procedure}}{(\code{character(1)}) \cr
A \code{character(1)} (\code{"dml1"} or \code{"dml2"}) specifying the double machine learning algorithm. Default is \code{"dml2"}.}

\item{\code{draw_sample_splitting}}{(\code{logical(1)}) \cr
Indicates whether the sample splitting should be drawn during initialization of the object. Default is \code{TRUE}.}

\item{\code{apply_cross_fitting}}{(\code{logical(1)}) \cr
Indicates whether cross-fitting should be applied. Default is \code{TRUE}.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DoubleMLIRM$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
