#include <Rcpp.h>
#include "plist/plist.h"

using namespace Rcpp;

// [[Rcpp::export]]
CharacterVector int_get_plist(RawVector r) {

  char *plist_out = NULL;
  char *plist_entire = NULL;

  uint32_t read_size = r.size();
  uint32_t size = 0;

  plist_t root_node = NULL;

  plist_from_memory((char *)&r[0], read_size, &root_node);
  plist_to_xml(root_node, &plist_out, &size);

  CharacterVector out(plist_out);

  plist_free(root_node);

  free(plist_entire);
  free(plist_out);

  return(out);

}
